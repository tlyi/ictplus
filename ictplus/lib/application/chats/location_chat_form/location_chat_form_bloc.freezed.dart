// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'location_chat_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LocationChatFormEventTearOff {
  const _$LocationChatFormEventTearOff();

  _TitleChanged titleChanged(String titleStr) {
    return _TitleChanged(
      titleStr,
    );
  }

  _LocationSet locationSet() {
    return const _LocationSet();
  }

  _MessageChanged messageChanged(String messageStr) {
    return _MessageChanged(
      messageStr,
    );
  }

  _Createdhat createdChat() {
    return const _Createdhat();
  }
}

/// @nodoc
const $LocationChatFormEvent = _$LocationChatFormEventTearOff();

/// @nodoc
mixin _$LocationChatFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String titleStr) titleChanged,
    required TResult Function() locationSet,
    required TResult Function(String messageStr) messageChanged,
    required TResult Function() createdChat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String titleStr)? titleChanged,
    TResult Function()? locationSet,
    TResult Function(String messageStr)? messageChanged,
    TResult Function()? createdChat,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_LocationSet value) locationSet,
    required TResult Function(_MessageChanged value) messageChanged,
    required TResult Function(_Createdhat value) createdChat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_LocationSet value)? locationSet,
    TResult Function(_MessageChanged value)? messageChanged,
    TResult Function(_Createdhat value)? createdChat,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationChatFormEventCopyWith<$Res> {
  factory $LocationChatFormEventCopyWith(LocationChatFormEvent value,
          $Res Function(LocationChatFormEvent) then) =
      _$LocationChatFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LocationChatFormEventCopyWithImpl<$Res>
    implements $LocationChatFormEventCopyWith<$Res> {
  _$LocationChatFormEventCopyWithImpl(this._value, this._then);

  final LocationChatFormEvent _value;
  // ignore: unused_field
  final $Res Function(LocationChatFormEvent) _then;
}

/// @nodoc
abstract class _$TitleChangedCopyWith<$Res> {
  factory _$TitleChangedCopyWith(
          _TitleChanged value, $Res Function(_TitleChanged) then) =
      __$TitleChangedCopyWithImpl<$Res>;
  $Res call({String titleStr});
}

/// @nodoc
class __$TitleChangedCopyWithImpl<$Res>
    extends _$LocationChatFormEventCopyWithImpl<$Res>
    implements _$TitleChangedCopyWith<$Res> {
  __$TitleChangedCopyWithImpl(
      _TitleChanged _value, $Res Function(_TitleChanged) _then)
      : super(_value, (v) => _then(v as _TitleChanged));

  @override
  _TitleChanged get _value => super._value as _TitleChanged;

  @override
  $Res call({
    Object? titleStr = freezed,
  }) {
    return _then(_TitleChanged(
      titleStr == freezed
          ? _value.titleStr
          : titleStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TitleChanged implements _TitleChanged {
  const _$_TitleChanged(this.titleStr);

  @override
  final String titleStr;

  @override
  String toString() {
    return 'LocationChatFormEvent.titleChanged(titleStr: $titleStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TitleChanged &&
            (identical(other.titleStr, titleStr) ||
                const DeepCollectionEquality()
                    .equals(other.titleStr, titleStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(titleStr);

  @JsonKey(ignore: true)
  @override
  _$TitleChangedCopyWith<_TitleChanged> get copyWith =>
      __$TitleChangedCopyWithImpl<_TitleChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String titleStr) titleChanged,
    required TResult Function() locationSet,
    required TResult Function(String messageStr) messageChanged,
    required TResult Function() createdChat,
  }) {
    return titleChanged(titleStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String titleStr)? titleChanged,
    TResult Function()? locationSet,
    TResult Function(String messageStr)? messageChanged,
    TResult Function()? createdChat,
    required TResult orElse(),
  }) {
    if (titleChanged != null) {
      return titleChanged(titleStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_LocationSet value) locationSet,
    required TResult Function(_MessageChanged value) messageChanged,
    required TResult Function(_Createdhat value) createdChat,
  }) {
    return titleChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_LocationSet value)? locationSet,
    TResult Function(_MessageChanged value)? messageChanged,
    TResult Function(_Createdhat value)? createdChat,
    required TResult orElse(),
  }) {
    if (titleChanged != null) {
      return titleChanged(this);
    }
    return orElse();
  }
}

abstract class _TitleChanged implements LocationChatFormEvent {
  const factory _TitleChanged(String titleStr) = _$_TitleChanged;

  String get titleStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$TitleChangedCopyWith<_TitleChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LocationSetCopyWith<$Res> {
  factory _$LocationSetCopyWith(
          _LocationSet value, $Res Function(_LocationSet) then) =
      __$LocationSetCopyWithImpl<$Res>;
}

/// @nodoc
class __$LocationSetCopyWithImpl<$Res>
    extends _$LocationChatFormEventCopyWithImpl<$Res>
    implements _$LocationSetCopyWith<$Res> {
  __$LocationSetCopyWithImpl(
      _LocationSet _value, $Res Function(_LocationSet) _then)
      : super(_value, (v) => _then(v as _LocationSet));

  @override
  _LocationSet get _value => super._value as _LocationSet;
}

/// @nodoc

class _$_LocationSet implements _LocationSet {
  const _$_LocationSet();

  @override
  String toString() {
    return 'LocationChatFormEvent.locationSet()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LocationSet);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String titleStr) titleChanged,
    required TResult Function() locationSet,
    required TResult Function(String messageStr) messageChanged,
    required TResult Function() createdChat,
  }) {
    return locationSet();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String titleStr)? titleChanged,
    TResult Function()? locationSet,
    TResult Function(String messageStr)? messageChanged,
    TResult Function()? createdChat,
    required TResult orElse(),
  }) {
    if (locationSet != null) {
      return locationSet();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_LocationSet value) locationSet,
    required TResult Function(_MessageChanged value) messageChanged,
    required TResult Function(_Createdhat value) createdChat,
  }) {
    return locationSet(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_LocationSet value)? locationSet,
    TResult Function(_MessageChanged value)? messageChanged,
    TResult Function(_Createdhat value)? createdChat,
    required TResult orElse(),
  }) {
    if (locationSet != null) {
      return locationSet(this);
    }
    return orElse();
  }
}

abstract class _LocationSet implements LocationChatFormEvent {
  const factory _LocationSet() = _$_LocationSet;
}

/// @nodoc
abstract class _$MessageChangedCopyWith<$Res> {
  factory _$MessageChangedCopyWith(
          _MessageChanged value, $Res Function(_MessageChanged) then) =
      __$MessageChangedCopyWithImpl<$Res>;
  $Res call({String messageStr});
}

/// @nodoc
class __$MessageChangedCopyWithImpl<$Res>
    extends _$LocationChatFormEventCopyWithImpl<$Res>
    implements _$MessageChangedCopyWith<$Res> {
  __$MessageChangedCopyWithImpl(
      _MessageChanged _value, $Res Function(_MessageChanged) _then)
      : super(_value, (v) => _then(v as _MessageChanged));

  @override
  _MessageChanged get _value => super._value as _MessageChanged;

  @override
  $Res call({
    Object? messageStr = freezed,
  }) {
    return _then(_MessageChanged(
      messageStr == freezed
          ? _value.messageStr
          : messageStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_MessageChanged implements _MessageChanged {
  const _$_MessageChanged(this.messageStr);

  @override
  final String messageStr;

  @override
  String toString() {
    return 'LocationChatFormEvent.messageChanged(messageStr: $messageStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MessageChanged &&
            (identical(other.messageStr, messageStr) ||
                const DeepCollectionEquality()
                    .equals(other.messageStr, messageStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(messageStr);

  @JsonKey(ignore: true)
  @override
  _$MessageChangedCopyWith<_MessageChanged> get copyWith =>
      __$MessageChangedCopyWithImpl<_MessageChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String titleStr) titleChanged,
    required TResult Function() locationSet,
    required TResult Function(String messageStr) messageChanged,
    required TResult Function() createdChat,
  }) {
    return messageChanged(messageStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String titleStr)? titleChanged,
    TResult Function()? locationSet,
    TResult Function(String messageStr)? messageChanged,
    TResult Function()? createdChat,
    required TResult orElse(),
  }) {
    if (messageChanged != null) {
      return messageChanged(messageStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_LocationSet value) locationSet,
    required TResult Function(_MessageChanged value) messageChanged,
    required TResult Function(_Createdhat value) createdChat,
  }) {
    return messageChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_LocationSet value)? locationSet,
    TResult Function(_MessageChanged value)? messageChanged,
    TResult Function(_Createdhat value)? createdChat,
    required TResult orElse(),
  }) {
    if (messageChanged != null) {
      return messageChanged(this);
    }
    return orElse();
  }
}

abstract class _MessageChanged implements LocationChatFormEvent {
  const factory _MessageChanged(String messageStr) = _$_MessageChanged;

  String get messageStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$MessageChangedCopyWith<_MessageChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CreatedhatCopyWith<$Res> {
  factory _$CreatedhatCopyWith(
          _Createdhat value, $Res Function(_Createdhat) then) =
      __$CreatedhatCopyWithImpl<$Res>;
}

/// @nodoc
class __$CreatedhatCopyWithImpl<$Res>
    extends _$LocationChatFormEventCopyWithImpl<$Res>
    implements _$CreatedhatCopyWith<$Res> {
  __$CreatedhatCopyWithImpl(
      _Createdhat _value, $Res Function(_Createdhat) _then)
      : super(_value, (v) => _then(v as _Createdhat));

  @override
  _Createdhat get _value => super._value as _Createdhat;
}

/// @nodoc

class _$_Createdhat implements _Createdhat {
  const _$_Createdhat();

  @override
  String toString() {
    return 'LocationChatFormEvent.createdChat()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Createdhat);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String titleStr) titleChanged,
    required TResult Function() locationSet,
    required TResult Function(String messageStr) messageChanged,
    required TResult Function() createdChat,
  }) {
    return createdChat();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String titleStr)? titleChanged,
    TResult Function()? locationSet,
    TResult Function(String messageStr)? messageChanged,
    TResult Function()? createdChat,
    required TResult orElse(),
  }) {
    if (createdChat != null) {
      return createdChat();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_LocationSet value) locationSet,
    required TResult Function(_MessageChanged value) messageChanged,
    required TResult Function(_Createdhat value) createdChat,
  }) {
    return createdChat(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_LocationSet value)? locationSet,
    TResult Function(_MessageChanged value)? messageChanged,
    TResult Function(_Createdhat value)? createdChat,
    required TResult orElse(),
  }) {
    if (createdChat != null) {
      return createdChat(this);
    }
    return orElse();
  }
}

abstract class _Createdhat implements LocationChatFormEvent {
  const factory _Createdhat() = _$_Createdhat;
}

/// @nodoc
class _$LocationChatFormStateTearOff {
  const _$LocationChatFormStateTearOff();

  _LocationChatFormState call(
      {required LocationChat locationChat,
      required IntroMessage introMessage,
      required bool isSaving,
      required bool showErrorMessages,
      required bool isGettingLocation,
      required bool locationSet,
      required Either<LocationFailure, Position> failureOrCurrentLocation,
      required Option<Either<DataFailure, Unit>>
          createFailureOrSuccessOption}) {
    return _LocationChatFormState(
      locationChat: locationChat,
      introMessage: introMessage,
      isSaving: isSaving,
      showErrorMessages: showErrorMessages,
      isGettingLocation: isGettingLocation,
      locationSet: locationSet,
      failureOrCurrentLocation: failureOrCurrentLocation,
      createFailureOrSuccessOption: createFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $LocationChatFormState = _$LocationChatFormStateTearOff();

/// @nodoc
mixin _$LocationChatFormState {
  LocationChat get locationChat => throw _privateConstructorUsedError;
  IntroMessage get introMessage => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isGettingLocation => throw _privateConstructorUsedError;
  bool get locationSet => throw _privateConstructorUsedError;
  Either<LocationFailure, Position> get failureOrCurrentLocation =>
      throw _privateConstructorUsedError;
  Option<Either<DataFailure, Unit>> get createFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocationChatFormStateCopyWith<LocationChatFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationChatFormStateCopyWith<$Res> {
  factory $LocationChatFormStateCopyWith(LocationChatFormState value,
          $Res Function(LocationChatFormState) then) =
      _$LocationChatFormStateCopyWithImpl<$Res>;
  $Res call(
      {LocationChat locationChat,
      IntroMessage introMessage,
      bool isSaving,
      bool showErrorMessages,
      bool isGettingLocation,
      bool locationSet,
      Either<LocationFailure, Position> failureOrCurrentLocation,
      Option<Either<DataFailure, Unit>> createFailureOrSuccessOption});

  $LocationChatCopyWith<$Res> get locationChat;
}

/// @nodoc
class _$LocationChatFormStateCopyWithImpl<$Res>
    implements $LocationChatFormStateCopyWith<$Res> {
  _$LocationChatFormStateCopyWithImpl(this._value, this._then);

  final LocationChatFormState _value;
  // ignore: unused_field
  final $Res Function(LocationChatFormState) _then;

  @override
  $Res call({
    Object? locationChat = freezed,
    Object? introMessage = freezed,
    Object? isSaving = freezed,
    Object? showErrorMessages = freezed,
    Object? isGettingLocation = freezed,
    Object? locationSet = freezed,
    Object? failureOrCurrentLocation = freezed,
    Object? createFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      locationChat: locationChat == freezed
          ? _value.locationChat
          : locationChat // ignore: cast_nullable_to_non_nullable
              as LocationChat,
      introMessage: introMessage == freezed
          ? _value.introMessage
          : introMessage // ignore: cast_nullable_to_non_nullable
              as IntroMessage,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isGettingLocation: isGettingLocation == freezed
          ? _value.isGettingLocation
          : isGettingLocation // ignore: cast_nullable_to_non_nullable
              as bool,
      locationSet: locationSet == freezed
          ? _value.locationSet
          : locationSet // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrCurrentLocation: failureOrCurrentLocation == freezed
          ? _value.failureOrCurrentLocation
          : failureOrCurrentLocation // ignore: cast_nullable_to_non_nullable
              as Either<LocationFailure, Position>,
      createFailureOrSuccessOption: createFailureOrSuccessOption == freezed
          ? _value.createFailureOrSuccessOption
          : createFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<DataFailure, Unit>>,
    ));
  }

  @override
  $LocationChatCopyWith<$Res> get locationChat {
    return $LocationChatCopyWith<$Res>(_value.locationChat, (value) {
      return _then(_value.copyWith(locationChat: value));
    });
  }
}

/// @nodoc
abstract class _$LocationChatFormStateCopyWith<$Res>
    implements $LocationChatFormStateCopyWith<$Res> {
  factory _$LocationChatFormStateCopyWith(_LocationChatFormState value,
          $Res Function(_LocationChatFormState) then) =
      __$LocationChatFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {LocationChat locationChat,
      IntroMessage introMessage,
      bool isSaving,
      bool showErrorMessages,
      bool isGettingLocation,
      bool locationSet,
      Either<LocationFailure, Position> failureOrCurrentLocation,
      Option<Either<DataFailure, Unit>> createFailureOrSuccessOption});

  @override
  $LocationChatCopyWith<$Res> get locationChat;
}

/// @nodoc
class __$LocationChatFormStateCopyWithImpl<$Res>
    extends _$LocationChatFormStateCopyWithImpl<$Res>
    implements _$LocationChatFormStateCopyWith<$Res> {
  __$LocationChatFormStateCopyWithImpl(_LocationChatFormState _value,
      $Res Function(_LocationChatFormState) _then)
      : super(_value, (v) => _then(v as _LocationChatFormState));

  @override
  _LocationChatFormState get _value => super._value as _LocationChatFormState;

  @override
  $Res call({
    Object? locationChat = freezed,
    Object? introMessage = freezed,
    Object? isSaving = freezed,
    Object? showErrorMessages = freezed,
    Object? isGettingLocation = freezed,
    Object? locationSet = freezed,
    Object? failureOrCurrentLocation = freezed,
    Object? createFailureOrSuccessOption = freezed,
  }) {
    return _then(_LocationChatFormState(
      locationChat: locationChat == freezed
          ? _value.locationChat
          : locationChat // ignore: cast_nullable_to_non_nullable
              as LocationChat,
      introMessage: introMessage == freezed
          ? _value.introMessage
          : introMessage // ignore: cast_nullable_to_non_nullable
              as IntroMessage,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isGettingLocation: isGettingLocation == freezed
          ? _value.isGettingLocation
          : isGettingLocation // ignore: cast_nullable_to_non_nullable
              as bool,
      locationSet: locationSet == freezed
          ? _value.locationSet
          : locationSet // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrCurrentLocation: failureOrCurrentLocation == freezed
          ? _value.failureOrCurrentLocation
          : failureOrCurrentLocation // ignore: cast_nullable_to_non_nullable
              as Either<LocationFailure, Position>,
      createFailureOrSuccessOption: createFailureOrSuccessOption == freezed
          ? _value.createFailureOrSuccessOption
          : createFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<DataFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_LocationChatFormState implements _LocationChatFormState {
  const _$_LocationChatFormState(
      {required this.locationChat,
      required this.introMessage,
      required this.isSaving,
      required this.showErrorMessages,
      required this.isGettingLocation,
      required this.locationSet,
      required this.failureOrCurrentLocation,
      required this.createFailureOrSuccessOption});

  @override
  final LocationChat locationChat;
  @override
  final IntroMessage introMessage;
  @override
  final bool isSaving;
  @override
  final bool showErrorMessages;
  @override
  final bool isGettingLocation;
  @override
  final bool locationSet;
  @override
  final Either<LocationFailure, Position> failureOrCurrentLocation;
  @override
  final Option<Either<DataFailure, Unit>> createFailureOrSuccessOption;

  @override
  String toString() {
    return 'LocationChatFormState(locationChat: $locationChat, introMessage: $introMessage, isSaving: $isSaving, showErrorMessages: $showErrorMessages, isGettingLocation: $isGettingLocation, locationSet: $locationSet, failureOrCurrentLocation: $failureOrCurrentLocation, createFailureOrSuccessOption: $createFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LocationChatFormState &&
            (identical(other.locationChat, locationChat) ||
                const DeepCollectionEquality()
                    .equals(other.locationChat, locationChat)) &&
            (identical(other.introMessage, introMessage) ||
                const DeepCollectionEquality()
                    .equals(other.introMessage, introMessage)) &&
            (identical(other.isSaving, isSaving) ||
                const DeepCollectionEquality()
                    .equals(other.isSaving, isSaving)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isGettingLocation, isGettingLocation) ||
                const DeepCollectionEquality()
                    .equals(other.isGettingLocation, isGettingLocation)) &&
            (identical(other.locationSet, locationSet) ||
                const DeepCollectionEquality()
                    .equals(other.locationSet, locationSet)) &&
            (identical(
                    other.failureOrCurrentLocation, failureOrCurrentLocation) ||
                const DeepCollectionEquality().equals(
                    other.failureOrCurrentLocation,
                    failureOrCurrentLocation)) &&
            (identical(other.createFailureOrSuccessOption,
                    createFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.createFailureOrSuccessOption,
                    createFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(locationChat) ^
      const DeepCollectionEquality().hash(introMessage) ^
      const DeepCollectionEquality().hash(isSaving) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isGettingLocation) ^
      const DeepCollectionEquality().hash(locationSet) ^
      const DeepCollectionEquality().hash(failureOrCurrentLocation) ^
      const DeepCollectionEquality().hash(createFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$LocationChatFormStateCopyWith<_LocationChatFormState> get copyWith =>
      __$LocationChatFormStateCopyWithImpl<_LocationChatFormState>(
          this, _$identity);
}

abstract class _LocationChatFormState implements LocationChatFormState {
  const factory _LocationChatFormState(
      {required LocationChat locationChat,
      required IntroMessage introMessage,
      required bool isSaving,
      required bool showErrorMessages,
      required bool isGettingLocation,
      required bool locationSet,
      required Either<LocationFailure, Position> failureOrCurrentLocation,
      required Option<Either<DataFailure, Unit>>
          createFailureOrSuccessOption}) = _$_LocationChatFormState;

  @override
  LocationChat get locationChat => throw _privateConstructorUsedError;
  @override
  IntroMessage get introMessage => throw _privateConstructorUsedError;
  @override
  bool get isSaving => throw _privateConstructorUsedError;
  @override
  bool get showErrorMessages => throw _privateConstructorUsedError;
  @override
  bool get isGettingLocation => throw _privateConstructorUsedError;
  @override
  bool get locationSet => throw _privateConstructorUsedError;
  @override
  Either<LocationFailure, Position> get failureOrCurrentLocation =>
      throw _privateConstructorUsedError;
  @override
  Option<Either<DataFailure, Unit>> get createFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LocationChatFormStateCopyWith<_LocationChatFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
