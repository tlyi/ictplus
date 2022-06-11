// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:firebase_storage/firebase_storage.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc.dart' as _i35;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i34;
import 'application/chats/chat_watcher/chat_watcher_bloc.dart' as _i37;
import 'application/chats/convo_actor/convo_actor_bloc.dart' as _i39;
import 'application/chats/convo_watcher/convo_watcher_bloc.dart' as _i40;
import 'application/chats/location_chat_form/location_chat_form_bloc.dart'
    as _i18;
import 'application/chats/location_chat_watcher/location_chat_watcher_bloc.dart'
    as _i19;
import 'application/chats/location_convo_actor/location_convo_actor_bloc.dart'
    as _i20;
import 'application/chats/location_convo_watcher/location_convo_watcher_bloc.dart'
    as _i21;
import 'application/chats/search_location_chats/search_location_chats_bloc.dart'
    as _i32;
import 'application/feed/friend_feed/friend_feed_bloc.dart' as _i44;
import 'application/feed/module_feed/module_feed_bloc.dart' as _i23;
import 'application/forum/comment_watcher/comment_watcher_bloc.dart' as _i38;
import 'application/forum/forum_actor/forum_actor_bloc.dart' as _i41;
import 'application/forum/forum_form/forum_form_bloc.dart' as _i42;
import 'application/forum/forum_post_watcher/forum_post_watcher_bloc.dart'
    as _i43;
import 'application/forum/forum_post_watcher/poll_watcher/poll_watcher_bloc.dart'
    as _i28;
import 'application/forum/module_actor/module_actor_bloc.dart' as _i22;
import 'application/forum/module_watcher/module_forum_watcher/module_forum_watcher_bloc.dart'
    as _i24;
import 'application/forum/module_watcher/module_watcher_bloc.dart' as _i25;
import 'application/forum/search_forum/search_forum_bloc.dart' as _i31;
import 'application/notifications/chat_counter_watcher/chat_counter_watcher_bloc.dart'
    as _i36;
import 'application/notifications/notif_counter_watcher/notif_counter_watcher_bloc.dart'
    as _i26;
import 'application/notifications/notification_watcher/notification_watcher_bloc.dart'
    as _i27;
import 'application/profile/profile_actor/profile_actor_bloc.dart' as _i29;
import 'application/profile/profile_form/profile_form_bloc.dart' as _i30;
import 'application/search/search_profile_bloc.dart' as _i33;
import 'domain/auth/i_auth_facade.dart' as _i6;
import 'domain/data/chats/i_chat_repository.dart' as _i8;
import 'domain/data/forum/i_forum_repository.dart' as _i10;
import 'domain/data/notifications/i_notification_repository.dart' as _i14;
import 'domain/data/profile/i_profile_repository.dart' as _i16;
import 'domain/mods/i_mod_repository.dart' as _i12;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i7;
import 'infrastructure/core/firebase_injectable_module.dart' as _i45;
import 'infrastructure/data/chats/chat_repository.dart' as _i9;
import 'infrastructure/data/forum/forum_repository.dart' as _i11;
import 'infrastructure/data/notifications/notification_repository.dart' as _i15;
import 'infrastructure/data/profile/mods/mod_repository.dart' as _i13;
import 'infrastructure/data/profile/profile_repository.dart'
    as _i17; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i8.IChatRepository>(() => _i9.ChatRepository(
      get<_i4.FirebaseFirestore>(), get<_i5.FirebaseStorage>()));
  gh.lazySingleton<_i10.IForumRepository>(() => _i11.ForumPostRepository(
      get<_i4.FirebaseFirestore>(), get<_i5.FirebaseStorage>()));
  gh.lazySingleton<_i12.IModRepository>(
      () => _i13.ModRepository(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i14.INotificationRepository>(
      () => _i15.NotificationRepository(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i16.IProfileRepository>(() => _i17.ProfileRepository(
      get<_i4.FirebaseFirestore>(), get<_i5.FirebaseStorage>()));
  gh.factory<_i18.LocationChatFormBloc>(
      () => _i18.LocationChatFormBloc(get<_i8.IChatRepository>()));
  gh.factory<_i19.LocationChatWatcherBloc>(
      () => _i19.LocationChatWatcherBloc(get<_i8.IChatRepository>()));
  gh.factory<_i20.LocationConvoActorBloc>(
      () => _i20.LocationConvoActorBloc(get<_i8.IChatRepository>()));
  gh.factory<_i21.LocationConvoWatcherBloc>(() => _i21.LocationConvoWatcherBloc(
      get<_i8.IChatRepository>(), get<_i16.IProfileRepository>()));
  gh.factory<_i22.ModuleActorBloc>(
      () => _i22.ModuleActorBloc(get<_i16.IProfileRepository>()));
  gh.factory<_i23.ModuleFeedBloc>(
      () => _i23.ModuleFeedBloc(get<_i10.IForumRepository>()));
  gh.factory<_i24.ModuleForumWatcherBloc>(
      () => _i24.ModuleForumWatcherBloc(get<_i10.IForumRepository>()));
  gh.factory<_i25.ModuleWatcherBloc>(
      () => _i25.ModuleWatcherBloc(get<_i10.IForumRepository>()));
  gh.factory<_i26.NotifCounterWatcherBloc>(
      () => _i26.NotifCounterWatcherBloc(get<_i14.INotificationRepository>()));
  gh.factory<_i27.NotificationWatcherBloc>(
      () => _i27.NotificationWatcherBloc(get<_i14.INotificationRepository>()));
  gh.factory<_i28.PollWatcherBloc>(
      () => _i28.PollWatcherBloc(get<_i10.IForumRepository>()));
  gh.factory<_i29.ProfileActorBloc>(
      () => _i29.ProfileActorBloc(get<_i16.IProfileRepository>()));
  gh.factory<_i30.ProfileFormBloc>(
      () => _i30.ProfileFormBloc(get<_i16.IProfileRepository>()));
  gh.factory<_i31.SearchForumBloc>(
      () => _i31.SearchForumBloc(get<_i10.IForumRepository>()));
  gh.factory<_i32.SearchLocationChatsBloc>(
      () => _i32.SearchLocationChatsBloc(get<_i8.IChatRepository>()));
  gh.factory<_i33.SearchProfileBloc>(
      () => _i33.SearchProfileBloc(get<_i16.IProfileRepository>()));
  gh.factory<_i34.SignInFormBloc>(
      () => _i34.SignInFormBloc(get<_i6.IAuthFacade>()));
  gh.factory<_i35.AuthBloc>(() => _i35.AuthBloc(get<_i6.IAuthFacade>(),
      get<_i16.IProfileRepository>(), get<_i12.IModRepository>()));
  gh.factory<_i36.ChatCounterWatcherBloc>(
      () => _i36.ChatCounterWatcherBloc(get<_i14.INotificationRepository>()));
  gh.factory<_i37.ChatWatcherBloc>(
      () => _i37.ChatWatcherBloc(get<_i8.IChatRepository>()));
  gh.factory<_i38.CommentWatcherBloc>(() => _i38.CommentWatcherBloc(
      get<_i10.IForumRepository>(), get<_i16.IProfileRepository>()));
  gh.factory<_i39.ConvoActorBloc>(
      () => _i39.ConvoActorBloc(get<_i8.IChatRepository>()));
  gh.factory<_i40.ConvoWatcherBloc>(
      () => _i40.ConvoWatcherBloc(get<_i8.IChatRepository>()));
  gh.factory<_i41.ForumActorBloc>(
      () => _i41.ForumActorBloc(get<_i10.IForumRepository>()));
  gh.factory<_i42.ForumFormBloc>(() => _i42.ForumFormBloc(
      get<_i10.IForumRepository>(), get<_i16.IProfileRepository>()));
  gh.factory<_i43.ForumPostWatcherBloc>(() => _i43.ForumPostWatcherBloc(
      get<_i10.IForumRepository>(), get<_i16.IProfileRepository>()));
  gh.factory<_i44.FriendFeedBloc>(
      () => _i44.FriendFeedBloc(get<_i10.IForumRepository>()));
  return get;
}

class _$FirebaseInjectableModule extends _i45.FirebaseInjectableModule {}
