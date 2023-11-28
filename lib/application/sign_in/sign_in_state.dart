part of 'sign_in_bloc.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState({
    required EmailAddress emailAddress,
    required Password password,
    required bool showErrorMessage,
    required bool isSubmitting,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _SignInState;

  factory SignInState.initial() {
    return SignInState(
      emailAddress: EmailAddress(''),
      password: Password(''),
      showErrorMessage: false,
      isSubmitting: false,
      authFailureOrSuccessOption: none(),
    );
  }
}
