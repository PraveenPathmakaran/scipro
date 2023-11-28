part of 'recorded_courses_bloc.dart';

@freezed
class RecordedCoursesEvent with _$RecordedCoursesEvent {
  const factory RecordedCoursesEvent.createCategoryButtonPressed() = CreateCategoryButtonPressed;
}