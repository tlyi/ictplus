// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:firebase_storage/firebase_storage.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc.dart' as _i18;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i17;
import 'application/myevents/myevents_form/myevents_form_bloc.dart' as _i20;
import 'application/notifications/chat_counter_watcher/chat_counter_watcher_bloc.dart'
    as _i19;
import 'application/notifications/notif_counter_watcher/notif_counter_watcher_bloc.dart'
    as _i14;
import 'application/notifications/notification_watcher/notification_watcher_bloc.dart'
    as _i15;
import 'application/profile/profile_actor/profile_actor_bloc.dart' as _i16;
import 'domain/auth/i_auth_facade.dart' as _i6;
import 'domain/data/myevents/i_forum_repository.dart' as _i21;
import 'domain/data/notifications/i_notification_repository.dart' as _i10;
import 'domain/data/profile/i_profile_repository.dart' as _i12;
import 'domain/mods/i_mod_repository.dart' as _i8;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i7;
import 'infrastructure/core/firebase_injectable_module.dart' as _i22;
import 'infrastructure/data/notifications/notification_repository.dart' as _i11;
import 'infrastructure/data/profile/mods/mod_repository.dart' as _i9;
import 'infrastructure/data/profile/profile_repository.dart'
    as _i13; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<_i3.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i4.FirebaseFirestore>(
      () => firebaseInjectableModule.firestore);
  gh.lazySingleton<_i5.FirebaseStorage>(
      () => firebaseInjectableModule.firebaseStorage);
  gh.lazySingleton<_i6.IAuthFacade>(
      () => _i7.FirebaseAuthFacade(get<_i3.FirebaseAuth>()));
  gh.lazySingleton<_i8.IModRepository>(
      () => _i9.ModRepository(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i10.INotificationRepository>(
      () => _i11.NotificationRepository(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i12.IProfileRepository>(() => _i13.ProfileRepository(
      get<_i4.FirebaseFirestore>(), get<_i5.FirebaseStorage>()));
  gh.factory<_i14.NotifCounterWatcherBloc>(
      () => _i14.NotifCounterWatcherBloc(get<_i10.INotificationRepository>()));
  gh.factory<_i15.NotificationWatcherBloc>(
      () => _i15.NotificationWatcherBloc(get<_i10.INotificationRepository>()));
  gh.factory<_i16.ProfileActorBloc>(
      () => _i16.ProfileActorBloc(get<_i12.IProfileRepository>()));
  gh.factory<_i17.SignInFormBloc>(
      () => _i17.SignInFormBloc(get<_i6.IAuthFacade>()));
  gh.factory<_i18.AuthBloc>(() => _i18.AuthBloc(get<_i6.IAuthFacade>(),
      get<_i12.IProfileRepository>(), get<_i8.IModRepository>()));
  gh.factory<_i19.ChatCounterWatcherBloc>(
      () => _i19.ChatCounterWatcherBloc(get<_i10.INotificationRepository>()));
  gh.factory<_i20.ForumFormBloc>(() => _i20.ForumFormBloc(
      get<_i21.IForumRepository>(), get<_i12.IProfileRepository>()));
  return get;
}

class _$FirebaseInjectableModule extends _i22.FirebaseInjectableModule {}
