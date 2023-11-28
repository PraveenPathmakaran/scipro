import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/recorded_courses/course_category.dart';
import '../../../domain/recorded_courses/i_recorded_courses_repository.dart';
import '../../../domain/recorded_courses/recorded_course_failures.dart';

part 'recorded_course_category_bloc.freezed.dart';
part 'recorded_course_category_event.dart';
part 'recorded_course_category_state.dart';

class RecordedCourseCategoryBloc
    extends Bloc<RecordedCourseCategoryEvent, RecordedCourseCategoryState> {
  final IRecordedCoursesRepository _repository;
  RecordedCourseCategoryBloc(this._repository)
      : super(RecordedCourseCategoryState.initial()) {
    on<RecordedCourseCategoryEvent>((event, emit) async {
      await event.map(
        createCategoryButtonPressed: (_) async {
          await createCategory(event, emit);
        },
        categoryNameUpdateButtonPressed: (_) async {
          await categoryUpdate(event, emit);
        },
      );
    });
  }

  Future<void> createCategory(
    RecordedCourseCategoryEvent event,
    Emitter<RecordedCourseCategoryState> emit,
  ) async {
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
          recordedCoursesFailureOrSuccessOption: some(failureOrSuccessOption)));
    });
  }

  Future<void> categoryUpdate(
    RecordedCourseCategoryEvent event,
    Emitter<RecordedCourseCategoryState> emit,
  ) async {
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
      final failureOrSuccessOption = await _repository.updateCategoryName(
          courseCategory: state.courseCategory);
      emit(state.copyWith(
        isSubmitting: false,
        recordedCoursesFailureOrSuccessOption: some(failureOrSuccessOption),
      ));
    });
  }
}
