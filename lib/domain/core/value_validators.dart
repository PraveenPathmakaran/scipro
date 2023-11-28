import 'package:dartz/dartz.dart';
import 'package:scipro/domain/core/failures.dart';

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.empty(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateNumber(String input) {
  final value = num.tryParse(input);
  if (value != null) {
    return right(input);
  } else {
    return left(ValueFailure.notAnumber(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const String emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";

  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  if (input.length >= 6) {
    return right(input);
  } else {
    return left(ValueFailure.shortPassword(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePhoneNumber(String input) {
  const String phoneRegex = r'(^(?:[+0]9)?[0-9]{10,12}$)';

  if (RegExp(phoneRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidPhoneNumber(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePincode(String input) {
  const String pinCodeRegex = r'(^[1-9][0-9]{5}$)';

  if (RegExp(pinCodeRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidPincode(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateDate(String input) {
  try {
    DateTime? parsedDate = DateTime.tryParse(input);
    if (parsedDate != null &&
        parsedDate.year > 0 &&
        parsedDate.month >= 1 &&
        parsedDate.month <= 12 &&
        parsedDate.day >= 1 &&
        parsedDate.day <= 31) {
      return right(input);
    } else {
      return left(ValueFailure.invalidDate(failedValue: input));
    }
  } catch (e) {
    return left(ValueFailure.invalidDate(failedValue: input));
  }
}
