import 'package:scipro/domain/core/failures.dart';

class UnExpectedValueError extends Error {
  final ValueFailure valueFailure;
  UnExpectedValueError(this.valueFailure);
  @override
  String toString() {
    const explanation =
        'Encountered a ValueFailure at an unrecoverable point. Terminating.';
    return Error.safeToString('$explanation Failure was: $valueFailure');
  }
}

class NotAuthenticatedError extends Error {}
class UnExpectedError extends Error {}
