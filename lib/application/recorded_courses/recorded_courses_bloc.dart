import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scipro/domain/recorded_courses/course_category.dart';
import 'package:scipro/domain/recorded_courses/course_data.dart';
import 'package:scipro/domain/recorded_courses/i_recorded_courses_repository.dart';
import 'package:scipro/domain/recorded_courses/recorded_course_failures.dart';

part 'recorded_courses_bloc.freezed.dart';
part 'recorded_courses_event.dart';
part 'recorded_courses_state.dart';

class RecordedCoursesBloc
    extends Bloc<RecordedCoursesEvent, RecordedCoursesState> {
  final IRecordedCoursesRepository _repository;
  RecordedCoursesBloc(this._repository)
      : super(RecordedCoursesState.initial()) {
    on<RecordedCoursesEvent>((event, emit) async {
      await categoryCreate(event, emit);
    });
  }

  Future<void> categoryCreate(
    RecordedCoursesEvent event,
    Emitter<RecordedCoursesState> emit,
  ) {
    return event.map(
      createCategoryButtonPressed: (value) async {
        emit(state.copyWith(
          isSubmitting: true,
          recordedCoursesFailureOrSuccessOption: none(),
        ));

        final isExistValue = await _repository
            .isCategoryExist(state.courseCategory.categoryName.getOrCrash());

        await isExistValue.fold((_) async {
          emit(state.copyWith(
              isSubmitting: false,
              recordedCoursesFailureOrSuccessOption: some(isExistValue)));
        }, (_) async {
          final failureOrSuccessOption = await _repository.createCategory(
              courseCategory: state.courseCategory);
          emit(state.copyWith(
              isSubmitting: false,
              recordedCoursesFailureOrSuccessOption:
                  some(failureOrSuccessOption)));
        });
      },
    );
  }
}
