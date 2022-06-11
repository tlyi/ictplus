part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() =
      Initial; //Not sure if user is authenticated or not, need to check
  const factory AuthState.authenticated() = Authenticated;
  const factory AuthState.unauthenticated() = Unauthenticated;
  const factory AuthState.unverified() = Unverified;
  const factory AuthState.verifying() = Verifying;
  const factory AuthState.verified() = Verified;
  const factory AuthState.unregistered() =
      Unregistered; //User is verified but has not registered profile
  const factory AuthState.registered(String userId) = Registered;
}
