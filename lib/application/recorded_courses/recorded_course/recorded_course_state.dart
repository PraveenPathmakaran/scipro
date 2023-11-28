part of 'recorded_course_bloc.dart';

@freezed
class RecordedCourseState with _$RecordedCourseState {
  const factory RecordedCourseState({
    required bool isSubmitting,
    required CourseData courseData,
    required Option<Either<RecordedCourseFailures, Unit>>
        recordedCoursesFailureOrSuccessOption,
  }) = _RecordedCourseState;

  factory RecordedCourseState.initial() => RecordedCourseState(
        isSubmitting: false,
        courseData: CourseData.empty(),
        recordedCoursesFailureOrSuccessOption: none(),
      );
}
