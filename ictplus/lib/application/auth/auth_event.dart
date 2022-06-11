part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.authCheckRequested() = AuthCheckRequested;
  const factory AuthEvent.signedOut() = SignedOut;
  const factory AuthEvent.sentEmailVerification() = SentEmailVerification;
  const factory AuthEvent.verifiedCheckRequested() = VerifiedCheckRequested;
  const factory AuthEvent.registeredCheckRequested() = RegisteredCheckRequested;
  const factory AuthEvent.nusModsUpdateRequested() = NusModsUpdateRequested;
}
