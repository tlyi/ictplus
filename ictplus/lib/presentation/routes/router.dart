import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:ictplus/presentation/core/full_screen_photo.dart';
import 'package:ictplus/presentation/home/home_page.dart';
import 'package:ictplus/presentation/notifications/notification_page.dart';
import 'package:ictplus/presentation/profile/other_profile_page.dart';
import 'package:ictplus/presentation/profile/profile_page.dart';
import 'package:ictplus/presentation/sign_in/singpass_page.dart';
import 'package:ictplus/presentation/sign_in/reset_password_page.dart';
import 'package:ictplus/presentation/sign_in/sign_in_page.dart';
import 'package:ictplus/presentation/splash/splash_page.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: SignInPage),
    AutoRoute(page: HomePage),
    AutoRoute(page: ResetPasswordPage),
    AutoRoute(page: ProfilePage),
    AutoRoute(page: OtherProfilePage),
    AutoRoute(page: NotificationPage),
    AutoRoute(page: FullScreenPhotoPage),
    AutoRoute(page: SingPassPage),
  ],
)
class $AppRouter {}
