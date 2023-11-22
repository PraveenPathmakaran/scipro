import 'package:dartz/dartz.dart';
import 'package:scipro/domain/auth/auth_failure.dart';

abstract class IAuthRepository {
  Future<Either<AuthFailure, Unit>> signInWithGoogle();
  Future<void> signOut();
}
