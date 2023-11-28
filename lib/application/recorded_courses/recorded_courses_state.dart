part of 'recorded_courses_bloc.dart';

@freezed
class RecordedCoursesState with _$RecordedCoursesState {
  const factory RecordedCoursesState(
          {required bool isSubmitting,
          required CourseCategory courseCategory,
          required CourseData courseData,
          required Option<Either<RecordedCourseFailures, Unit>>
              recordedCoursesFailureOrSuccessOption,
        }) =
      _RecordedCoursesState;

  factory RecordedCoursesState.initial() => RecordedCoursesState(
      courseCategory: CourseCategory.empty(),
      courseData: CourseData.empty(),
      isSubmitting: false,
      recordedCoursesFailureOrSuccessOption: none(),
      );
}
