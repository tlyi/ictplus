import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failures.freezed.dart';

@freezed
class AuthFailure with _$AuthFailure {
  const factory AuthFailure.serverError() = ServerError;
  const factory AuthFailure.emailAlreadyInUse() = EmailAlreadyInUse;
  const factory AuthFailure.invalidEmailAndPasswordCombi() =
      InvalidEmailAndPasswordCombi;
}

//Failure 1: Error on auth server
//Failure 2: Register with email already in use
//Failure 3: Wrong combination of email and password
