// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthEventTearOff {
  const _$AuthEventTearOff();

  AuthCheckRequested authCheckRequested() {
    return const AuthCheckRequested();
  }

  SignedOut signedOut() {
    return const SignedOut();
  }

  SentEmailVerification sentEmailVerification() {
    return const SentEmailVerification();
  }

  VerifiedCheckRequested verifiedCheckRequested() {
    return const VerifiedCheckRequested();
  }

  RegisteredCheckRequested registeredCheckRequested() {
    return const RegisteredCheckRequested();
  }

  NusModsUpdateRequested nusModsUpdateRequested() {
    return const NusModsUpdateRequested();
  }
}

/// @nodoc
const $AuthEvent = _$AuthEventTearOff();

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authCheckRequested,
    required TResult Function() signedOut,
    required TResult Function() sentEmailVerification,
    required TResult Function() verifiedCheckRequested,
    required TResult Function() registeredCheckRequested,
    required TResult Function() nusModsUpdateRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authCheckRequested,
    TResult Function()? signedOut,
    TResult Function()? sentEmailVerification,
    TResult Function()? verifiedCheckRequested,
    TResult Function()? registeredCheckRequested,
    TResult Function()? nusModsUpdateRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthCheckRequested value) authCheckRequested,
    required TResult Function(SignedOut value) signedOut,
    required TResult Function(SentEmailVerification value)
        sentEmailVerification,
    required TResult Function(VerifiedCheckRequested value)
        verifiedCheckRequested,
    required TResult Function(RegisteredCheckRequested value)
        registeredCheckRequested,
    required TResult Function(NusModsUpdateRequested value)
        nusModsUpdateRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthCheckRequested value)? authCheckRequested,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(SentEmailVerification value)? sentEmailVerification,
    TResult Function(VerifiedCheckRequested value)? verifiedCheckRequested,
    TResult Function(RegisteredCheckRequested value)? registeredCheckRequested,
    TResult Function(NusModsUpdateRequested value)? nusModsUpdateRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;
  // ignore: unused_field
  final $Res Function(AuthEvent) _then;
}

/// @nodoc
abstract class $AuthCheckRequestedCopyWith<$Res> {
  factory $AuthCheckRequestedCopyWith(
          AuthCheckRequested value, $Res Function(AuthCheckRequested) then) =
      _$AuthCheckRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthCheckRequestedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements $AuthCheckRequestedCopyWith<$Res> {
  _$AuthCheckRequestedCopyWithImpl(
      AuthCheckRequested _value, $Res Function(AuthCheckRequested) _then)
      : super(_value, (v) => _then(v as AuthCheckRequested));

  @override
  AuthCheckRequested get _value => super._value as AuthCheckRequested;
}

/// @nodoc

class _$AuthCheckRequested implements AuthCheckRequested {
  const _$AuthCheckRequested();

  @override
  String toString() {
    return 'AuthEvent.authCheckRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AuthCheckRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authCheckRequested,
    required TResult Function() signedOut,
    required TResult Function() sentEmailVerification,
    required TResult Function() verifiedCheckRequested,
    required TResult Function() registeredCheckRequested,
    required TResult Function() nusModsUpdateRequested,
  }) {
    return authCheckRequested();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authCheckRequested,
    TResult Function()? signedOut,
    TResult Function()? sentEmailVerification,
    TResult Function()? verifiedCheckRequested,
    TResult Function()? registeredCheckRequested,
    TResult Function()? nusModsUpdateRequested,
    required TResult orElse(),
  }) {
    if (authCheckRequested != null) {
      return authCheckRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthCheckRequested value) authCheckRequested,
    required TResult Function(SignedOut value) signedOut,
    required TResult Function(SentEmailVerification value)
        sentEmailVerification,
    required TResult Function(VerifiedCheckRequested value)
        verifiedCheckRequested,
    required TResult Function(RegisteredCheckRequested value)
        registeredCheckRequested,
    required TResult Function(NusModsUpdateRequested value)
        nusModsUpdateRequested,
  }) {
    return authCheckRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthCheckRequested value)? authCheckRequested,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(SentEmailVerification value)? sentEmailVerification,
    TResult Function(VerifiedCheckRequested value)? verifiedCheckRequested,
    TResult Function(RegisteredCheckRequested value)? registeredCheckRequested,
    TResult Function(NusModsUpdateRequested value)? nusModsUpdateRequested,
    required TResult orElse(),
  }) {
    if (authCheckRequested != null) {
      return authCheckRequested(this);
    }
    return orElse();
  }
}

abstract class AuthCheckRequested implements AuthEvent {
  const factory AuthCheckRequested() = _$AuthCheckRequested;
}

/// @nodoc
abstract class $SignedOutCopyWith<$Res> {
  factory $SignedOutCopyWith(SignedOut value, $Res Function(SignedOut) then) =
      _$SignedOutCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignedOutCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $SignedOutCopyWith<$Res> {
  _$SignedOutCopyWithImpl(SignedOut _value, $Res Function(SignedOut) _then)
      : super(_value, (v) => _then(v as SignedOut));

  @override
  SignedOut get _value => super._value as SignedOut;
}

/// @nodoc

class _$SignedOut implements SignedOut {
  const _$SignedOut();

  @override
  String toString() {
    return 'AuthEvent.signedOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignedOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authCheckRequested,
    required TResult Function() signedOut,
    required TResult Function() sentEmailVerification,
    required TResult Function() verifiedCheckRequested,
    required TResult Function() registeredCheckRequested,
    required TResult Function() nusModsUpdateRequested,
  }) {
    return signedOut();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authCheckRequested,
    TResult Function()? signedOut,
    TResult Function()? sentEmailVerification,
    TResult Function()? verifiedCheckRequested,
    TResult Function()? registeredCheckRequested,
    TResult Function()? nusModsUpdateRequested,
    required TResult orElse(),
  }) {
    if (signedOut != null) {
      return signedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthCheckRequested value) authCheckRequested,
    required TResult Function(SignedOut value) signedOut,
    required TResult Function(SentEmailVerification value)
        sentEmailVerification,
    required TResult Function(VerifiedCheckRequested value)
        verifiedCheckRequested,
    required TResult Function(RegisteredCheckRequested value)
        registeredCheckRequested,
    required TResult Function(NusModsUpdateRequested value)
        nusModsUpdateRequested,
  }) {
    return signedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthCheckRequested value)? authCheckRequested,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(SentEmailVerification value)? sentEmailVerification,
    TResult Function(VerifiedCheckRequested value)? verifiedCheckRequested,
    TResult Function(RegisteredCheckRequested value)? registeredCheckRequested,
    TResult Function(NusModsUpdateRequested value)? nusModsUpdateRequested,
    required TResult orElse(),
  }) {
    if (signedOut != null) {
      return signedOut(this);
    }
    return orElse();
  }
}

abstract class SignedOut implements AuthEvent {
  const factory SignedOut() = _$SignedOut;
}

/// @nodoc
abstract class $SentEmailVerificationCopyWith<$Res> {
  factory $SentEmailVerificationCopyWith(SentEmailVerification value,
          $Res Function(SentEmailVerification) then) =
      _$SentEmailVerificationCopyWithImpl<$Res>;
}

/// @nodoc
class _$SentEmailVerificationCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements $SentEmailVerificationCopyWith<$Res> {
  _$SentEmailVerificationCopyWithImpl(
      SentEmailVerification _value, $Res Function(SentEmailVerification) _then)
      : super(_value, (v) => _then(v as SentEmailVerification));

  @override
  SentEmailVerification get _value => super._value as SentEmailVerification;
}

/// @nodoc

class _$SentEmailVerification implements SentEmailVerification {
  const _$SentEmailVerification();

  @override
  String toString() {
    return 'AuthEvent.sentEmailVerification()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SentEmailVerification);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authCheckRequested,
    required TResult Function() signedOut,
    required TResult Function() sentEmailVerification,
    required TResult Function() verifiedCheckRequested,
    required TResult Function() registeredCheckRequested,
    required TResult Function() nusModsUpdateRequested,
  }) {
    return sentEmailVerification();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authCheckRequested,
    TResult Function()? signedOut,
    TResult Function()? sentEmailVerification,
    TResult Function()? verifiedCheckRequested,
    TResult Function()? registeredCheckRequested,
    TResult Function()? nusModsUpdateRequested,
    required TResult orElse(),
  }) {
    if (sentEmailVerification != null) {
      return sentEmailVerification();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthCheckRequested value) authCheckRequested,
    required TResult Function(SignedOut value) signedOut,
    required TResult Function(SentEmailVerification value)
        sentEmailVerification,
    required TResult Function(VerifiedCheckRequested value)
        verifiedCheckRequested,
    required TResult Function(RegisteredCheckRequested value)
        registeredCheckRequested,
    required TResult Function(NusModsUpdateRequested value)
        nusModsUpdateRequested,
  }) {
    return sentEmailVerification(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthCheckRequested value)? authCheckRequested,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(SentEmailVerification value)? sentEmailVerification,
    TResult Function(VerifiedCheckRequested value)? verifiedCheckRequested,
    TResult Function(RegisteredCheckRequested value)? registeredCheckRequested,
    TResult Function(NusModsUpdateRequested value)? nusModsUpdateRequested,
    required TResult orElse(),
  }) {
    if (sentEmailVerification != null) {
      return sentEmailVerification(this);
    }
    return orElse();
  }
}

abstract class SentEmailVerification implements AuthEvent {
  const factory SentEmailVerification() = _$SentEmailVerification;
}

/// @nodoc
abstract class $VerifiedCheckRequestedCopyWith<$Res> {
  factory $VerifiedCheckRequestedCopyWith(VerifiedCheckRequested value,
          $Res Function(VerifiedCheckRequested) then) =
      _$VerifiedCheckRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class _$VerifiedCheckRequestedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements $VerifiedCheckRequestedCopyWith<$Res> {
  _$VerifiedCheckRequestedCopyWithImpl(VerifiedCheckRequested _value,
      $Res Function(VerifiedCheckRequested) _then)
      : super(_value, (v) => _then(v as VerifiedCheckRequested));

  @override
  VerifiedCheckRequested get _value => super._value as VerifiedCheckRequested;
}

/// @nodoc

class _$VerifiedCheckRequested implements VerifiedCheckRequested {
  const _$VerifiedCheckRequested();

  @override
  String toString() {
    return 'AuthEvent.verifiedCheckRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is VerifiedCheckRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authCheckRequested,
    required TResult Function() signedOut,
    required TResult Function() sentEmailVerification,
    required TResult Function() verifiedCheckRequested,
    required TResult Function() registeredCheckRequested,
    required TResult Function() nusModsUpdateRequested,
  }) {
    return verifiedCheckRequested();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authCheckRequested,
    TResult Function()? signedOut,
    TResult Function()? sentEmailVerification,
    TResult Function()? verifiedCheckRequested,
    TResult Function()? registeredCheckRequested,
    TResult Function()? nusModsUpdateRequested,
    required TResult orElse(),
  }) {
    if (verifiedCheckRequested != null) {
      return verifiedCheckRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthCheckRequested value) authCheckRequested,
    required TResult Function(SignedOut value) signedOut,
    required TResult Function(SentEmailVerification value)
        sentEmailVerification,
    required TResult Function(VerifiedCheckRequested value)
        verifiedCheckRequested,
    required TResult Function(RegisteredCheckRequested value)
        registeredCheckRequested,
    required TResult Function(NusModsUpdateRequested value)
        nusModsUpdateRequested,
  }) {
    return verifiedCheckRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthCheckRequested value)? authCheckRequested,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(SentEmailVerification value)? sentEmailVerification,
    TResult Function(VerifiedCheckRequested value)? verifiedCheckRequested,
    TResult Function(RegisteredCheckRequested value)? registeredCheckRequested,
    TResult Function(NusModsUpdateRequested value)? nusModsUpdateRequested,
    required TResult orElse(),
  }) {
    if (verifiedCheckRequested != null) {
      return verifiedCheckRequested(this);
    }
    return orElse();
  }
}

abstract class VerifiedCheckRequested implements AuthEvent {
  const factory VerifiedCheckRequested() = _$VerifiedCheckRequested;
}

/// @nodoc
abstract class $RegisteredCheckRequestedCopyWith<$Res> {
  factory $RegisteredCheckRequestedCopyWith(RegisteredCheckRequested value,
          $Res Function(RegisteredCheckRequested) then) =
      _$RegisteredCheckRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class _$RegisteredCheckRequestedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements $RegisteredCheckRequestedCopyWith<$Res> {
  _$RegisteredCheckRequestedCopyWithImpl(RegisteredCheckRequested _value,
      $Res Function(RegisteredCheckRequested) _then)
      : super(_value, (v) => _then(v as RegisteredCheckRequested));

  @override
  RegisteredCheckRequested get _value =>
      super._value as RegisteredCheckRequested;
}

/// @nodoc

class _$RegisteredCheckRequested implements RegisteredCheckRequested {
  const _$RegisteredCheckRequested();

  @override
  String toString() {
    return 'AuthEvent.registeredCheckRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is RegisteredCheckRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authCheckRequested,
    required TResult Function() signedOut,
    required TResult Function() sentEmailVerification,
    required TResult Function() verifiedCheckRequested,
    required TResult Function() registeredCheckRequested,
    required TResult Function() nusModsUpdateRequested,
  }) {
    return registeredCheckRequested();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authCheckRequested,
    TResult Function()? signedOut,
    TResult Function()? sentEmailVerification,
    TResult Function()? verifiedCheckRequested,
    TResult Function()? registeredCheckRequested,
    TResult Function()? nusModsUpdateRequested,
    required TResult orElse(),
  }) {
    if (registeredCheckRequested != null) {
      return registeredCheckRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthCheckRequested value) authCheckRequested,
    required TResult Function(SignedOut value) signedOut,
    required TResult Function(SentEmailVerification value)
        sentEmailVerification,
    required TResult Function(VerifiedCheckRequested value)
        verifiedCheckRequested,
    required TResult Function(RegisteredCheckRequested value)
        registeredCheckRequested,
    required TResult Function(NusModsUpdateRequested value)
        nusModsUpdateRequested,
  }) {
    return registeredCheckRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthCheckRequested value)? authCheckRequested,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(SentEmailVerification value)? sentEmailVerification,
    TResult Function(VerifiedCheckRequested value)? verifiedCheckRequested,
    TResult Function(RegisteredCheckRequested value)? registeredCheckRequested,
    TResult Function(NusModsUpdateRequested value)? nusModsUpdateRequested,
    required TResult orElse(),
  }) {
    if (registeredCheckRequested != null) {
      return registeredCheckRequested(this);
    }
    return orElse();
  }
}

abstract class RegisteredCheckRequested implements AuthEvent {
  const factory RegisteredCheckRequested() = _$RegisteredCheckRequested;
}

/// @nodoc
abstract class $NusModsUpdateRequestedCopyWith<$Res> {
  factory $NusModsUpdateRequestedCopyWith(NusModsUpdateRequested value,
          $Res Function(NusModsUpdateRequested) then) =
      _$NusModsUpdateRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class _$NusModsUpdateRequestedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements $NusModsUpdateRequestedCopyWith<$Res> {
  _$NusModsUpdateRequestedCopyWithImpl(NusModsUpdateRequested _value,
      $Res Function(NusModsUpdateRequested) _then)
      : super(_value, (v) => _then(v as NusModsUpdateRequested));

  @override
  NusModsUpdateRequested get _value => super._value as NusModsUpdateRequested;
}

/// @nodoc

class _$NusModsUpdateRequested implements NusModsUpdateRequested {
  const _$NusModsUpdateRequested();

  @override
  String toString() {
    return 'AuthEvent.nusModsUpdateRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NusModsUpdateRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authCheckRequested,
    required TResult Function() signedOut,
    required TResult Function() sentEmailVerification,
    required TResult Function() verifiedCheckRequested,
    required TResult Function() registeredCheckRequested,
    required TResult Function() nusModsUpdateRequested,
  }) {
    return nusModsUpdateRequested();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authCheckRequested,
    TResult Function()? signedOut,
    TResult Function()? sentEmailVerification,
    TResult Function()? verifiedCheckRequested,
    TResult Function()? registeredCheckRequested,
    TResult Function()? nusModsUpdateRequested,
    required TResult orElse(),
  }) {
    if (nusModsUpdateRequested != null) {
      return nusModsUpdateRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthCheckRequested value) authCheckRequested,
    required TResult Function(SignedOut value) signedOut,
    required TResult Function(SentEmailVerification value)
        sentEmailVerification,
    required TResult Function(VerifiedCheckRequested value)
        verifiedCheckRequested,
    required TResult Function(RegisteredCheckRequested value)
        registeredCheckRequested,
    required TResult Function(NusModsUpdateRequested value)
        nusModsUpdateRequested,
  }) {
    return nusModsUpdateRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthCheckRequested value)? authCheckRequested,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(SentEmailVerification value)? sentEmailVerification,
    TResult Function(VerifiedCheckRequested value)? verifiedCheckRequested,
    TResult Function(RegisteredCheckRequested value)? registeredCheckRequested,
    TResult Function(NusModsUpdateRequested value)? nusModsUpdateRequested,
    required TResult orElse(),
  }) {
    if (nusModsUpdateRequested != null) {
      return nusModsUpdateRequested(this);
    }
    return orElse();
  }
}

abstract class NusModsUpdateRequested implements AuthEvent {
  const factory NusModsUpdateRequested() = _$NusModsUpdateRequested;
}

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

  Initial initial() {
    return const Initial();
  }

  Authenticated authenticated() {
    return const Authenticated();
  }

  Unauthenticated unauthenticated() {
    return const Unauthenticated();
  }

  Unverified unverified() {
    return const Unverified();
  }

  Verifying verifying() {
    return const Verifying();
  }

  Verified verified() {
    return const Verified();
  }

  Unregistered unregistered() {
    return const Unregistered();
  }

  Registered registered(String userId) {
    return Registered(
      userId,
    );
  }
}

/// @nodoc
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() unverified,
    required TResult Function() verifying,
    required TResult Function() verified,
    required TResult Function() unregistered,
    required TResult Function(String userId) registered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? unverified,
    TResult Function()? verifying,
    TResult Function()? verified,
    TResult Function()? unregistered,
    TResult Function(String userId)? registered,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Unverified value) unverified,
    required TResult Function(Verifying value) verifying,
    required TResult Function(Verified value) verified,
    required TResult Function(Unregistered value) unregistered,
    required TResult Function(Registered value) registered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Unverified value)? unverified,
    TResult Function(Verifying value)? verifying,
    TResult Function(Verified value)? verified,
    TResult Function(Unregistered value)? unregistered,
    TResult Function(Registered value)? registered,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() unverified,
    required TResult Function() verifying,
    required TResult Function() verified,
    required TResult Function() unregistered,
    required TResult Function(String userId) registered,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? unverified,
    TResult Function()? verifying,
    TResult Function()? verified,
    TResult Function()? unregistered,
    TResult Function(String userId)? registered,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Unverified value) unverified,
    required TResult Function(Verifying value) verifying,
    required TResult Function(Verified value) verified,
    required TResult Function(Unregistered value) unregistered,
    required TResult Function(Registered value) registered,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Unverified value)? unverified,
    TResult Function(Verifying value)? verifying,
    TResult Function(Verified value)? verified,
    TResult Function(Unregistered value)? unregistered,
    TResult Function(Registered value)? registered,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements AuthState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $AuthenticatedCopyWith<$Res> {
  factory $AuthenticatedCopyWith(
          Authenticated value, $Res Function(Authenticated) then) =
      _$AuthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenticatedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthenticatedCopyWith<$Res> {
  _$AuthenticatedCopyWithImpl(
      Authenticated _value, $Res Function(Authenticated) _then)
      : super(_value, (v) => _then(v as Authenticated));

  @override
  Authenticated get _value => super._value as Authenticated;
}

/// @nodoc

class _$Authenticated implements Authenticated {
  const _$Authenticated();

  @override
  String toString() {
    return 'AuthState.authenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Authenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() unverified,
    required TResult Function() verifying,
    required TResult Function() verified,
    required TResult Function() unregistered,
    required TResult Function(String userId) registered,
  }) {
    return authenticated();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? unverified,
    TResult Function()? verifying,
    TResult Function()? verified,
    TResult Function()? unregistered,
    TResult Function(String userId)? registered,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Unverified value) unverified,
    required TResult Function(Verifying value) verifying,
    required TResult Function(Verified value) verified,
    required TResult Function(Unregistered value) unregistered,
    required TResult Function(Registered value) registered,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Unverified value)? unverified,
    TResult Function(Verifying value)? verifying,
    TResult Function(Verified value)? verified,
    TResult Function(Unregistered value)? unregistered,
    TResult Function(Registered value)? registered,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class Authenticated implements AuthState {
  const factory Authenticated() = _$Authenticated;
}

/// @nodoc
abstract class $UnauthenticatedCopyWith<$Res> {
  factory $UnauthenticatedCopyWith(
          Unauthenticated value, $Res Function(Unauthenticated) then) =
      _$UnauthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class _$UnauthenticatedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $UnauthenticatedCopyWith<$Res> {
  _$UnauthenticatedCopyWithImpl(
      Unauthenticated _value, $Res Function(Unauthenticated) _then)
      : super(_value, (v) => _then(v as Unauthenticated));

  @override
  Unauthenticated get _value => super._value as Unauthenticated;
}

/// @nodoc

class _$Unauthenticated implements Unauthenticated {
  const _$Unauthenticated();

  @override
  String toString() {
    return 'AuthState.unauthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Unauthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() unverified,
    required TResult Function() verifying,
    required TResult Function() verified,
    required TResult Function() unregistered,
    required TResult Function(String userId) registered,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? unverified,
    TResult Function()? verifying,
    TResult Function()? verified,
    TResult Function()? unregistered,
    TResult Function(String userId)? registered,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Unverified value) unverified,
    required TResult Function(Verifying value) verifying,
    required TResult Function(Verified value) verified,
    required TResult Function(Unregistered value) unregistered,
    required TResult Function(Registered value) registered,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Unverified value)? unverified,
    TResult Function(Verifying value)? verifying,
    TResult Function(Verified value)? verified,
    TResult Function(Unregistered value)? unregistered,
    TResult Function(Registered value)? registered,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class Unauthenticated implements AuthState {
  const factory Unauthenticated() = _$Unauthenticated;
}

/// @nodoc
abstract class $UnverifiedCopyWith<$Res> {
  factory $UnverifiedCopyWith(
          Unverified value, $Res Function(Unverified) then) =
      _$UnverifiedCopyWithImpl<$Res>;
}

/// @nodoc
class _$UnverifiedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $UnverifiedCopyWith<$Res> {
  _$UnverifiedCopyWithImpl(Unverified _value, $Res Function(Unverified) _then)
      : super(_value, (v) => _then(v as Unverified));

  @override
  Unverified get _value => super._value as Unverified;
}

/// @nodoc

class _$Unverified implements Unverified {
  const _$Unverified();

  @override
  String toString() {
    return 'AuthState.unverified()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Unverified);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() unverified,
    required TResult Function() verifying,
    required TResult Function() verified,
    required TResult Function() unregistered,
    required TResult Function(String userId) registered,
  }) {
    return unverified();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? unverified,
    TResult Function()? verifying,
    TResult Function()? verified,
    TResult Function()? unregistered,
    TResult Function(String userId)? registered,
    required TResult orElse(),
  }) {
    if (unverified != null) {
      return unverified();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Unverified value) unverified,
    required TResult Function(Verifying value) verifying,
    required TResult Function(Verified value) verified,
    required TResult Function(Unregistered value) unregistered,
    required TResult Function(Registered value) registered,
  }) {
    return unverified(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Unverified value)? unverified,
    TResult Function(Verifying value)? verifying,
    TResult Function(Verified value)? verified,
    TResult Function(Unregistered value)? unregistered,
    TResult Function(Registered value)? registered,
    required TResult orElse(),
  }) {
    if (unverified != null) {
      return unverified(this);
    }
    return orElse();
  }
}

abstract class Unverified implements AuthState {
  const factory Unverified() = _$Unverified;
}

/// @nodoc
abstract class $VerifyingCopyWith<$Res> {
  factory $VerifyingCopyWith(Verifying value, $Res Function(Verifying) then) =
      _$VerifyingCopyWithImpl<$Res>;
}

/// @nodoc
class _$VerifyingCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $VerifyingCopyWith<$Res> {
  _$VerifyingCopyWithImpl(Verifying _value, $Res Function(Verifying) _then)
      : super(_value, (v) => _then(v as Verifying));

  @override
  Verifying get _value => super._value as Verifying;
}

/// @nodoc

class _$Verifying implements Verifying {
  const _$Verifying();

  @override
  String toString() {
    return 'AuthState.verifying()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Verifying);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() unverified,
    required TResult Function() verifying,
    required TResult Function() verified,
    required TResult Function() unregistered,
    required TResult Function(String userId) registered,
  }) {
    return verifying();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? unverified,
    TResult Function()? verifying,
    TResult Function()? verified,
    TResult Function()? unregistered,
    TResult Function(String userId)? registered,
    required TResult orElse(),
  }) {
    if (verifying != null) {
      return verifying();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Unverified value) unverified,
    required TResult Function(Verifying value) verifying,
    required TResult Function(Verified value) verified,
    required TResult Function(Unregistered value) unregistered,
    required TResult Function(Registered value) registered,
  }) {
    return verifying(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Unverified value)? unverified,
    TResult Function(Verifying value)? verifying,
    TResult Function(Verified value)? verified,
    TResult Function(Unregistered value)? unregistered,
    TResult Function(Registered value)? registered,
    required TResult orElse(),
  }) {
    if (verifying != null) {
      return verifying(this);
    }
    return orElse();
  }
}

abstract class Verifying implements AuthState {
  const factory Verifying() = _$Verifying;
}

/// @nodoc
abstract class $VerifiedCopyWith<$Res> {
  factory $VerifiedCopyWith(Verified value, $Res Function(Verified) then) =
      _$VerifiedCopyWithImpl<$Res>;
}

/// @nodoc
class _$VerifiedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $VerifiedCopyWith<$Res> {
  _$VerifiedCopyWithImpl(Verified _value, $Res Function(Verified) _then)
      : super(_value, (v) => _then(v as Verified));

  @override
  Verified get _value => super._value as Verified;
}

/// @nodoc

class _$Verified implements Verified {
  const _$Verified();

  @override
  String toString() {
    return 'AuthState.verified()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Verified);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() unverified,
    required TResult Function() verifying,
    required TResult Function() verified,
    required TResult Function() unregistered,
    required TResult Function(String userId) registered,
  }) {
    return verified();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? unverified,
    TResult Function()? verifying,
    TResult Function()? verified,
    TResult Function()? unregistered,
    TResult Function(String userId)? registered,
    required TResult orElse(),
  }) {
    if (verified != null) {
      return verified();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Unverified value) unverified,
    required TResult Function(Verifying value) verifying,
    required TResult Function(Verified value) verified,
    required TResult Function(Unregistered value) unregistered,
    required TResult Function(Registered value) registered,
  }) {
    return verified(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Unverified value)? unverified,
    TResult Function(Verifying value)? verifying,
    TResult Function(Verified value)? verified,
    TResult Function(Unregistered value)? unregistered,
    TResult Function(Registered value)? registered,
    required TResult orElse(),
  }) {
    if (verified != null) {
      return verified(this);
    }
    return orElse();
  }
}

abstract class Verified implements AuthState {
  const factory Verified() = _$Verified;
}

/// @nodoc
abstract class $UnregisteredCopyWith<$Res> {
  factory $UnregisteredCopyWith(
          Unregistered value, $Res Function(Unregistered) then) =
      _$UnregisteredCopyWithImpl<$Res>;
}

/// @nodoc
class _$UnregisteredCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $UnregisteredCopyWith<$Res> {
  _$UnregisteredCopyWithImpl(
      Unregistered _value, $Res Function(Unregistered) _then)
      : super(_value, (v) => _then(v as Unregistered));

  @override
  Unregistered get _value => super._value as Unregistered;
}

/// @nodoc

class _$Unregistered implements Unregistered {
  const _$Unregistered();

  @override
  String toString() {
    return 'AuthState.unregistered()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Unregistered);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() unverified,
    required TResult Function() verifying,
    required TResult Function() verified,
    required TResult Function() unregistered,
    required TResult Function(String userId) registered,
  }) {
    return unregistered();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? unverified,
    TResult Function()? verifying,
    TResult Function()? verified,
    TResult Function()? unregistered,
    TResult Function(String userId)? registered,
    required TResult orElse(),
  }) {
    if (unregistered != null) {
      return unregistered();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Unverified value) unverified,
    required TResult Function(Verifying value) verifying,
    required TResult Function(Verified value) verified,
    required TResult Function(Unregistered value) unregistered,
    required TResult Function(Registered value) registered,
  }) {
    return unregistered(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Unverified value)? unverified,
    TResult Function(Verifying value)? verifying,
    TResult Function(Verified value)? verified,
    TResult Function(Unregistered value)? unregistered,
    TResult Function(Registered value)? registered,
    required TResult orElse(),
  }) {
    if (unregistered != null) {
      return unregistered(this);
    }
    return orElse();
  }
}

abstract class Unregistered implements AuthState {
  const factory Unregistered() = _$Unregistered;
}

/// @nodoc
abstract class $RegisteredCopyWith<$Res> {
  factory $RegisteredCopyWith(
          Registered value, $Res Function(Registered) then) =
      _$RegisteredCopyWithImpl<$Res>;
  $Res call({String userId});
}

/// @nodoc
class _$RegisteredCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $RegisteredCopyWith<$Res> {
  _$RegisteredCopyWithImpl(Registered _value, $Res Function(Registered) _then)
      : super(_value, (v) => _then(v as Registered));

  @override
  Registered get _value => super._value as Registered;

  @override
  $Res call({
    Object? userId = freezed,
  }) {
    return _then(Registered(
      userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Registered implements Registered {
  const _$Registered(this.userId);

  @override
  final String userId;

  @override
  String toString() {
    return 'AuthState.registered(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Registered &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userId);

  @JsonKey(ignore: true)
  @override
  $RegisteredCopyWith<Registered> get copyWith =>
      _$RegisteredCopyWithImpl<Registered>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() unverified,
    required TResult Function() verifying,
    required TResult Function() verified,
    required TResult Function() unregistered,
    required TResult Function(String userId) registered,
  }) {
    return registered(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? unverified,
    TResult Function()? verifying,
    TResult Function()? verified,
    TResult Function()? unregistered,
    TResult Function(String userId)? registered,
    required TResult orElse(),
  }) {
    if (registered != null) {
      return registered(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Unverified value) unverified,
    required TResult Function(Verifying value) verifying,
    required TResult Function(Verified value) verified,
    required TResult Function(Unregistered value) unregistered,
    required TResult Function(Registered value) registered,
  }) {
    return registered(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Unverified value)? unverified,
    TResult Function(Verifying value)? verifying,
    TResult Function(Verified value)? verified,
    TResult Function(Unregistered value)? unregistered,
    TResult Function(Registered value)? registered,
    required TResult orElse(),
  }) {
    if (registered != null) {
      return registered(this);
    }
    return orElse();
  }
}

abstract class Registered implements AuthState {
  const factory Registered(String userId) = _$Registered;

  String get userId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisteredCopyWith<Registered> get copyWith =>
      throw _privateConstructorUsedError;
}
