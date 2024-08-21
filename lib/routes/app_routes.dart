import 'package:get/get.dart';
import 'package:socialapp/screens/auth/view/log_in.dart';
import 'package:socialapp/screens/auth/view/signUp.dart';
import 'package:socialapp/screens/splash.dart';


class AppRoutes {
  static const String splash = '/';
  static const String login = '/login';
  static const String signUp = '/signUp';
  static const String verify = '/verify';
  static const String findByEmail = '/findByEmail';
  static const String findByPhone = '/findByPhone';
  static const String continueScreen = '/continueScreen';

  static List<GetPage> routes = [
    GetPage(
      name: splash,
      page: () => const Splash(),
      transition: Transition.fadeIn, // Add transition here
      transitionDuration: const Duration(milliseconds: 500), // Optional: specify duration
    ),
    GetPage(
      name: login,
      page: () => const LogIn(),
      transition: Transition.fadeIn, // Add transition here
      transitionDuration: const Duration(milliseconds: 500), // Optional: specify duration
    ),
    GetPage(
      name: signUp,
      page: () => const SignUp(),
      transition: Transition.rightToLeftWithFade, // Different transition for another route
      transitionDuration: const Duration(milliseconds: 700), // Optional: specify duration
    ),
    // Add more routes with custom transitions here
  ];
}
