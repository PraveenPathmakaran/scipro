part of 'recorded_course_category_bloc.dart';

@freezed
class RecordedCourseCategoryEvent with _$RecordedCourseCategoryEvent {
  const factory RecordedCourseCategoryEvent.createCategoryButtonPressed() = CreateCategoryButtonPressed;
  const factory RecordedCourseCategoryEvent.categoryNameUpdateButtonPressed() = CategoryNameUpdateButtonPressed;
}