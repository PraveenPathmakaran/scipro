import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scipro/domain/core/failures.dart';
import 'package:scipro/domain/core/value_objects.dart';

import 'value_objects.dart';

part 'course_data.freezed.dart';

@freezed
abstract class CourseData implements _$CourseData {
  const CourseData._();
  const factory CourseData({
    required UniqueId uniqueId,
    required CourseName courseName,
    required FacultyName facultyName,
    required UniqueId categoryId,
    required CourseFee fee,
    required List<CourseVideoUrl> videos,
    required List<StudentId> subscribedStudents,
    required CourseDuraion duration,
  }) = _CourseData;

  factory CourseData.empty() => CourseData(
      uniqueId: UniqueId(),
      courseName: CourseName(''),
      facultyName: FacultyName(''),
      categoryId: UniqueId(),
      fee: CourseFee(''),
      videos: [],
      subscribedStudents: [],
      duration: CourseDuraion(''));

  Option<ValueFailure<dynamic>> get failureOption {
    return courseName.failureOrUnit
        .andThen(facultyName.failureOrUnit)
        .andThen(fee.failureOrUnit)
        .andThen(duration.failureOrUnit)
        .andThen(videos
            .map((e) => e.failureOrUnit)
            .where((element) => element.isLeft())
            .first)
        .andThen(subscribedStudents
            .map((e) => e.failureOrUnit)
            .where((element) => element.isLeft())
            .first)
        .fold((failure) => some(failure), (r) => none());
  }
}
