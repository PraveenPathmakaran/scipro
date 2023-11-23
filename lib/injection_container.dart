import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:scipro/application/auth/sign_in/sign_in_bloc.dart';
import 'package:scipro/domain/auth/i_auth_repository.dart';
import 'package:scipro/infrastructure/auth/auth_repository.dart';

final getIt = GetIt.instance;

Future<void> initGetIt() async {
  authenticationInit();
}

void authenticationInit() {
  //bloc

  getIt.registerFactory<SignInBloc>(() => SignInBloc(getIt()));
  //repository

  getIt.registerLazySingleton<IAuthRepository>(
      () => AuthRepository(getIt(), getIt()));
  //data sources
  //core
  //external

  getIt.registerLazySingleton<FirebaseAuth>(() => FirebaseAuth.instance);
  getIt.registerLazySingleton<GoogleSignIn>(() => GoogleSignIn());
  getIt.registerLazySingleton<FirebaseFirestore>(
      () => FirebaseFirestore.instance);
}
