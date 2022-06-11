// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ValueFailureTearOff {
  const _$ValueFailureTearOff();

  InvalidEmail<T> invalidEmail<T>({required T failedValue}) {
    return InvalidEmail<T>(
      failedValue: failedValue,
    );
  }

  ShortPassword<T> shortPassword<T>({required T failedValue}) {
    return ShortPassword<T>(
      failedValue: failedValue,
    );
  }

  InvalidUsernameFormat<T> invalidUsernameFormat<T>({required T failedValue}) {
    return InvalidUsernameFormat<T>(
      failedValue: failedValue,
    );
  }

  UsernameTaken<T> usernameTaken<T>({required T failedValue}) {
    return UsernameTaken<T>(
      failedValue: failedValue,
    );
  }

  EmptyString<T> emptyString<T>({required T failedValue}) {
    return EmptyString<T>(
      failedValue: failedValue,
    );
  }

  ExceedingLength<T> exceedingLength<T>(
      {required T failedValue, required int max}) {
    return ExceedingLength<T>(
      failedValue: failedValue,
      max: max,
    );
  }
}

/// @nodoc
const $ValueFailure = _$ValueFailureTearOff();

/// @nodoc
mixin _$ValueFailure<T> {
  T get failedValue => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) invalidUsernameFormat,
    required TResult Function(T failedValue) usernameTaken,
    required TResult Function(T failedValue) emptyString,
    required TResult Function(T failedValue, int max) exceedingLength,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? invalidUsernameFormat,
    TResult Function(T failedValue)? usernameTaken,
    TResult Function(T failedValue)? emptyString,
    TResult Function(T failedValue, int max)? exceedingLength,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(InvalidUsernameFormat<T> value)
        invalidUsernameFormat,
    required TResult Function(UsernameTaken<T> value) usernameTaken,
    required TResult Function(EmptyString<T> value) emptyString,
    required TResult Function(ExceedingLength<T> value) exceedingLength,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(InvalidUsernameFormat<T> value)? invalidUsernameFormat,
    TResult Function(UsernameTaken<T> value)? usernameTaken,
    TResult Function(EmptyString<T> value)? emptyString,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ValueFailureCopyWith<T, ValueFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_value.copyWith(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc
abstract class $InvalidEmailCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidEmailCopyWith(
          InvalidEmail<T> value, $Res Function(InvalidEmail<T>) then) =
      _$InvalidEmailCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$InvalidEmailCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidEmailCopyWith<T, $Res> {
  _$InvalidEmailCopyWithImpl(
      InvalidEmail<T> _value, $Res Function(InvalidEmail<T>) _then)
      : super(_value, (v) => _then(v as InvalidEmail<T>));

  @override
  InvalidEmail<T> get _value => super._value as InvalidEmail<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(InvalidEmail<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$InvalidEmail<T> implements InvalidEmail<T> {
  const _$InvalidEmail({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidEmail(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidEmail<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith =>
      _$InvalidEmailCopyWithImpl<T, InvalidEmail<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) invalidUsernameFormat,
    required TResult Function(T failedValue) usernameTaken,
    required TResult Function(T failedValue) emptyString,
    required TResult Function(T failedValue, int max) exceedingLength,
  }) {
    return invalidEmail(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? invalidUsernameFormat,
    TResult Function(T failedValue)? usernameTaken,
    TResult Function(T failedValue)? emptyString,
    TResult Function(T failedValue, int max)? exceedingLength,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(InvalidUsernameFormat<T> value)
        invalidUsernameFormat,
    required TResult Function(UsernameTaken<T> value) usernameTaken,
    required TResult Function(EmptyString<T> value) emptyString,
    required TResult Function(ExceedingLength<T> value) exceedingLength,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(InvalidUsernameFormat<T> value)? invalidUsernameFormat,
    TResult Function(UsernameTaken<T> value)? usernameTaken,
    TResult Function(EmptyString<T> value)? emptyString,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail<T> implements ValueFailure<T> {
  const factory InvalidEmail({required T failedValue}) = _$InvalidEmail<T>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShortPasswordCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $ShortPasswordCopyWith(
          ShortPassword<T> value, $Res Function(ShortPassword<T>) then) =
      _$ShortPasswordCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$ShortPasswordCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ShortPasswordCopyWith<T, $Res> {
  _$ShortPasswordCopyWithImpl(
      ShortPassword<T> _value, $Res Function(ShortPassword<T>) _then)
      : super(_value, (v) => _then(v as ShortPassword<T>));

  @override
  ShortPassword<T> get _value => super._value as ShortPassword<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(ShortPassword<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$ShortPassword<T> implements ShortPassword<T> {
  const _$ShortPassword({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.shortPassword(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ShortPassword<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $ShortPasswordCopyWith<T, ShortPassword<T>> get copyWith =>
      _$ShortPasswordCopyWithImpl<T, ShortPassword<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) invalidUsernameFormat,
    required TResult Function(T failedValue) usernameTaken,
    required TResult Function(T failedValue) emptyString,
    required TResult Function(T failedValue, int max) exceedingLength,
  }) {
    return shortPassword(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? invalidUsernameFormat,
    TResult Function(T failedValue)? usernameTaken,
    TResult Function(T failedValue)? emptyString,
    TResult Function(T failedValue, int max)? exceedingLength,
    required TResult orElse(),
  }) {
    if (shortPassword != null) {
      return shortPassword(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(InvalidUsernameFormat<T> value)
        invalidUsernameFormat,
    required TResult Function(UsernameTaken<T> value) usernameTaken,
    required TResult Function(EmptyString<T> value) emptyString,
    required TResult Function(ExceedingLength<T> value) exceedingLength,
  }) {
    return shortPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(InvalidUsernameFormat<T> value)? invalidUsernameFormat,
    TResult Function(UsernameTaken<T> value)? usernameTaken,
    TResult Function(EmptyString<T> value)? emptyString,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    required TResult orElse(),
  }) {
    if (shortPassword != null) {
      return shortPassword(this);
    }
    return orElse();
  }
}

abstract class ShortPassword<T> implements ValueFailure<T> {
  const factory ShortPassword({required T failedValue}) = _$ShortPassword<T>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ShortPasswordCopyWith<T, ShortPassword<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvalidUsernameFormatCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidUsernameFormatCopyWith(InvalidUsernameFormat<T> value,
          $Res Function(InvalidUsernameFormat<T>) then) =
      _$InvalidUsernameFormatCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$InvalidUsernameFormatCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidUsernameFormatCopyWith<T, $Res> {
  _$InvalidUsernameFormatCopyWithImpl(InvalidUsernameFormat<T> _value,
      $Res Function(InvalidUsernameFormat<T>) _then)
      : super(_value, (v) => _then(v as InvalidUsernameFormat<T>));

  @override
  InvalidUsernameFormat<T> get _value =>
      super._value as InvalidUsernameFormat<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(InvalidUsernameFormat<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$InvalidUsernameFormat<T> implements InvalidUsernameFormat<T> {
  const _$InvalidUsernameFormat({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidUsernameFormat(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidUsernameFormat<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $InvalidUsernameFormatCopyWith<T, InvalidUsernameFormat<T>> get copyWith =>
      _$InvalidUsernameFormatCopyWithImpl<T, InvalidUsernameFormat<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) invalidUsernameFormat,
    required TResult Function(T failedValue) usernameTaken,
    required TResult Function(T failedValue) emptyString,
    required TResult Function(T failedValue, int max) exceedingLength,
  }) {
    return invalidUsernameFormat(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? invalidUsernameFormat,
    TResult Function(T failedValue)? usernameTaken,
    TResult Function(T failedValue)? emptyString,
    TResult Function(T failedValue, int max)? exceedingLength,
    required TResult orElse(),
  }) {
    if (invalidUsernameFormat != null) {
      return invalidUsernameFormat(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(InvalidUsernameFormat<T> value)
        invalidUsernameFormat,
    required TResult Function(UsernameTaken<T> value) usernameTaken,
    required TResult Function(EmptyString<T> value) emptyString,
    required TResult Function(ExceedingLength<T> value) exceedingLength,
  }) {
    return invalidUsernameFormat(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(InvalidUsernameFormat<T> value)? invalidUsernameFormat,
    TResult Function(UsernameTaken<T> value)? usernameTaken,
    TResult Function(EmptyString<T> value)? emptyString,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    required TResult orElse(),
  }) {
    if (invalidUsernameFormat != null) {
      return invalidUsernameFormat(this);
    }
    return orElse();
  }
}

abstract class InvalidUsernameFormat<T> implements ValueFailure<T> {
  const factory InvalidUsernameFormat({required T failedValue}) =
      _$InvalidUsernameFormat<T>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $InvalidUsernameFormatCopyWith<T, InvalidUsernameFormat<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsernameTakenCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $UsernameTakenCopyWith(
          UsernameTaken<T> value, $Res Function(UsernameTaken<T>) then) =
      _$UsernameTakenCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$UsernameTakenCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $UsernameTakenCopyWith<T, $Res> {
  _$UsernameTakenCopyWithImpl(
      UsernameTaken<T> _value, $Res Function(UsernameTaken<T>) _then)
      : super(_value, (v) => _then(v as UsernameTaken<T>));

  @override
  UsernameTaken<T> get _value => super._value as UsernameTaken<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(UsernameTaken<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$UsernameTaken<T> implements UsernameTaken<T> {
  const _$UsernameTaken({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.usernameTaken(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UsernameTaken<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $UsernameTakenCopyWith<T, UsernameTaken<T>> get copyWith =>
      _$UsernameTakenCopyWithImpl<T, UsernameTaken<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) invalidUsernameFormat,
    required TResult Function(T failedValue) usernameTaken,
    required TResult Function(T failedValue) emptyString,
    required TResult Function(T failedValue, int max) exceedingLength,
  }) {
    return usernameTaken(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? invalidUsernameFormat,
    TResult Function(T failedValue)? usernameTaken,
    TResult Function(T failedValue)? emptyString,
    TResult Function(T failedValue, int max)? exceedingLength,
    required TResult orElse(),
  }) {
    if (usernameTaken != null) {
      return usernameTaken(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(InvalidUsernameFormat<T> value)
        invalidUsernameFormat,
    required TResult Function(UsernameTaken<T> value) usernameTaken,
    required TResult Function(EmptyString<T> value) emptyString,
    required TResult Function(ExceedingLength<T> value) exceedingLength,
  }) {
    return usernameTaken(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(InvalidUsernameFormat<T> value)? invalidUsernameFormat,
    TResult Function(UsernameTaken<T> value)? usernameTaken,
    TResult Function(EmptyString<T> value)? emptyString,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    required TResult orElse(),
  }) {
    if (usernameTaken != null) {
      return usernameTaken(this);
    }
    return orElse();
  }
}

abstract class UsernameTaken<T> implements ValueFailure<T> {
  const factory UsernameTaken({required T failedValue}) = _$UsernameTaken<T>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $UsernameTakenCopyWith<T, UsernameTaken<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmptyStringCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $EmptyStringCopyWith(
          EmptyString<T> value, $Res Function(EmptyString<T>) then) =
      _$EmptyStringCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$EmptyStringCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $EmptyStringCopyWith<T, $Res> {
  _$EmptyStringCopyWithImpl(
      EmptyString<T> _value, $Res Function(EmptyString<T>) _then)
      : super(_value, (v) => _then(v as EmptyString<T>));

  @override
  EmptyString<T> get _value => super._value as EmptyString<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(EmptyString<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$EmptyString<T> implements EmptyString<T> {
  const _$EmptyString({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.emptyString(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmptyString<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $EmptyStringCopyWith<T, EmptyString<T>> get copyWith =>
      _$EmptyStringCopyWithImpl<T, EmptyString<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) invalidUsernameFormat,
    required TResult Function(T failedValue) usernameTaken,
    required TResult Function(T failedValue) emptyString,
    required TResult Function(T failedValue, int max) exceedingLength,
  }) {
    return emptyString(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? invalidUsernameFormat,
    TResult Function(T failedValue)? usernameTaken,
    TResult Function(T failedValue)? emptyString,
    TResult Function(T failedValue, int max)? exceedingLength,
    required TResult orElse(),
  }) {
    if (emptyString != null) {
      return emptyString(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(InvalidUsernameFormat<T> value)
        invalidUsernameFormat,
    required TResult Function(UsernameTaken<T> value) usernameTaken,
    required TResult Function(EmptyString<T> value) emptyString,
    required TResult Function(ExceedingLength<T> value) exceedingLength,
  }) {
    return emptyString(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(InvalidUsernameFormat<T> value)? invalidUsernameFormat,
    TResult Function(UsernameTaken<T> value)? usernameTaken,
    TResult Function(EmptyString<T> value)? emptyString,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    required TResult orElse(),
  }) {
    if (emptyString != null) {
      return emptyString(this);
    }
    return orElse();
  }
}

abstract class EmptyString<T> implements ValueFailure<T> {
  const factory EmptyString({required T failedValue}) = _$EmptyString<T>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $EmptyStringCopyWith<T, EmptyString<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExceedingLengthCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $ExceedingLengthCopyWith(
          ExceedingLength<T> value, $Res Function(ExceedingLength<T>) then) =
      _$ExceedingLengthCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue, int max});
}

/// @nodoc
class _$ExceedingLengthCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ExceedingLengthCopyWith<T, $Res> {
  _$ExceedingLengthCopyWithImpl(
      ExceedingLength<T> _value, $Res Function(ExceedingLength<T>) _then)
      : super(_value, (v) => _then(v as ExceedingLength<T>));

  @override
  ExceedingLength<T> get _value => super._value as ExceedingLength<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
    Object? max = freezed,
  }) {
    return _then(ExceedingLength<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
      max: max == freezed
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ExceedingLength<T> implements ExceedingLength<T> {
  const _$ExceedingLength({required this.failedValue, required this.max});

  @override
  final T failedValue;
  @override
  final int max;

  @override
  String toString() {
    return 'ValueFailure<$T>.exceedingLength(failedValue: $failedValue, max: $max)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExceedingLength<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)) &&
            (identical(other.max, max) ||
                const DeepCollectionEquality().equals(other.max, max)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failedValue) ^
      const DeepCollectionEquality().hash(max);

  @JsonKey(ignore: true)
  @override
  $ExceedingLengthCopyWith<T, ExceedingLength<T>> get copyWith =>
      _$ExceedingLengthCopyWithImpl<T, ExceedingLength<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) invalidUsernameFormat,
    required TResult Function(T failedValue) usernameTaken,
    required TResult Function(T failedValue) emptyString,
    required TResult Function(T failedValue, int max) exceedingLength,
  }) {
    return exceedingLength(failedValue, max);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? invalidUsernameFormat,
    TResult Function(T failedValue)? usernameTaken,
    TResult Function(T failedValue)? emptyString,
    TResult Function(T failedValue, int max)? exceedingLength,
    required TResult orElse(),
  }) {
    if (exceedingLength != null) {
      return exceedingLength(failedValue, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(InvalidUsernameFormat<T> value)
        invalidUsernameFormat,
    required TResult Function(UsernameTaken<T> value) usernameTaken,
    required TResult Function(EmptyString<T> value) emptyString,
    required TResult Function(ExceedingLength<T> value) exceedingLength,
  }) {
    return exceedingLength(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(InvalidUsernameFormat<T> value)? invalidUsernameFormat,
    TResult Function(UsernameTaken<T> value)? usernameTaken,
    TResult Function(EmptyString<T> value)? emptyString,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    required TResult orElse(),
  }) {
    if (exceedingLength != null) {
      return exceedingLength(this);
    }
    return orElse();
  }
}

abstract class ExceedingLength<T> implements ValueFailure<T> {
  const factory ExceedingLength({required T failedValue, required int max}) =
      _$ExceedingLength<T>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  int get max => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ExceedingLengthCopyWith<T, ExceedingLength<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
