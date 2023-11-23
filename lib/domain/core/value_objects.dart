import 'package:dartz/dartz.dart';
import 'package:scipro/domain/core/failures.dart';
import 'package:uuid/uuid.dart';

import 'errors.dart';

abstract class ValueObject<T> {
  const ValueObject();
  Either<ValueFailure<T>, T> get value;
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ValueObject<T> && other.value == value;
  }

// id = identity - same as writing (right) => right
  T getOrCrash() =>
      value.fold((failure) => throw UnExpectedValueError(failure), id);
  bool isValid() => value.isRight();

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';
}

class UniqueId extends ValueObject<String> {
  @override
  Either<ValueFailure<String>, String> value;

  factory UniqueId() {
    return UniqueId._(right(const Uuid().v1()));
  }

  factory UniqueId.fromUniqueString(String uniqueId) {
    return UniqueId._(right(uniqueId));
  }

  UniqueId._(this.value);
}
