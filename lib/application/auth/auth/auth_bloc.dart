import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scipro/domain/auth/i_auth_repository.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthRepository _authRepository;
  AuthBloc(this._authRepository) : super(const AuthState.initial()) {
    on<AuthEvent>((event, emit) async {
      await event.map(
        authCheckRequested: (_) async {
          final userOption = _authRepository.getSignedInUser();
          userOption.fold(() => emit(const AuthState.unauthenticated()),
              (_) => emit(const AuthState.authenticated()));
        },
        signedOut: (_) async {
          await _authRepository.signOut();
          emit(const AuthState.unauthenticated());
        },
      );
    });
  }
}
