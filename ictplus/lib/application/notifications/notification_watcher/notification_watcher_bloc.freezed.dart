// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'notification_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NotificationWatcherEventTearOff {
  const _$NotificationWatcherEventTearOff();

  _RetrieveNotificationsStarted retrieveNotificationsStarted() {
    return const _RetrieveNotificationsStarted();
  }

  _RetrieveProfilesStarted retrieveProfilesStarted(List<Notification> notifs) {
    return _RetrieveProfilesStarted(
      notifs,
    );
  }

  _NotificationsReceived notificationsReceived(
      Either<DataFailure, List<Notification>> failureOrNotifications) {
    return _NotificationsReceived(
      failureOrNotifications,
    );
  }

  _RetrieveMoreNotifications retrieveMoreNotifications(
      List<Notification> oldNotifs, List<Profile> oldProfiles) {
    return _RetrieveMoreNotifications(
      oldNotifs,
      oldProfiles,
    );
  }

  _RetrieveMoreProfiles retrieveMoreProfiles(List<Notification> newNotifs,
      List<Notification> updatedNotifs, List<Profile> oldProfiles) {
    return _RetrieveMoreProfiles(
      newNotifs,
      updatedNotifs,
      oldProfiles,
    );
  }

  _MoreNotificationsReceived moreNotificationsReceived(
      Either<DataFailure, List<Notification>> failureOrNotifications,
      List<Notification> oldNotifs,
      List<Profile> oldProfiles) {
    return _MoreNotificationsReceived(
      failureOrNotifications,
      oldNotifs,
      oldProfiles,
    );
  }
}

/// @nodoc
const $NotificationWatcherEvent = _$NotificationWatcherEventTearOff();

/// @nodoc
mixin _$NotificationWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() retrieveNotificationsStarted,
    required TResult Function(List<Notification> notifs)
        retrieveProfilesStarted,
    required TResult Function(
            Either<DataFailure, List<Notification>> failureOrNotifications)
        notificationsReceived,
    required TResult Function(
            List<Notification> oldNotifs, List<Profile> oldProfiles)
        retrieveMoreNotifications,
    required TResult Function(List<Notification> newNotifs,
            List<Notification> updatedNotifs, List<Profile> oldProfiles)
        retrieveMoreProfiles,
    required TResult Function(
            Either<DataFailure, List<Notification>> failureOrNotifications,
            List<Notification> oldNotifs,
            List<Profile> oldProfiles)
        moreNotificationsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? retrieveNotificationsStarted,
    TResult Function(List<Notification> notifs)? retrieveProfilesStarted,
    TResult Function(
            Either<DataFailure, List<Notification>> failureOrNotifications)?
        notificationsReceived,
    TResult Function(List<Notification> oldNotifs, List<Profile> oldProfiles)?
        retrieveMoreNotifications,
    TResult Function(List<Notification> newNotifs,
            List<Notification> updatedNotifs, List<Profile> oldProfiles)?
        retrieveMoreProfiles,
    TResult Function(
            Either<DataFailure, List<Notification>> failureOrNotifications,
            List<Notification> oldNotifs,
            List<Profile> oldProfiles)?
        moreNotificationsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RetrieveNotificationsStarted value)
        retrieveNotificationsStarted,
    required TResult Function(_RetrieveProfilesStarted value)
        retrieveProfilesStarted,
    required TResult Function(_NotificationsReceived value)
        notificationsReceived,
    required TResult Function(_RetrieveMoreNotifications value)
        retrieveMoreNotifications,
    required TResult Function(_RetrieveMoreProfiles value) retrieveMoreProfiles,
    required TResult Function(_MoreNotificationsReceived value)
        moreNotificationsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RetrieveNotificationsStarted value)?
        retrieveNotificationsStarted,
    TResult Function(_RetrieveProfilesStarted value)? retrieveProfilesStarted,
    TResult Function(_NotificationsReceived value)? notificationsReceived,
    TResult Function(_RetrieveMoreNotifications value)?
        retrieveMoreNotifications,
    TResult Function(_RetrieveMoreProfiles value)? retrieveMoreProfiles,
    TResult Function(_MoreNotificationsReceived value)?
        moreNotificationsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationWatcherEventCopyWith<$Res> {
  factory $NotificationWatcherEventCopyWith(NotificationWatcherEvent value,
          $Res Function(NotificationWatcherEvent) then) =
      _$NotificationWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotificationWatcherEventCopyWithImpl<$Res>
    implements $NotificationWatcherEventCopyWith<$Res> {
  _$NotificationWatcherEventCopyWithImpl(this._value, this._then);

  final NotificationWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(NotificationWatcherEvent) _then;
}

/// @nodoc
abstract class _$RetrieveNotificationsStartedCopyWith<$Res> {
  factory _$RetrieveNotificationsStartedCopyWith(
          _RetrieveNotificationsStarted value,
          $Res Function(_RetrieveNotificationsStarted) then) =
      __$RetrieveNotificationsStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$RetrieveNotificationsStartedCopyWithImpl<$Res>
    extends _$NotificationWatcherEventCopyWithImpl<$Res>
    implements _$RetrieveNotificationsStartedCopyWith<$Res> {
  __$RetrieveNotificationsStartedCopyWithImpl(
      _RetrieveNotificationsStarted _value,
      $Res Function(_RetrieveNotificationsStarted) _then)
      : super(_value, (v) => _then(v as _RetrieveNotificationsStarted));

  @override
  _RetrieveNotificationsStarted get _value =>
      super._value as _RetrieveNotificationsStarted;
}

/// @nodoc

class _$_RetrieveNotificationsStarted implements _RetrieveNotificationsStarted {
  const _$_RetrieveNotificationsStarted();

  @override
  String toString() {
    return 'NotificationWatcherEvent.retrieveNotificationsStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _RetrieveNotificationsStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() retrieveNotificationsStarted,
    required TResult Function(List<Notification> notifs)
        retrieveProfilesStarted,
    required TResult Function(
            Either<DataFailure, List<Notification>> failureOrNotifications)
        notificationsReceived,
    required TResult Function(
            List<Notification> oldNotifs, List<Profile> oldProfiles)
        retrieveMoreNotifications,
    required TResult Function(List<Notification> newNotifs,
            List<Notification> updatedNotifs, List<Profile> oldProfiles)
        retrieveMoreProfiles,
    required TResult Function(
            Either<DataFailure, List<Notification>> failureOrNotifications,
            List<Notification> oldNotifs,
            List<Profile> oldProfiles)
        moreNotificationsReceived,
  }) {
    return retrieveNotificationsStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? retrieveNotificationsStarted,
    TResult Function(List<Notification> notifs)? retrieveProfilesStarted,
    TResult Function(
            Either<DataFailure, List<Notification>> failureOrNotifications)?
        notificationsReceived,
    TResult Function(List<Notification> oldNotifs, List<Profile> oldProfiles)?
        retrieveMoreNotifications,
    TResult Function(List<Notification> newNotifs,
            List<Notification> updatedNotifs, List<Profile> oldProfiles)?
        retrieveMoreProfiles,
    TResult Function(
            Either<DataFailure, List<Notification>> failureOrNotifications,
            List<Notification> oldNotifs,
            List<Profile> oldProfiles)?
        moreNotificationsReceived,
    required TResult orElse(),
  }) {
    if (retrieveNotificationsStarted != null) {
      return retrieveNotificationsStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RetrieveNotificationsStarted value)
        retrieveNotificationsStarted,
    required TResult Function(_RetrieveProfilesStarted value)
        retrieveProfilesStarted,
    required TResult Function(_NotificationsReceived value)
        notificationsReceived,
    required TResult Function(_RetrieveMoreNotifications value)
        retrieveMoreNotifications,
    required TResult Function(_RetrieveMoreProfiles value) retrieveMoreProfiles,
    required TResult Function(_MoreNotificationsReceived value)
        moreNotificationsReceived,
  }) {
    return retrieveNotificationsStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RetrieveNotificationsStarted value)?
        retrieveNotificationsStarted,
    TResult Function(_RetrieveProfilesStarted value)? retrieveProfilesStarted,
    TResult Function(_NotificationsReceived value)? notificationsReceived,
    TResult Function(_RetrieveMoreNotifications value)?
        retrieveMoreNotifications,
    TResult Function(_RetrieveMoreProfiles value)? retrieveMoreProfiles,
    TResult Function(_MoreNotificationsReceived value)?
        moreNotificationsReceived,
    required TResult orElse(),
  }) {
    if (retrieveNotificationsStarted != null) {
      return retrieveNotificationsStarted(this);
    }
    return orElse();
  }
}

abstract class _RetrieveNotificationsStarted
    implements NotificationWatcherEvent {
  const factory _RetrieveNotificationsStarted() =
      _$_RetrieveNotificationsStarted;
}

/// @nodoc
abstract class _$RetrieveProfilesStartedCopyWith<$Res> {
  factory _$RetrieveProfilesStartedCopyWith(_RetrieveProfilesStarted value,
          $Res Function(_RetrieveProfilesStarted) then) =
      __$RetrieveProfilesStartedCopyWithImpl<$Res>;
  $Res call({List<Notification> notifs});
}

/// @nodoc
class __$RetrieveProfilesStartedCopyWithImpl<$Res>
    extends _$NotificationWatcherEventCopyWithImpl<$Res>
    implements _$RetrieveProfilesStartedCopyWith<$Res> {
  __$RetrieveProfilesStartedCopyWithImpl(_RetrieveProfilesStarted _value,
      $Res Function(_RetrieveProfilesStarted) _then)
      : super(_value, (v) => _then(v as _RetrieveProfilesStarted));

  @override
  _RetrieveProfilesStarted get _value =>
      super._value as _RetrieveProfilesStarted;

  @override
  $Res call({
    Object? notifs = freezed,
  }) {
    return _then(_RetrieveProfilesStarted(
      notifs == freezed
          ? _value.notifs
          : notifs // ignore: cast_nullable_to_non_nullable
              as List<Notification>,
    ));
  }
}

/// @nodoc

class _$_RetrieveProfilesStarted implements _RetrieveProfilesStarted {
  const _$_RetrieveProfilesStarted(this.notifs);

  @override
  final List<Notification> notifs;

  @override
  String toString() {
    return 'NotificationWatcherEvent.retrieveProfilesStarted(notifs: $notifs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RetrieveProfilesStarted &&
            (identical(other.notifs, notifs) ||
                const DeepCollectionEquality().equals(other.notifs, notifs)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(notifs);

  @JsonKey(ignore: true)
  @override
  _$RetrieveProfilesStartedCopyWith<_RetrieveProfilesStarted> get copyWith =>
      __$RetrieveProfilesStartedCopyWithImpl<_RetrieveProfilesStarted>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() retrieveNotificationsStarted,
    required TResult Function(List<Notification> notifs)
        retrieveProfilesStarted,
    required TResult Function(
            Either<DataFailure, List<Notification>> failureOrNotifications)
        notificationsReceived,
    required TResult Function(
            List<Notification> oldNotifs, List<Profile> oldProfiles)
        retrieveMoreNotifications,
    required TResult Function(List<Notification> newNotifs,
            List<Notification> updatedNotifs, List<Profile> oldProfiles)
        retrieveMoreProfiles,
    required TResult Function(
            Either<DataFailure, List<Notification>> failureOrNotifications,
            List<Notification> oldNotifs,
            List<Profile> oldProfiles)
        moreNotificationsReceived,
  }) {
    return retrieveProfilesStarted(notifs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? retrieveNotificationsStarted,
    TResult Function(List<Notification> notifs)? retrieveProfilesStarted,
    TResult Function(
            Either<DataFailure, List<Notification>> failureOrNotifications)?
        notificationsReceived,
    TResult Function(List<Notification> oldNotifs, List<Profile> oldProfiles)?
        retrieveMoreNotifications,
    TResult Function(List<Notification> newNotifs,
            List<Notification> updatedNotifs, List<Profile> oldProfiles)?
        retrieveMoreProfiles,
    TResult Function(
            Either<DataFailure, List<Notification>> failureOrNotifications,
            List<Notification> oldNotifs,
            List<Profile> oldProfiles)?
        moreNotificationsReceived,
    required TResult orElse(),
  }) {
    if (retrieveProfilesStarted != null) {
      return retrieveProfilesStarted(notifs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RetrieveNotificationsStarted value)
        retrieveNotificationsStarted,
    required TResult Function(_RetrieveProfilesStarted value)
        retrieveProfilesStarted,
    required TResult Function(_NotificationsReceived value)
        notificationsReceived,
    required TResult Function(_RetrieveMoreNotifications value)
        retrieveMoreNotifications,
    required TResult Function(_RetrieveMoreProfiles value) retrieveMoreProfiles,
    required TResult Function(_MoreNotificationsReceived value)
        moreNotificationsReceived,
  }) {
    return retrieveProfilesStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RetrieveNotificationsStarted value)?
        retrieveNotificationsStarted,
    TResult Function(_RetrieveProfilesStarted value)? retrieveProfilesStarted,
    TResult Function(_NotificationsReceived value)? notificationsReceived,
    TResult Function(_RetrieveMoreNotifications value)?
        retrieveMoreNotifications,
    TResult Function(_RetrieveMoreProfiles value)? retrieveMoreProfiles,
    TResult Function(_MoreNotificationsReceived value)?
        moreNotificationsReceived,
    required TResult orElse(),
  }) {
    if (retrieveProfilesStarted != null) {
      return retrieveProfilesStarted(this);
    }
    return orElse();
  }
}

abstract class _RetrieveProfilesStarted implements NotificationWatcherEvent {
  const factory _RetrieveProfilesStarted(List<Notification> notifs) =
      _$_RetrieveProfilesStarted;

  List<Notification> get notifs => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$RetrieveProfilesStartedCopyWith<_RetrieveProfilesStarted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$NotificationsReceivedCopyWith<$Res> {
  factory _$NotificationsReceivedCopyWith(_NotificationsReceived value,
          $Res Function(_NotificationsReceived) then) =
      __$NotificationsReceivedCopyWithImpl<$Res>;
  $Res call({Either<DataFailure, List<Notification>> failureOrNotifications});
}

/// @nodoc
class __$NotificationsReceivedCopyWithImpl<$Res>
    extends _$NotificationWatcherEventCopyWithImpl<$Res>
    implements _$NotificationsReceivedCopyWith<$Res> {
  __$NotificationsReceivedCopyWithImpl(_NotificationsReceived _value,
      $Res Function(_NotificationsReceived) _then)
      : super(_value, (v) => _then(v as _NotificationsReceived));

  @override
  _NotificationsReceived get _value => super._value as _NotificationsReceived;

  @override
  $Res call({
    Object? failureOrNotifications = freezed,
  }) {
    return _then(_NotificationsReceived(
      failureOrNotifications == freezed
          ? _value.failureOrNotifications
          : failureOrNotifications // ignore: cast_nullable_to_non_nullable
              as Either<DataFailure, List<Notification>>,
    ));
  }
}

/// @nodoc

class _$_NotificationsReceived implements _NotificationsReceived {
  const _$_NotificationsReceived(this.failureOrNotifications);

  @override
  final Either<DataFailure, List<Notification>> failureOrNotifications;

  @override
  String toString() {
    return 'NotificationWatcherEvent.notificationsReceived(failureOrNotifications: $failureOrNotifications)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NotificationsReceived &&
            (identical(other.failureOrNotifications, failureOrNotifications) ||
                const DeepCollectionEquality().equals(
                    other.failureOrNotifications, failureOrNotifications)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrNotifications);

  @JsonKey(ignore: true)
  @override
  _$NotificationsReceivedCopyWith<_NotificationsReceived> get copyWith =>
      __$NotificationsReceivedCopyWithImpl<_NotificationsReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() retrieveNotificationsStarted,
    required TResult Function(List<Notification> notifs)
        retrieveProfilesStarted,
    required TResult Function(
            Either<DataFailure, List<Notification>> failureOrNotifications)
        notificationsReceived,
    required TResult Function(
            List<Notification> oldNotifs, List<Profile> oldProfiles)
        retrieveMoreNotifications,
    required TResult Function(List<Notification> newNotifs,
            List<Notification> updatedNotifs, List<Profile> oldProfiles)
        retrieveMoreProfiles,
    required TResult Function(
            Either<DataFailure, List<Notification>> failureOrNotifications,
            List<Notification> oldNotifs,
            List<Profile> oldProfiles)
        moreNotificationsReceived,
  }) {
    return notificationsReceived(failureOrNotifications);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? retrieveNotificationsStarted,
    TResult Function(List<Notification> notifs)? retrieveProfilesStarted,
    TResult Function(
            Either<DataFailure, List<Notification>> failureOrNotifications)?
        notificationsReceived,
    TResult Function(List<Notification> oldNotifs, List<Profile> oldProfiles)?
        retrieveMoreNotifications,
    TResult Function(List<Notification> newNotifs,
            List<Notification> updatedNotifs, List<Profile> oldProfiles)?
        retrieveMoreProfiles,
    TResult Function(
            Either<DataFailure, List<Notification>> failureOrNotifications,
            List<Notification> oldNotifs,
            List<Profile> oldProfiles)?
        moreNotificationsReceived,
    required TResult orElse(),
  }) {
    if (notificationsReceived != null) {
      return notificationsReceived(failureOrNotifications);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RetrieveNotificationsStarted value)
        retrieveNotificationsStarted,
    required TResult Function(_RetrieveProfilesStarted value)
        retrieveProfilesStarted,
    required TResult Function(_NotificationsReceived value)
        notificationsReceived,
    required TResult Function(_RetrieveMoreNotifications value)
        retrieveMoreNotifications,
    required TResult Function(_RetrieveMoreProfiles value) retrieveMoreProfiles,
    required TResult Function(_MoreNotificationsReceived value)
        moreNotificationsReceived,
  }) {
    return notificationsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RetrieveNotificationsStarted value)?
        retrieveNotificationsStarted,
    TResult Function(_RetrieveProfilesStarted value)? retrieveProfilesStarted,
    TResult Function(_NotificationsReceived value)? notificationsReceived,
    TResult Function(_RetrieveMoreNotifications value)?
        retrieveMoreNotifications,
    TResult Function(_RetrieveMoreProfiles value)? retrieveMoreProfiles,
    TResult Function(_MoreNotificationsReceived value)?
        moreNotificationsReceived,
    required TResult orElse(),
  }) {
    if (notificationsReceived != null) {
      return notificationsReceived(this);
    }
    return orElse();
  }
}

abstract class _NotificationsReceived implements NotificationWatcherEvent {
  const factory _NotificationsReceived(
          Either<DataFailure, List<Notification>> failureOrNotifications) =
      _$_NotificationsReceived;

  Either<DataFailure, List<Notification>> get failureOrNotifications =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$NotificationsReceivedCopyWith<_NotificationsReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RetrieveMoreNotificationsCopyWith<$Res> {
  factory _$RetrieveMoreNotificationsCopyWith(_RetrieveMoreNotifications value,
          $Res Function(_RetrieveMoreNotifications) then) =
      __$RetrieveMoreNotificationsCopyWithImpl<$Res>;
  $Res call({List<Notification> oldNotifs, List<Profile> oldProfiles});
}

/// @nodoc
class __$RetrieveMoreNotificationsCopyWithImpl<$Res>
    extends _$NotificationWatcherEventCopyWithImpl<$Res>
    implements _$RetrieveMoreNotificationsCopyWith<$Res> {
  __$RetrieveMoreNotificationsCopyWithImpl(_RetrieveMoreNotifications _value,
      $Res Function(_RetrieveMoreNotifications) _then)
      : super(_value, (v) => _then(v as _RetrieveMoreNotifications));

  @override
  _RetrieveMoreNotifications get _value =>
      super._value as _RetrieveMoreNotifications;

  @override
  $Res call({
    Object? oldNotifs = freezed,
    Object? oldProfiles = freezed,
  }) {
    return _then(_RetrieveMoreNotifications(
      oldNotifs == freezed
          ? _value.oldNotifs
          : oldNotifs // ignore: cast_nullable_to_non_nullable
              as List<Notification>,
      oldProfiles == freezed
          ? _value.oldProfiles
          : oldProfiles // ignore: cast_nullable_to_non_nullable
              as List<Profile>,
    ));
  }
}

/// @nodoc

class _$_RetrieveMoreNotifications implements _RetrieveMoreNotifications {
  const _$_RetrieveMoreNotifications(this.oldNotifs, this.oldProfiles);

  @override
  final List<Notification> oldNotifs;
  @override
  final List<Profile> oldProfiles;

  @override
  String toString() {
    return 'NotificationWatcherEvent.retrieveMoreNotifications(oldNotifs: $oldNotifs, oldProfiles: $oldProfiles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RetrieveMoreNotifications &&
            (identical(other.oldNotifs, oldNotifs) ||
                const DeepCollectionEquality()
                    .equals(other.oldNotifs, oldNotifs)) &&
            (identical(other.oldProfiles, oldProfiles) ||
                const DeepCollectionEquality()
                    .equals(other.oldProfiles, oldProfiles)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(oldNotifs) ^
      const DeepCollectionEquality().hash(oldProfiles);

  @JsonKey(ignore: true)
  @override
  _$RetrieveMoreNotificationsCopyWith<_RetrieveMoreNotifications>
      get copyWith =>
          __$RetrieveMoreNotificationsCopyWithImpl<_RetrieveMoreNotifications>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() retrieveNotificationsStarted,
    required TResult Function(List<Notification> notifs)
        retrieveProfilesStarted,
    required TResult Function(
            Either<DataFailure, List<Notification>> failureOrNotifications)
        notificationsReceived,
    required TResult Function(
            List<Notification> oldNotifs, List<Profile> oldProfiles)
        retrieveMoreNotifications,
    required TResult Function(List<Notification> newNotifs,
            List<Notification> updatedNotifs, List<Profile> oldProfiles)
        retrieveMoreProfiles,
    required TResult Function(
            Either<DataFailure, List<Notification>> failureOrNotifications,
            List<Notification> oldNotifs,
            List<Profile> oldProfiles)
        moreNotificationsReceived,
  }) {
    return retrieveMoreNotifications(oldNotifs, oldProfiles);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? retrieveNotificationsStarted,
    TResult Function(List<Notification> notifs)? retrieveProfilesStarted,
    TResult Function(
            Either<DataFailure, List<Notification>> failureOrNotifications)?
        notificationsReceived,
    TResult Function(List<Notification> oldNotifs, List<Profile> oldProfiles)?
        retrieveMoreNotifications,
    TResult Function(List<Notification> newNotifs,
            List<Notification> updatedNotifs, List<Profile> oldProfiles)?
        retrieveMoreProfiles,
    TResult Function(
            Either<DataFailure, List<Notification>> failureOrNotifications,
            List<Notification> oldNotifs,
            List<Profile> oldProfiles)?
        moreNotificationsReceived,
    required TResult orElse(),
  }) {
    if (retrieveMoreNotifications != null) {
      return retrieveMoreNotifications(oldNotifs, oldProfiles);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RetrieveNotificationsStarted value)
        retrieveNotificationsStarted,
    required TResult Function(_RetrieveProfilesStarted value)
        retrieveProfilesStarted,
    required TResult Function(_NotificationsReceived value)
        notificationsReceived,
    required TResult Function(_RetrieveMoreNotifications value)
        retrieveMoreNotifications,
    required TResult Function(_RetrieveMoreProfiles value) retrieveMoreProfiles,
    required TResult Function(_MoreNotificationsReceived value)
        moreNotificationsReceived,
  }) {
    return retrieveMoreNotifications(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RetrieveNotificationsStarted value)?
        retrieveNotificationsStarted,
    TResult Function(_RetrieveProfilesStarted value)? retrieveProfilesStarted,
    TResult Function(_NotificationsReceived value)? notificationsReceived,
    TResult Function(_RetrieveMoreNotifications value)?
        retrieveMoreNotifications,
    TResult Function(_RetrieveMoreProfiles value)? retrieveMoreProfiles,
    TResult Function(_MoreNotificationsReceived value)?
        moreNotificationsReceived,
    required TResult orElse(),
  }) {
    if (retrieveMoreNotifications != null) {
      return retrieveMoreNotifications(this);
    }
    return orElse();
  }
}

abstract class _RetrieveMoreNotifications implements NotificationWatcherEvent {
  const factory _RetrieveMoreNotifications(
          List<Notification> oldNotifs, List<Profile> oldProfiles) =
      _$_RetrieveMoreNotifications;

  List<Notification> get oldNotifs => throw _privateConstructorUsedError;
  List<Profile> get oldProfiles => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$RetrieveMoreNotificationsCopyWith<_RetrieveMoreNotifications>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RetrieveMoreProfilesCopyWith<$Res> {
  factory _$RetrieveMoreProfilesCopyWith(_RetrieveMoreProfiles value,
          $Res Function(_RetrieveMoreProfiles) then) =
      __$RetrieveMoreProfilesCopyWithImpl<$Res>;
  $Res call(
      {List<Notification> newNotifs,
      List<Notification> updatedNotifs,
      List<Profile> oldProfiles});
}

/// @nodoc
class __$RetrieveMoreProfilesCopyWithImpl<$Res>
    extends _$NotificationWatcherEventCopyWithImpl<$Res>
    implements _$RetrieveMoreProfilesCopyWith<$Res> {
  __$RetrieveMoreProfilesCopyWithImpl(
      _RetrieveMoreProfiles _value, $Res Function(_RetrieveMoreProfiles) _then)
      : super(_value, (v) => _then(v as _RetrieveMoreProfiles));

  @override
  _RetrieveMoreProfiles get _value => super._value as _RetrieveMoreProfiles;

  @override
  $Res call({
    Object? newNotifs = freezed,
    Object? updatedNotifs = freezed,
    Object? oldProfiles = freezed,
  }) {
    return _then(_RetrieveMoreProfiles(
      newNotifs == freezed
          ? _value.newNotifs
          : newNotifs // ignore: cast_nullable_to_non_nullable
              as List<Notification>,
      updatedNotifs == freezed
          ? _value.updatedNotifs
          : updatedNotifs // ignore: cast_nullable_to_non_nullable
              as List<Notification>,
      oldProfiles == freezed
          ? _value.oldProfiles
          : oldProfiles // ignore: cast_nullable_to_non_nullable
              as List<Profile>,
    ));
  }
}

/// @nodoc

class _$_RetrieveMoreProfiles implements _RetrieveMoreProfiles {
  const _$_RetrieveMoreProfiles(
      this.newNotifs, this.updatedNotifs, this.oldProfiles);

  @override
  final List<Notification> newNotifs;
  @override
  final List<Notification> updatedNotifs;
  @override
  final List<Profile> oldProfiles;

  @override
  String toString() {
    return 'NotificationWatcherEvent.retrieveMoreProfiles(newNotifs: $newNotifs, updatedNotifs: $updatedNotifs, oldProfiles: $oldProfiles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RetrieveMoreProfiles &&
            (identical(other.newNotifs, newNotifs) ||
                const DeepCollectionEquality()
                    .equals(other.newNotifs, newNotifs)) &&
            (identical(other.updatedNotifs, updatedNotifs) ||
                const DeepCollectionEquality()
                    .equals(other.updatedNotifs, updatedNotifs)) &&
            (identical(other.oldProfiles, oldProfiles) ||
                const DeepCollectionEquality()
                    .equals(other.oldProfiles, oldProfiles)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(newNotifs) ^
      const DeepCollectionEquality().hash(updatedNotifs) ^
      const DeepCollectionEquality().hash(oldProfiles);

  @JsonKey(ignore: true)
  @override
  _$RetrieveMoreProfilesCopyWith<_RetrieveMoreProfiles> get copyWith =>
      __$RetrieveMoreProfilesCopyWithImpl<_RetrieveMoreProfiles>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() retrieveNotificationsStarted,
    required TResult Function(List<Notification> notifs)
        retrieveProfilesStarted,
    required TResult Function(
            Either<DataFailure, List<Notification>> failureOrNotifications)
        notificationsReceived,
    required TResult Function(
            List<Notification> oldNotifs, List<Profile> oldProfiles)
        retrieveMoreNotifications,
    required TResult Function(List<Notification> newNotifs,
            List<Notification> updatedNotifs, List<Profile> oldProfiles)
        retrieveMoreProfiles,
    required TResult Function(
            Either<DataFailure, List<Notification>> failureOrNotifications,
            List<Notification> oldNotifs,
            List<Profile> oldProfiles)
        moreNotificationsReceived,
  }) {
    return retrieveMoreProfiles(newNotifs, updatedNotifs, oldProfiles);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? retrieveNotificationsStarted,
    TResult Function(List<Notification> notifs)? retrieveProfilesStarted,
    TResult Function(
            Either<DataFailure, List<Notification>> failureOrNotifications)?
        notificationsReceived,
    TResult Function(List<Notification> oldNotifs, List<Profile> oldProfiles)?
        retrieveMoreNotifications,
    TResult Function(List<Notification> newNotifs,
            List<Notification> updatedNotifs, List<Profile> oldProfiles)?
        retrieveMoreProfiles,
    TResult Function(
            Either<DataFailure, List<Notification>> failureOrNotifications,
            List<Notification> oldNotifs,
            List<Profile> oldProfiles)?
        moreNotificationsReceived,
    required TResult orElse(),
  }) {
    if (retrieveMoreProfiles != null) {
      return retrieveMoreProfiles(newNotifs, updatedNotifs, oldProfiles);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RetrieveNotificationsStarted value)
        retrieveNotificationsStarted,
    required TResult Function(_RetrieveProfilesStarted value)
        retrieveProfilesStarted,
    required TResult Function(_NotificationsReceived value)
        notificationsReceived,
    required TResult Function(_RetrieveMoreNotifications value)
        retrieveMoreNotifications,
    required TResult Function(_RetrieveMoreProfiles value) retrieveMoreProfiles,
    required TResult Function(_MoreNotificationsReceived value)
        moreNotificationsReceived,
  }) {
    return retrieveMoreProfiles(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RetrieveNotificationsStarted value)?
        retrieveNotificationsStarted,
    TResult Function(_RetrieveProfilesStarted value)? retrieveProfilesStarted,
    TResult Function(_NotificationsReceived value)? notificationsReceived,
    TResult Function(_RetrieveMoreNotifications value)?
        retrieveMoreNotifications,
    TResult Function(_RetrieveMoreProfiles value)? retrieveMoreProfiles,
    TResult Function(_MoreNotificationsReceived value)?
        moreNotificationsReceived,
    required TResult orElse(),
  }) {
    if (retrieveMoreProfiles != null) {
      return retrieveMoreProfiles(this);
    }
    return orElse();
  }
}

abstract class _RetrieveMoreProfiles implements NotificationWatcherEvent {
  const factory _RetrieveMoreProfiles(
      List<Notification> newNotifs,
      List<Notification> updatedNotifs,
      List<Profile> oldProfiles) = _$_RetrieveMoreProfiles;

  List<Notification> get newNotifs => throw _privateConstructorUsedError;
  List<Notification> get updatedNotifs => throw _privateConstructorUsedError;
  List<Profile> get oldProfiles => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$RetrieveMoreProfilesCopyWith<_RetrieveMoreProfiles> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$MoreNotificationsReceivedCopyWith<$Res> {
  factory _$MoreNotificationsReceivedCopyWith(_MoreNotificationsReceived value,
          $Res Function(_MoreNotificationsReceived) then) =
      __$MoreNotificationsReceivedCopyWithImpl<$Res>;
  $Res call(
      {Either<DataFailure, List<Notification>> failureOrNotifications,
      List<Notification> oldNotifs,
      List<Profile> oldProfiles});
}

/// @nodoc
class __$MoreNotificationsReceivedCopyWithImpl<$Res>
    extends _$NotificationWatcherEventCopyWithImpl<$Res>
    implements _$MoreNotificationsReceivedCopyWith<$Res> {
  __$MoreNotificationsReceivedCopyWithImpl(_MoreNotificationsReceived _value,
      $Res Function(_MoreNotificationsReceived) _then)
      : super(_value, (v) => _then(v as _MoreNotificationsReceived));

  @override
  _MoreNotificationsReceived get _value =>
      super._value as _MoreNotificationsReceived;

  @override
  $Res call({
    Object? failureOrNotifications = freezed,
    Object? oldNotifs = freezed,
    Object? oldProfiles = freezed,
  }) {
    return _then(_MoreNotificationsReceived(
      failureOrNotifications == freezed
          ? _value.failureOrNotifications
          : failureOrNotifications // ignore: cast_nullable_to_non_nullable
              as Either<DataFailure, List<Notification>>,
      oldNotifs == freezed
          ? _value.oldNotifs
          : oldNotifs // ignore: cast_nullable_to_non_nullable
              as List<Notification>,
      oldProfiles == freezed
          ? _value.oldProfiles
          : oldProfiles // ignore: cast_nullable_to_non_nullable
              as List<Profile>,
    ));
  }
}

/// @nodoc

class _$_MoreNotificationsReceived implements _MoreNotificationsReceived {
  const _$_MoreNotificationsReceived(
      this.failureOrNotifications, this.oldNotifs, this.oldProfiles);

  @override
  final Either<DataFailure, List<Notification>> failureOrNotifications;
  @override
  final List<Notification> oldNotifs;
  @override
  final List<Profile> oldProfiles;

  @override
  String toString() {
    return 'NotificationWatcherEvent.moreNotificationsReceived(failureOrNotifications: $failureOrNotifications, oldNotifs: $oldNotifs, oldProfiles: $oldProfiles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MoreNotificationsReceived &&
            (identical(other.failureOrNotifications, failureOrNotifications) ||
                const DeepCollectionEquality().equals(
                    other.failureOrNotifications, failureOrNotifications)) &&
            (identical(other.oldNotifs, oldNotifs) ||
                const DeepCollectionEquality()
                    .equals(other.oldNotifs, oldNotifs)) &&
            (identical(other.oldProfiles, oldProfiles) ||
                const DeepCollectionEquality()
                    .equals(other.oldProfiles, oldProfiles)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrNotifications) ^
      const DeepCollectionEquality().hash(oldNotifs) ^
      const DeepCollectionEquality().hash(oldProfiles);

  @JsonKey(ignore: true)
  @override
  _$MoreNotificationsReceivedCopyWith<_MoreNotificationsReceived>
      get copyWith =>
          __$MoreNotificationsReceivedCopyWithImpl<_MoreNotificationsReceived>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() retrieveNotificationsStarted,
    required TResult Function(List<Notification> notifs)
        retrieveProfilesStarted,
    required TResult Function(
            Either<DataFailure, List<Notification>> failureOrNotifications)
        notificationsReceived,
    required TResult Function(
            List<Notification> oldNotifs, List<Profile> oldProfiles)
        retrieveMoreNotifications,
    required TResult Function(List<Notification> newNotifs,
            List<Notification> updatedNotifs, List<Profile> oldProfiles)
        retrieveMoreProfiles,
    required TResult Function(
            Either<DataFailure, List<Notification>> failureOrNotifications,
            List<Notification> oldNotifs,
            List<Profile> oldProfiles)
        moreNotificationsReceived,
  }) {
    return moreNotificationsReceived(
        failureOrNotifications, oldNotifs, oldProfiles);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? retrieveNotificationsStarted,
    TResult Function(List<Notification> notifs)? retrieveProfilesStarted,
    TResult Function(
            Either<DataFailure, List<Notification>> failureOrNotifications)?
        notificationsReceived,
    TResult Function(List<Notification> oldNotifs, List<Profile> oldProfiles)?
        retrieveMoreNotifications,
    TResult Function(List<Notification> newNotifs,
            List<Notification> updatedNotifs, List<Profile> oldProfiles)?
        retrieveMoreProfiles,
    TResult Function(
            Either<DataFailure, List<Notification>> failureOrNotifications,
            List<Notification> oldNotifs,
            List<Profile> oldProfiles)?
        moreNotificationsReceived,
    required TResult orElse(),
  }) {
    if (moreNotificationsReceived != null) {
      return moreNotificationsReceived(
          failureOrNotifications, oldNotifs, oldProfiles);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RetrieveNotificationsStarted value)
        retrieveNotificationsStarted,
    required TResult Function(_RetrieveProfilesStarted value)
        retrieveProfilesStarted,
    required TResult Function(_NotificationsReceived value)
        notificationsReceived,
    required TResult Function(_RetrieveMoreNotifications value)
        retrieveMoreNotifications,
    required TResult Function(_RetrieveMoreProfiles value) retrieveMoreProfiles,
    required TResult Function(_MoreNotificationsReceived value)
        moreNotificationsReceived,
  }) {
    return moreNotificationsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RetrieveNotificationsStarted value)?
        retrieveNotificationsStarted,
    TResult Function(_RetrieveProfilesStarted value)? retrieveProfilesStarted,
    TResult Function(_NotificationsReceived value)? notificationsReceived,
    TResult Function(_RetrieveMoreNotifications value)?
        retrieveMoreNotifications,
    TResult Function(_RetrieveMoreProfiles value)? retrieveMoreProfiles,
    TResult Function(_MoreNotificationsReceived value)?
        moreNotificationsReceived,
    required TResult orElse(),
  }) {
    if (moreNotificationsReceived != null) {
      return moreNotificationsReceived(this);
    }
    return orElse();
  }
}

abstract class _MoreNotificationsReceived implements NotificationWatcherEvent {
  const factory _MoreNotificationsReceived(
      Either<DataFailure, List<Notification>> failureOrNotifications,
      List<Notification> oldNotifs,
      List<Profile> oldProfiles) = _$_MoreNotificationsReceived;

  Either<DataFailure, List<Notification>> get failureOrNotifications =>
      throw _privateConstructorUsedError;
  List<Notification> get oldNotifs => throw _privateConstructorUsedError;
  List<Profile> get oldProfiles => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$MoreNotificationsReceivedCopyWith<_MoreNotificationsReceived>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$NotificationWatcherStateTearOff {
  const _$NotificationWatcherStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  LoadInProgress loadInProgress() {
    return const LoadInProgress();
  }

  LoadSuccess loadSuccess(List<Notification> notifications,
      List<Profile> profiles, bool hasMore, bool isRetrieving) {
    return LoadSuccess(
      notifications,
      profiles,
      hasMore,
      isRetrieving,
    );
  }

  _LoadFailure loadFailure(DataFailure dataFailure) {
    return _LoadFailure(
      dataFailure,
    );
  }
}

/// @nodoc
const $NotificationWatcherState = _$NotificationWatcherStateTearOff();

/// @nodoc
mixin _$NotificationWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Notification> notifications,
            List<Profile> profiles, bool hasMore, bool isRetrieving)
        loadSuccess,
    required TResult Function(DataFailure dataFailure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Notification> notifications, List<Profile> profiles,
            bool hasMore, bool isRetrieving)?
        loadSuccess,
    TResult Function(DataFailure dataFailure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadInProgress value) loadInProgress,
    required TResult Function(LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationWatcherStateCopyWith<$Res> {
  factory $NotificationWatcherStateCopyWith(NotificationWatcherState value,
          $Res Function(NotificationWatcherState) then) =
      _$NotificationWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotificationWatcherStateCopyWithImpl<$Res>
    implements $NotificationWatcherStateCopyWith<$Res> {
  _$NotificationWatcherStateCopyWithImpl(this._value, this._then);

  final NotificationWatcherState _value;
  // ignore: unused_field
  final $Res Function(NotificationWatcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$NotificationWatcherStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'NotificationWatcherState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Notification> notifications,
            List<Profile> profiles, bool hasMore, bool isRetrieving)
        loadSuccess,
    required TResult Function(DataFailure dataFailure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Notification> notifications, List<Profile> profiles,
            bool hasMore, bool isRetrieving)?
        loadSuccess,
    TResult Function(DataFailure dataFailure)? loadFailure,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadInProgress value) loadInProgress,
    required TResult Function(LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements NotificationWatcherState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class $LoadInProgressCopyWith<$Res> {
  factory $LoadInProgressCopyWith(
          LoadInProgress value, $Res Function(LoadInProgress) then) =
      _$LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadInProgressCopyWithImpl<$Res>
    extends _$NotificationWatcherStateCopyWithImpl<$Res>
    implements $LoadInProgressCopyWith<$Res> {
  _$LoadInProgressCopyWithImpl(
      LoadInProgress _value, $Res Function(LoadInProgress) _then)
      : super(_value, (v) => _then(v as LoadInProgress));

  @override
  LoadInProgress get _value => super._value as LoadInProgress;
}

/// @nodoc

class _$LoadInProgress implements LoadInProgress {
  const _$LoadInProgress();

  @override
  String toString() {
    return 'NotificationWatcherState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Notification> notifications,
            List<Profile> profiles, bool hasMore, bool isRetrieving)
        loadSuccess,
    required TResult Function(DataFailure dataFailure) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Notification> notifications, List<Profile> profiles,
            bool hasMore, bool isRetrieving)?
        loadSuccess,
    TResult Function(DataFailure dataFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadInProgress value) loadInProgress,
    required TResult Function(LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class LoadInProgress implements NotificationWatcherState {
  const factory LoadInProgress() = _$LoadInProgress;
}

/// @nodoc
abstract class $LoadSuccessCopyWith<$Res> {
  factory $LoadSuccessCopyWith(
          LoadSuccess value, $Res Function(LoadSuccess) then) =
      _$LoadSuccessCopyWithImpl<$Res>;
  $Res call(
      {List<Notification> notifications,
      List<Profile> profiles,
      bool hasMore,
      bool isRetrieving});
}

/// @nodoc
class _$LoadSuccessCopyWithImpl<$Res>
    extends _$NotificationWatcherStateCopyWithImpl<$Res>
    implements $LoadSuccessCopyWith<$Res> {
  _$LoadSuccessCopyWithImpl(
      LoadSuccess _value, $Res Function(LoadSuccess) _then)
      : super(_value, (v) => _then(v as LoadSuccess));

  @override
  LoadSuccess get _value => super._value as LoadSuccess;

  @override
  $Res call({
    Object? notifications = freezed,
    Object? profiles = freezed,
    Object? hasMore = freezed,
    Object? isRetrieving = freezed,
  }) {
    return _then(LoadSuccess(
      notifications == freezed
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<Notification>,
      profiles == freezed
          ? _value.profiles
          : profiles // ignore: cast_nullable_to_non_nullable
              as List<Profile>,
      hasMore == freezed
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      isRetrieving == freezed
          ? _value.isRetrieving
          : isRetrieving // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoadSuccess implements LoadSuccess {
  const _$LoadSuccess(
      this.notifications, this.profiles, this.hasMore, this.isRetrieving);

  @override
  final List<Notification> notifications;
  @override
  final List<Profile> profiles;
  @override
  final bool hasMore;
  @override
  final bool isRetrieving;

  @override
  String toString() {
    return 'NotificationWatcherState.loadSuccess(notifications: $notifications, profiles: $profiles, hasMore: $hasMore, isRetrieving: $isRetrieving)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadSuccess &&
            (identical(other.notifications, notifications) ||
                const DeepCollectionEquality()
                    .equals(other.notifications, notifications)) &&
            (identical(other.profiles, profiles) ||
                const DeepCollectionEquality()
                    .equals(other.profiles, profiles)) &&
            (identical(other.hasMore, hasMore) ||
                const DeepCollectionEquality()
                    .equals(other.hasMore, hasMore)) &&
            (identical(other.isRetrieving, isRetrieving) ||
                const DeepCollectionEquality()
                    .equals(other.isRetrieving, isRetrieving)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(notifications) ^
      const DeepCollectionEquality().hash(profiles) ^
      const DeepCollectionEquality().hash(hasMore) ^
      const DeepCollectionEquality().hash(isRetrieving);

  @JsonKey(ignore: true)
  @override
  $LoadSuccessCopyWith<LoadSuccess> get copyWith =>
      _$LoadSuccessCopyWithImpl<LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Notification> notifications,
            List<Profile> profiles, bool hasMore, bool isRetrieving)
        loadSuccess,
    required TResult Function(DataFailure dataFailure) loadFailure,
  }) {
    return loadSuccess(notifications, profiles, hasMore, isRetrieving);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Notification> notifications, List<Profile> profiles,
            bool hasMore, bool isRetrieving)?
        loadSuccess,
    TResult Function(DataFailure dataFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(notifications, profiles, hasMore, isRetrieving);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadInProgress value) loadInProgress,
    required TResult Function(LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class LoadSuccess implements NotificationWatcherState {
  const factory LoadSuccess(List<Notification> notifications,
      List<Profile> profiles, bool hasMore, bool isRetrieving) = _$LoadSuccess;

  List<Notification> get notifications => throw _privateConstructorUsedError;
  List<Profile> get profiles => throw _privateConstructorUsedError;
  bool get hasMore => throw _privateConstructorUsedError;
  bool get isRetrieving => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoadSuccessCopyWith<LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({DataFailure dataFailure});

  $DataFailureCopyWith<$Res> get dataFailure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$NotificationWatcherStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object? dataFailure = freezed,
  }) {
    return _then(_LoadFailure(
      dataFailure == freezed
          ? _value.dataFailure
          : dataFailure // ignore: cast_nullable_to_non_nullable
              as DataFailure,
    ));
  }

  @override
  $DataFailureCopyWith<$Res> get dataFailure {
    return $DataFailureCopyWith<$Res>(_value.dataFailure, (value) {
      return _then(_value.copyWith(dataFailure: value));
    });
  }
}

/// @nodoc

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.dataFailure);

  @override
  final DataFailure dataFailure;

  @override
  String toString() {
    return 'NotificationWatcherState.loadFailure(dataFailure: $dataFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.dataFailure, dataFailure) ||
                const DeepCollectionEquality()
                    .equals(other.dataFailure, dataFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(dataFailure);

  @JsonKey(ignore: true)
  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Notification> notifications,
            List<Profile> profiles, bool hasMore, bool isRetrieving)
        loadSuccess,
    required TResult Function(DataFailure dataFailure) loadFailure,
  }) {
    return loadFailure(dataFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Notification> notifications, List<Profile> profiles,
            bool hasMore, bool isRetrieving)?
        loadSuccess,
    TResult Function(DataFailure dataFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(dataFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadInProgress value) loadInProgress,
    required TResult Function(LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements NotificationWatcherState {
  const factory _LoadFailure(DataFailure dataFailure) = _$_LoadFailure;

  DataFailure get dataFailure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
