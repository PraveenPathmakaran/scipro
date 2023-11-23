import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scipro/domain/auth/auth_failure.dart';
import 'package:scipro/domain/auth/i_auth_repository.dart';
import 'package:scipro/domain/auth/value_objects.dart';

part 'sign_in_bloc.freezed.dart';
part 'sign_in_event.dart';
part 'sign_in_state.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final IAuthRepository _authRepository;
  SignInBloc(this._authRepository) : super(SignInState.initial()) {
    on<SignInEvent>((event, emit) async {
      await event.map(
        emailChanged: (value) async {
          emit(
            state.copyWith(
              emailAddress: EmailAddress(value.emailStr),
              authFailureOrSuccessOption: none(),
            ),
          );
        },
        passwordChanged: (value) async {
          emit(
            state.copyWith(
              emailAddress: EmailAddress(value.passwordStr),
              authFailureOrSuccessOption: none(),
            ),
          );
        },
        registerWithEmailAndPasswordPressed: (value) async {
          await _performActionWithEmailAndPassword(
            event,
            emit,
            _authRepository.registerWithEmailAndPassword,
          );
        },
        signInWithEmailAndPasswordPressed: (value) async {
          await _performActionWithEmailAndPassword(
            event,
            emit,
            _authRepository.signInWithEmailAndPassword,
          );
        },
      );
    });
  }

  Future<void> _performActionWithEmailAndPassword(
      SignInEvent event,
      Emitter<SignInState> emit,
      Future<Either<AuthFailure, Unit>> Function({
        required EmailAddress email,
        required Password password,
      }) forwardCall) async {
    Either<AuthFailure, Unit>? failureOrSuccess;
    final isEmailValid = state.emailAddress.isValid();
    final isPasswordValid = state.password.isValid();
    if (isEmailValid && isPasswordValid) {
      emit(state.copyWith(
          isSubmitting: true, authFailureOrSuccessOption: none()));

      failureOrSuccess = await forwardCall(
        email: state.emailAddress,
        password: state.password,
      );
      emit(state.copyWith(
          isSubmitting: false,
          authFailureOrSuccessOption: some(failureOrSuccess)));
    }

    emit(state.copyWith(
        isSubmitting: false,
        authFailureOrSuccessOption: optionOf(failureOrSuccess)));
  }
}
