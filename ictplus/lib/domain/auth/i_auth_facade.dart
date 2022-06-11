import 'package:dartz/dartz.dart';
import 'package:ictplus/domain/auth/auth_failures.dart';
import 'package:ictplus/domain/auth/user.dart';
import 'package:ictplus/domain/auth/value_objects.dart';

abstract class IAuthFacade {
  Future<Option<User>> getSignedInUser();

  Future sendEmailVerification();

  Future<bool> isUserVerified();

  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });

  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });

  Future<Either<AuthFailure, Unit>> sendPasswordReset(
      {required EmailAddress emailAddress});

  Future<void> signOut();
}
