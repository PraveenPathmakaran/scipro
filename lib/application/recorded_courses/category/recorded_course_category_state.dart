part of 'recorded_course_category_bloc.dart';

@freezed
class RecordedCourseCategoryState with _$RecordedCourseCategoryState {
  const factory RecordedCourseCategoryState({
    required bool isSubmitting,
    required CourseCategory courseCategory,
    required Option<Either<RecordedCourseFailures, Unit>>
        recordedCoursesFailureOrSuccessOption,
  }) = _RecordedCourseCategoryState;

  factory RecordedCourseCategoryState.initial() => RecordedCourseCategoryState(
        courseCategory: CourseCategory.empty(),
        isSubmitting: false,
        recordedCoursesFailureOrSuccessOption: none(),
      );
}
