import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:scipro/domain/auth/admin_data.dart';
import 'package:scipro/domain/auth/auth_failure.dart';
import 'package:scipro/domain/auth/value_objects.dart';
import 'package:scipro/infrastructure/auth/firebase_user_mapper.dart';

import '../../domain/auth/i_auth_repository.dart';

class AuthRepository implements IAuthRepository {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;

  AuthRepository(
    this._firebaseAuth,
    this._googleSignIn,
  );

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required EmailAddress email,
    required Password password,
  }) async {
    final String emailStr = email.getOrCrash();
    final String passwordStr = password.getOrCrash();

    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: emailStr,
        password: passwordStr,
      );

      return right(unit);
    } on FirebaseAuthException catch (e) {
      log(e.toString(), name: "AuthRepository  registerWithEmailAndPassword");
      switch (e.code) {
        case 'email-already-in-use':
          return left(const AuthFailure.emailAlreadyInUse());

        default:
          return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress email,
    required Password password,
  }) async {
    final String emailStr = email.getOrCrash();
    final String passwordStr = password.getOrCrash();

    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: emailStr,
        password: passwordStr,
      );

      return right(unit);
    } on FirebaseAuthException catch (e) {
      log(e.toString(), name: "AuthRepository  SignInWithEmailAndPassword");
      switch (e.code) {
        case 'user-disabled':
          return left(const AuthFailure.userDisabled());
        case 'user-not-found':
          return left(const AuthFailure.userNotFound());
        case 'wrong-password':
          return left(const AuthFailure.invalidEmailOrPassword());
        default:
          return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Option<AdminData> getSignedInUser() {
    return optionOf(_firebaseAuth.currentUser?.toDomain());
  }

  @override
  Future<void> signOut() => Future.wait([
        _googleSignIn.signOut(),
        _firebaseAuth.signOut(),
      ]);
}
