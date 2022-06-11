import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ictplus/domain/auth/i_auth_facade.dart';
import 'package:ictplus/domain/data/data_failure.dart';
import 'package:ictplus/domain/data/profile/i_profile_repository.dart';
import 'package:ictplus/domain/mods/i_mod_repository.dart';
import 'package:injectable/injectable.dart';

part 'auth_event.dart';
part 'auth_state.dart';

part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _authFacade;
  final IProfileRepository _profileRepository;
  final IModRepository _modRepository;

  AuthBloc(this._authFacade, this._profileRepository, this._modRepository)
      : super(const AuthState.initial());

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.map(
      authCheckRequested: (e) async* {
        final userOption = await _authFacade.getSignedInUser();
        yield userOption.fold(
          () => const AuthState.unauthenticated(),
          (_) => const AuthState.authenticated(),
        );
      },
      signedOut: (e) async* {
        await _authFacade.signOut();
        yield const AuthState.unauthenticated();
      },
      sentEmailVerification: (e) async* {
        yield const AuthState.unverified();
        await _authFacade.sendEmailVerification();
      },
      verifiedCheckRequested: (e) async* {
        yield const AuthState.verifying();
        final userOption = await _authFacade.getSignedInUser();
        bool isAuthenticated = false;

        userOption.fold(
            () => isAuthenticated = false, (_) => isAuthenticated = true);

        if (isAuthenticated) {
          final userVerified = await _authFacade.isUserVerified();
          if (userVerified) {
            yield const AuthState.verified();
          } else {
            yield const AuthState.unverified();
          }
        } else {
          yield const AuthState.unauthenticated();
        }
      },
      registeredCheckRequested: (e) async* {
        yield const AuthState.verifying();
        final Either<DataFailure, bool> verifyUserRegistered =
            await _profileRepository.verifyUserRegistered();
        final bool userRegistered = verifyUserRegistered.getOrElse(() => false);
        if (userRegistered) {
          final userId = await _profileRepository.getUserId();
          yield AuthState.registered(userId);
        } else {
          yield const AuthState.unregistered();
        }
      },
      nusModsUpdateRequested: (e) async* {
        _modRepository.addLastPosted();
      },
    );
  }
}
