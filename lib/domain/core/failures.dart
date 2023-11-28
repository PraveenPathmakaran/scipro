import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.empty({required T failedValue}) = Empty<T>;
  const factory ValueFailure.notAnumber({required T failedValue}) = NotAnumber<T>;
  const factory ValueFailure.invalidUserName({required T failedValue}) =
      InvalidUserName<T>;
  const factory ValueFailure.invalidAddress({required T failedValue}) =
      InvalidAddress<T>;
  const factory ValueFailure.invalidEmail({required T failedValue}) =
      InvalidEmail<T>;
  const factory ValueFailure.invalidPhoneNumber({required T failedValue}) =
      InvalidPhoneNumber<T>;
  const factory ValueFailure.invalidPincode({required T failedValue}) =
      InvalidPincode<T>;
  const factory ValueFailure.invalidDate({required T failedValue}) =
      InvalidDate<T>;
   const factory ValueFailure.shortPassword({required T failedValue}) =
      ShortPassword<T>;
}

