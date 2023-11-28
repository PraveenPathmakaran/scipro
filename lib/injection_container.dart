import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:scipro/domain/auth/i_auth_repository.dart';
import 'package:scipro/infrastructure/auth/auth_repository.dart';

import 'application/auth/auth_bloc.dart';
import 'application/sign_in/sign_in_bloc.dart';

final getIt = GetIt.instance;

Future<void> initGetIt() async {
  externalInit();
  blocInit();
  repositoryInit();
}

void externalInit() {
  getIt.registerLazySingleton<FirebaseAuth>(() => FirebaseAuth.instance);
  getIt.registerLazySingleton<GoogleSignIn>(() => GoogleSignIn());
  getIt.registerLazySingleton<FirebaseFirestore>(
      () => FirebaseFirestore.instance);
}

void blocInit() {
  getIt.registerFactory<AuthBloc>(() => AuthBloc(getIt()));
  getIt.registerFactory<SignInBloc>(() => SignInBloc(getIt()));
}

void repositoryInit() {
  getIt.registerLazySingleton<IAuthRepository>(
      () => AuthRepository(getIt(), getIt()));
}
