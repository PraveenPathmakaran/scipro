import 'package:dartz/dartz.dart';
import 'package:scipro/domain/auth/admin_data.dart';
import 'package:scipro/domain/auth/auth_failure.dart';
import 'package:scipro/domain/auth/value_objects.dart';

abstract class IAuthRepository {
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required EmailAddress email,
    required Password password,
  });
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress email,
    required Password password,
  });

  Future<void> signOut();
  Future<Option<AdminData>> getSignedInUser();
}
