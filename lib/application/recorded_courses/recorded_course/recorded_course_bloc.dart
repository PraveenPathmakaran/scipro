import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scipro/domain/recorded_courses/course_data.dart';

import '../../../domain/recorded_courses/i_recorded_courses_repository.dart';
import '../../../domain/recorded_courses/recorded_course_failures.dart';

part 'recorded_course_bloc.freezed.dart';
part 'recorded_course_event.dart';
part 'recorded_course_state.dart';

class RecordedCourseBloc
    extends Bloc<RecordedCourseEvent, RecordedCourseState> {
  final IRecordedCoursesRepository _repository;
  RecordedCourseBloc(this._repository) : super(RecordedCourseState.initial()) {
    on<RecordedCourseEvent>((event, emit) async {
      await event.map(
        createButtonPressed: (_) async {
          emit(
            state.copyWith(
              isSubmitting: true,
              recordedCoursesFailureOrSuccessOption: none(),
            ),
          );

          _repository.
        },
      );
    });
  }
}
