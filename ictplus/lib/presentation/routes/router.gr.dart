// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;
import 'package:ictplus/domain/data/forum/forum_post/forum_post.dart' as _i28;
import 'package:ictplus/domain/data/profile/profile.dart' as _i27;
import 'package:ictplus/presentation/chats/chat_list/chat_list_page.dart'
    as _i15;
import 'package:ictplus/presentation/chats/convos/convo_page.dart' as _i16;
import 'package:ictplus/presentation/core/full_screen_photo.dart' as _i25;
import 'package:ictplus/presentation/forum/forum_form/forum_form_page.dart'
    as _i14;
import 'package:ictplus/presentation/forum/forum_page/comment_page.dart'
    as _i18;
import 'package:ictplus/presentation/forum/forum_page/forum_page.dart' as _i17;
import 'package:ictplus/presentation/forum/forum_tab/forum_tab_page.dart'
    as _i21;
import 'package:ictplus/presentation/forum/forum_tab/module_forum_page.dart'
    as _i20;
import 'package:ictplus/presentation/home/home_page.dart' as _i5;
import 'package:ictplus/presentation/location_chats/location_chat_list/location_chat_form_page.dart'
    as _i22;
import 'package:ictplus/presentation/location_chats/location_chat_list/location_chat_page.dart'
    as _i23;
import 'package:ictplus/presentation/location_chats/location_convos/location_convo_page.dart'
    as _i24;
import 'package:ictplus/presentation/notifications/notification_page.dart'
    as _i19;
import 'package:ictplus/presentation/profile/followers_and_following_page.dart'
    as _i26;
import 'package:ictplus/presentation/profile/other_profile_page.dart' as _i13;
import 'package:ictplus/presentation/profile/profile_page.dart' as _i10;
import 'package:ictplus/presentation/profile/update_profile_page.dart' as _i12;
import 'package:ictplus/presentation/register/register_page.dart' as _i6;
import 'package:ictplus/presentation/register/register_profile_page.dart'
    as _i8;
import 'package:ictplus/presentation/register/verify_email_page.dart' as _i7;
import 'package:ictplus/presentation/search/search_users_page.dart' as _i11;
import 'package:ictplus/presentation/sign_in/reset_password_page.dart' as _i9;
import 'package:ictplus/presentation/sign_in/sign_in_page.dart' as _i4;
import 'package:ictplus/presentation/splash/splash_page.dart' as _i3;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i3.SplashPage();
        }),
    SignInRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i4.SignInPage();
        }),
    HomeRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i5.HomePage();
        }),
    RegisterRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i6.RegisterPage();
        }),
    VerifyEmailRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i7.VerifyEmailPage();
        }),
    RegisterProfileRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i8.RegisterProfilePage();
        }),
    ResetPasswordRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i9.ResetPasswordPage();
        }),
    ProfileRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<ProfileRouteArgs>();
          return _i10.ProfilePage(key: args.key, canGoBack: args.canGoBack);
        }),
    SearchUsersRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<SearchUsersRouteArgs>();
          return _i11.SearchUsersPage(key: args.key, ownId: args.ownId);
        }),
    UpdateProfileRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i12.UpdateProfilePage();
        }),
    OtherProfileRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<OtherProfileRouteArgs>();
          return _i13.OtherProfilePage(
              key: args.key, userProfile: args.userProfile);
        }),
    ForumFormRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i14.ForumFormPage();
        }),
    ChatListRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i15.ChatListPage();
        }),
    ConvoRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<ConvoRouteArgs>();
          return _i16.ConvoPage(key: args.key, otherProfile: args.otherProfile);
        }),
    ForumRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<ForumRouteArgs>();
          return _i17.ForumPage(
              key: args.key, forumId: args.forumId, pollAdded: args.pollAdded);
        }),
    CommentRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<CommentRouteArgs>();
          return _i18.CommentPage(key: args.key, forum: args.forum);
        }),
    NotificationRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i19.NotificationPage();
        }),
    ModuleForumRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<ModuleForumRouteArgs>();
          return _i20.ModuleForumPage(
              key: args.key, moduleCode: args.moduleCode);
        }),
    ForumTabRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i21.ForumTabPage();
        }),
    LocationChatFormRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i22.LocationChatFormPage();
        }),
    LocationChatRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i23.LocationChatPage();
        }),
    LocationConvoRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<LocationConvoRouteArgs>();
          return _i24.LocationConvoPage(
              key: args.key, convoId: args.convoId, title: args.title);
        }),
    FullScreenPhotoRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<FullScreenPhotoRouteArgs>();
          return _i25.FullScreenPhotoPage(
              key: args.key, photoUrl: args.photoUrl, tag: args.tag);
        }),
    FollowersandFollowingRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<FollowersandFollowingRouteArgs>();
          return _i26.FollowersandFollowingPage(
              key: args.key,
              userProfile: args.userProfile,
              isOwnProfile: args.isOwnProfile,
              isFollowers: args.isFollowers);
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(SplashRoute.name, path: '/'),
        _i1.RouteConfig(SignInRoute.name, path: '/sign-in-page'),
        _i1.RouteConfig(HomeRoute.name, path: '/home-page'),
        _i1.RouteConfig(RegisterRoute.name, path: '/register-page'),
        _i1.RouteConfig(VerifyEmailRoute.name, path: '/verify-email-page'),
        _i1.RouteConfig(RegisterProfileRoute.name,
            path: '/register-profile-page'),
        _i1.RouteConfig(ResetPasswordRoute.name, path: '/reset-password-page'),
        _i1.RouteConfig(ProfileRoute.name, path: '/profile-page'),
        _i1.RouteConfig(SearchUsersRoute.name, path: '/search-users-page'),
        _i1.RouteConfig(UpdateProfileRoute.name, path: '/update-profile-page'),
        _i1.RouteConfig(OtherProfileRoute.name, path: '/other-profile-page'),
        _i1.RouteConfig(ForumFormRoute.name, path: '/forum-form-page'),
        _i1.RouteConfig(ChatListRoute.name, path: '/chat-list-page'),
        _i1.RouteConfig(ConvoRoute.name, path: '/convo-page'),
        _i1.RouteConfig(ForumRoute.name, path: '/forum-page'),
        _i1.RouteConfig(CommentRoute.name, path: '/comment-page'),
        _i1.RouteConfig(NotificationRoute.name, path: '/notification-page'),
        _i1.RouteConfig(ModuleForumRoute.name, path: '/module-forum-page'),
        _i1.RouteConfig(ForumTabRoute.name, path: '/forum-tab-page'),
        _i1.RouteConfig(LocationChatFormRoute.name,
            path: '/location-chat-form-page'),
        _i1.RouteConfig(LocationChatRoute.name, path: '/location-chat-page'),
        _i1.RouteConfig(LocationConvoRoute.name, path: '/location-convo-page'),
        _i1.RouteConfig(FullScreenPhotoRoute.name,
            path: '/full-screen-photo-page'),
        _i1.RouteConfig(FollowersandFollowingRoute.name,
            path: '/followersand-following-page')
      ];
}

class SplashRoute extends _i1.PageRouteInfo {
  const SplashRoute() : super(name, path: '/');

  static const String name = 'SplashRoute';
}

class SignInRoute extends _i1.PageRouteInfo {
  const SignInRoute() : super(name, path: '/sign-in-page');

  static const String name = 'SignInRoute';
}

class HomeRoute extends _i1.PageRouteInfo {
  const HomeRoute() : super(name, path: '/home-page');

  static const String name = 'HomeRoute';
}

class RegisterRoute extends _i1.PageRouteInfo {
  const RegisterRoute() : super(name, path: '/register-page');

  static const String name = 'RegisterRoute';
}

class VerifyEmailRoute extends _i1.PageRouteInfo {
  const VerifyEmailRoute() : super(name, path: '/verify-email-page');

  static const String name = 'VerifyEmailRoute';
}

class RegisterProfileRoute extends _i1.PageRouteInfo {
  const RegisterProfileRoute() : super(name, path: '/register-profile-page');

  static const String name = 'RegisterProfileRoute';
}

class ResetPasswordRoute extends _i1.PageRouteInfo {
  const ResetPasswordRoute() : super(name, path: '/reset-password-page');

  static const String name = 'ResetPasswordRoute';
}

class ProfileRoute extends _i1.PageRouteInfo<ProfileRouteArgs> {
  ProfileRoute({_i2.Key? key, required bool canGoBack})
      : super(name,
            path: '/profile-page',
            args: ProfileRouteArgs(key: key, canGoBack: canGoBack));

  static const String name = 'ProfileRoute';
}

class ProfileRouteArgs {
  const ProfileRouteArgs({this.key, required this.canGoBack});

  final _i2.Key? key;

  final bool canGoBack;
}

class SearchUsersRoute extends _i1.PageRouteInfo<SearchUsersRouteArgs> {
  SearchUsersRoute({_i2.Key? key, required String ownId})
      : super(name,
            path: '/search-users-page',
            args: SearchUsersRouteArgs(key: key, ownId: ownId));

  static const String name = 'SearchUsersRoute';
}

class SearchUsersRouteArgs {
  const SearchUsersRouteArgs({this.key, required this.ownId});

  final _i2.Key? key;

  final String ownId;
}

class UpdateProfileRoute extends _i1.PageRouteInfo {
  const UpdateProfileRoute() : super(name, path: '/update-profile-page');

  static const String name = 'UpdateProfileRoute';
}

class OtherProfileRoute extends _i1.PageRouteInfo<OtherProfileRouteArgs> {
  OtherProfileRoute({_i2.Key? key, required _i27.Profile userProfile})
      : super(name,
            path: '/other-profile-page',
            args: OtherProfileRouteArgs(key: key, userProfile: userProfile));

  static const String name = 'OtherProfileRoute';
}

class OtherProfileRouteArgs {
  const OtherProfileRouteArgs({this.key, required this.userProfile});

  final _i2.Key? key;

  final _i27.Profile userProfile;
}

class ForumFormRoute extends _i1.PageRouteInfo {
  const ForumFormRoute() : super(name, path: '/forum-form-page');

  static const String name = 'ForumFormRoute';
}

class ChatListRoute extends _i1.PageRouteInfo {
  const ChatListRoute() : super(name, path: '/chat-list-page');

  static const String name = 'ChatListRoute';
}

class ConvoRoute extends _i1.PageRouteInfo<ConvoRouteArgs> {
  ConvoRoute({_i2.Key? key, required _i27.Profile otherProfile})
      : super(name,
            path: '/convo-page',
            args: ConvoRouteArgs(key: key, otherProfile: otherProfile));

  static const String name = 'ConvoRoute';
}

class ConvoRouteArgs {
  const ConvoRouteArgs({this.key, required this.otherProfile});

  final _i2.Key? key;

  final _i27.Profile otherProfile;
}

class ForumRoute extends _i1.PageRouteInfo<ForumRouteArgs> {
  ForumRoute({_i2.Key? key, required String forumId, required bool pollAdded})
      : super(name,
            path: '/forum-page',
            args: ForumRouteArgs(
                key: key, forumId: forumId, pollAdded: pollAdded));

  static const String name = 'ForumRoute';
}

class ForumRouteArgs {
  const ForumRouteArgs(
      {this.key, required this.forumId, required this.pollAdded});

  final _i2.Key? key;

  final String forumId;

  final bool pollAdded;
}

class CommentRoute extends _i1.PageRouteInfo<CommentRouteArgs> {
  CommentRoute({_i2.Key? key, required _i28.ForumPost forum})
      : super(name,
            path: '/comment-page',
            args: CommentRouteArgs(key: key, forum: forum));

  static const String name = 'CommentRoute';
}

class CommentRouteArgs {
  const CommentRouteArgs({this.key, required this.forum});

  final _i2.Key? key;

  final _i28.ForumPost forum;
}

class NotificationRoute extends _i1.PageRouteInfo {
  const NotificationRoute() : super(name, path: '/notification-page');

  static const String name = 'NotificationRoute';
}

class ModuleForumRoute extends _i1.PageRouteInfo<ModuleForumRouteArgs> {
  ModuleForumRoute({_i2.Key? key, required String moduleCode})
      : super(name,
            path: '/module-forum-page',
            args: ModuleForumRouteArgs(key: key, moduleCode: moduleCode));

  static const String name = 'ModuleForumRoute';
}

class ModuleForumRouteArgs {
  const ModuleForumRouteArgs({this.key, required this.moduleCode});

  final _i2.Key? key;

  final String moduleCode;
}

class ForumTabRoute extends _i1.PageRouteInfo {
  const ForumTabRoute() : super(name, path: '/forum-tab-page');

  static const String name = 'ForumTabRoute';
}

class LocationChatFormRoute extends _i1.PageRouteInfo {
  const LocationChatFormRoute() : super(name, path: '/location-chat-form-page');

  static const String name = 'LocationChatFormRoute';
}

class LocationChatRoute extends _i1.PageRouteInfo {
  const LocationChatRoute() : super(name, path: '/location-chat-page');

  static const String name = 'LocationChatRoute';
}

class LocationConvoRoute extends _i1.PageRouteInfo<LocationConvoRouteArgs> {
  LocationConvoRoute(
      {_i2.Key? key, required String convoId, required String title})
      : super(name,
            path: '/location-convo-page',
            args: LocationConvoRouteArgs(
                key: key, convoId: convoId, title: title));

  static const String name = 'LocationConvoRoute';
}

class LocationConvoRouteArgs {
  const LocationConvoRouteArgs(
      {this.key, required this.convoId, required this.title});

  final _i2.Key? key;

  final String convoId;

  final String title;
}

class FullScreenPhotoRoute extends _i1.PageRouteInfo<FullScreenPhotoRouteArgs> {
  FullScreenPhotoRoute(
      {_i2.Key? key, required String photoUrl, required String tag})
      : super(name,
            path: '/full-screen-photo-page',
            args: FullScreenPhotoRouteArgs(
                key: key, photoUrl: photoUrl, tag: tag));

  static const String name = 'FullScreenPhotoRoute';
}

class FullScreenPhotoRouteArgs {
  const FullScreenPhotoRouteArgs(
      {this.key, required this.photoUrl, required this.tag});

  final _i2.Key? key;

  final String photoUrl;

  final String tag;
}

class FollowersandFollowingRoute
    extends _i1.PageRouteInfo<FollowersandFollowingRouteArgs> {
  FollowersandFollowingRoute(
      {_i2.Key? key,
      required _i27.Profile userProfile,
      required bool isOwnProfile,
      required bool isFollowers})
      : super(name,
            path: '/followersand-following-page',
            args: FollowersandFollowingRouteArgs(
                key: key,
                userProfile: userProfile,
                isOwnProfile: isOwnProfile,
                isFollowers: isFollowers));

  static const String name = 'FollowersandFollowingRoute';
}

class FollowersandFollowingRouteArgs {
  const FollowersandFollowingRouteArgs(
      {this.key,
      required this.userProfile,
      required this.isOwnProfile,
      required this.isFollowers});

  final _i2.Key? key;

  final _i27.Profile userProfile;

  final bool isOwnProfile;

  final bool isFollowers;
}
