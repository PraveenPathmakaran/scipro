// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:scipro/domain/core/failures.dart';
import 'package:scipro/domain/core/value_objects.dart';
import 'package:scipro/domain/core/value_validators.dart';

class CourseName extends ValueObject<String> {
  @override
  Either<ValueFailure<String>, String> value;

  factory CourseName(String input) {
    return CourseName._(validateStringNotEmpty(input));
  }
  CourseName._(
    this.value,
  );
}

class FacultyName extends ValueObject<String> {
  @override
  Either<ValueFailure<String>, String> value;

  factory FacultyName(String input) {
    return FacultyName._(validateStringNotEmpty(input));
  }
  FacultyName._(
    this.value,
  );
}

class CourseFee extends ValueObject<String> {
  @override
  Either<ValueFailure<String>, String> value;

  factory CourseFee(String input) {
    return CourseFee._(validateStringNotEmpty(input).flatMap(validateNumber));
  }
  CourseFee._(
    this.value,
  );
}

class CourseDuraion extends ValueObject<String> {
  @override
  Either<ValueFailure<String>, String> value;

  factory CourseDuraion(String input) {
    return CourseDuraion._(
        validateStringNotEmpty(input).flatMap(validateNumber));
  }
  CourseDuraion._(
    this.value,
  );
}

class CourseCategoryName extends ValueObject<String> {
  @override
  Either<ValueFailure<String>, String> value;

  factory CourseCategoryName(String input) {
    return CourseCategoryName._(validateStringNotEmpty(input));
  }
  CourseCategoryName._(
    this.value,
  );
}

class CourseVideoUrl extends ValueObject<String> {
  @override
  Either<ValueFailure<String>, String> value;

  factory CourseVideoUrl(String input) {
    return CourseVideoUrl._(validateStringNotEmpty(input));
  }
  CourseVideoUrl._(
    this.value,
  );
}

class StudentId extends ValueObject<String> {
  @override
  Either<ValueFailure<String>, String> value;

  factory StudentId(String input) {
    return StudentId._(validateStringNotEmpty(input));
  }
  StudentId._(
    this.value,
  );
}
