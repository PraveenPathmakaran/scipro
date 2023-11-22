import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scipro/domain/auth/auth_failure.dart';
import 'package:scipro/domain/auth/i_auth_repository.dart';

part 'sign_in_bloc.freezed.dart';
part 'sign_in_event.dart';
part 'sign_in_state.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final IAuthRepository _authRepository;
  SignInBloc(this._authRepository) : super(SignInState.initial()) {
    on<SignInEvent>((event, emit) async {
      emit(state.copyWith(
          isSubmitting: true, authFailureOrSuccessOption: none()));

      final failureOrSuccess = await _authRepository.signInWithGoogle();

      emit(state.copyWith(
        isSubmitting: false,
        authFailureOrSuccessOption: some(failureOrSuccess),
      ));
    });
  }
}
