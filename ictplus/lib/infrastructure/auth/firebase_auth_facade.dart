import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:ictplus/domain/auth/auth_failures.dart';
import 'package:ictplus/domain/auth/i_auth_facade.dart';
import 'package:ictplus/domain/auth/value_objects.dart';
import 'package:ictplus/domain/auth/user.dart';
import 'package:injectable/injectable.dart';
import './firebase_user_mapper.dart';

@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth _firebaseAuth;

  FirebaseAuthFacade(
    this._firebaseAuth,
  );

  @override
  Future<Option<User>> getSignedInUser() async {
    return optionOf(_firebaseAuth.currentUser?.toDomain());
  }

  @override
  Future sendEmailVerification() async {
    final user = _firebaseAuth.currentUser;
    await user!.sendEmailVerification();
  }

  @override
  Future<bool> isUserVerified() async {
    final user = _firebaseAuth.currentUser;
    await user!.reload();
    return user.emailVerified;
  }

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  }) async {
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: emailAddressStr,
        password: passwordStr,
      );
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        return left(const AuthFailure.emailAlreadyInUse());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  }) async {
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: emailAddressStr,
        password: passwordStr,
      );
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found' || e.code == 'wrong-password') {
        return left(const AuthFailure.invalidEmailAndPasswordCombi());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> sendPasswordReset(
      {required EmailAddress emailAddress}) async {
    final emailAddressStr = emailAddress.getOrCrash();
    try {
      await _firebaseAuth.sendPasswordResetEmail(email: emailAddressStr);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      print(e.code);
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }
}
