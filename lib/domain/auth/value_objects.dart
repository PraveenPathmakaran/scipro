import 'package:dartz/dartz.dart';
import 'package:scipro/domain/core/failures.dart';
import 'package:scipro/domain/core/value_objects.dart';
import 'package:scipro/domain/core/value_validators.dart';

class EmailAddress extends ValueObject<String> {
  @override
  Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    return EmailAddress._(validateEmailAddress(input));
  }

  EmailAddress._(this.value);
}

class UserName extends ValueObject<String> {
  @override
  Either<ValueFailure<String>, String> value;

  factory UserName(String input) {
    return UserName._(validateStringNotEmpty(input));
  }

  UserName._(this.value);
}

class Address extends ValueObject<String> {
  @override
  Either<ValueFailure<String>, String> value;

  factory Address(String input) {
    return Address._(validateStringNotEmpty(input));
  }

  Address._(this.value);
}

class PhoneNumber extends ValueObject<String> {
  @override
  Either<ValueFailure<String>, String> value;

  factory PhoneNumber(String input) {
    return PhoneNumber._(validateStringNotEmpty(input));
  }

  PhoneNumber._(this.value);
}

class PinCode extends ValueObject<String> {
  @override
  Either<ValueFailure<String>, String> value;

  factory PinCode(String input) {
    return PinCode._(validatePincode(input));
  }

  PinCode._(this.value);
}


class DateValue extends ValueObject<String> {
  @override
  Either<ValueFailure<String>, String> value;

  factory DateValue(String input) {
    return DateValue._(validatePincode(input));
  }

  DateValue._(this.value);
}