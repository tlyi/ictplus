// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;
import 'package:ictplus/domain/data/profile/profile.dart' as _i12;
import 'package:ictplus/presentation/core/full_screen_photo.dart' as _i10;
import 'package:ictplus/presentation/home/home_page.dart' as _i5;
import 'package:ictplus/presentation/notifications/notification_page.dart'
    as _i9;
import 'package:ictplus/presentation/profile/other_profile_page.dart' as _i8;
import 'package:ictplus/presentation/profile/profile_page.dart' as _i7;
import 'package:ictplus/presentation/sign_in/reset_password_page.dart' as _i6;
import 'package:ictplus/presentation/sign_in/sign_in_page.dart' as _i4;
import 'package:ictplus/presentation/sign_in/singpass_page.dart' as _i11;
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
    ResetPasswordRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i6.ResetPasswordPage();
        }),
    ProfileRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<ProfileRouteArgs>();
          return _i7.ProfilePage(key: args.key, canGoBack: args.canGoBack);
        }),
    OtherProfileRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<OtherProfileRouteArgs>();
          return _i8.OtherProfilePage(
              key: args.key, userProfile: args.userProfile);
        }),
    NotificationRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i9.NotificationPage();
        }),
    FullScreenPhotoRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<FullScreenPhotoRouteArgs>();
          return _i10.FullScreenPhotoPage(
              key: args.key, photoUrl: args.photoUrl, tag: args.tag);
        }),
    SingPassRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i11.SingPassPage();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(SplashRoute.name, path: '/'),
        _i1.RouteConfig(SignInRoute.name, path: '/sign-in-page'),
        _i1.RouteConfig(HomeRoute.name, path: '/home-page'),
        _i1.RouteConfig(ResetPasswordRoute.name, path: '/reset-password-page'),
        _i1.RouteConfig(ProfileRoute.name, path: '/profile-page'),
        _i1.RouteConfig(OtherProfileRoute.name, path: '/other-profile-page'),
        _i1.RouteConfig(NotificationRoute.name, path: '/notification-page'),
        _i1.RouteConfig(FullScreenPhotoRoute.name,
            path: '/full-screen-photo-page'),
        _i1.RouteConfig(SingPassRoute.name, path: '/sing-pass-page')
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

class OtherProfileRoute extends _i1.PageRouteInfo<OtherProfileRouteArgs> {
  OtherProfileRoute({_i2.Key? key, required _i12.Profile userProfile})
      : super(name,
            path: '/other-profile-page',
            args: OtherProfileRouteArgs(key: key, userProfile: userProfile));

  static const String name = 'OtherProfileRoute';
}

class OtherProfileRouteArgs {
  const OtherProfileRouteArgs({this.key, required this.userProfile});

  final _i2.Key? key;

  final _i12.Profile userProfile;
}

class NotificationRoute extends _i1.PageRouteInfo {
  const NotificationRoute() : super(name, path: '/notification-page');

  static const String name = 'NotificationRoute';
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

class SingPassRoute extends _i1.PageRouteInfo {
  const SingPassRoute() : super(name, path: '/sing-pass-page');

  static const String name = 'SingPassRoute';
}
