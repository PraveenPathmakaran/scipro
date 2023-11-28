import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scipro/domain/recorded_courses/value_objects.dart';

import '../core/failures.dart';
import '../core/value_objects.dart';

part 'course_category.freezed.dart';

@freezed
abstract class CourseCategory implements _$CourseCategory {
  const CourseCategory._();
  const factory CourseCategory({
    required UniqueId uniqueId,
    required CourseCategoryName categoryName,
  }) = _CourseCategory;

  factory CourseCategory.empty() => CourseCategory(
        categoryName: CourseCategoryName(''),
        uniqueId: UniqueId(),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return categoryName.failureOrUnit
        .fold((failure) => some(failure), (r) => none());
  }
}
