import 'package:freezed_annotation/freezed_annotation.dart';
part 'recorded_course_failures.freezed.dart';

@freezed
class RecordedCourseFailures<T> with _$RecordedCourseFailures<T>{
  const factory RecordedCourseFailures.unexpected({required T failedValue}) = Unexpected;
  const factory RecordedCourseFailures.categoryCreationfailed({required T failedValue}) = CategoryCreationfailed;
  const factory RecordedCourseFailures.categoryExistFailure({required T failedValue}) = CategoryExistFailure;
}