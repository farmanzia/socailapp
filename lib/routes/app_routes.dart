import 'package:get/get.dart';
import 'package:socialapp/screens/auth/view/contiue_screen.dart';
import 'package:socialapp/screens/auth/view/findAccountByMobile.dart';
import 'package:socialapp/screens/auth/view/find_account_by_email.dart';
import 'package:socialapp/screens/auth/view/log_in.dart';
import 'package:socialapp/screens/auth/view/signUp.dart';
import 'package:socialapp/screens/home/connection.dart';
import 'package:socialapp/screens/home/create_event.dart';
import 'package:socialapp/screens/home/event_information.dart';
import 'package:socialapp/screens/home/home.dart';
import 'package:socialapp/screens/home/landing.dart';
import 'package:socialapp/screens/home/message.dart';
import 'package:socialapp/screens/profile/changepassword.dart';
import 'package:socialapp/screens/profile/profile.dart';
import 'package:socialapp/screens/profile/profile_setting.dart';
import 'package:socialapp/screens/profile_creation/add_people.dart';
import 'package:socialapp/screens/profile_creation/add_people.dart';
import 'package:socialapp/screens/profile_creation/interest.dart';
import 'package:socialapp/screens/profile_creation/looking_for.dart';
import 'package:socialapp/screens/profile_creation/permission.dart';
import 'package:socialapp/screens/profile_creation/profile_creation.dart';
import 'package:socialapp/screens/splash.dart';

import '../screens/auth/view/verify.dart';
import '../screens/profile/account.dart';
import '../screens/profile_creation/add_people.dart';


class AppRoutes {
  static const String splash = '/';
  static const String login = '/login';
  static const String signUp = '/signUp';
  static const String verify = '/verify';
  static const String findByEmail = '/findByEmail';
  static const String findByPhone = '/findByPhone';
  static const String continueScreen = '/continueScreen';
  static const String landing = '/landing';
  static const String profileSetting = '/profileSetting';
  static const String profileCreation = '/profileCreation';
  static const String permission = '/permission';
  static const String interest = '/interest';
  static const String looking = '/looking';
  static const String addPeople = '/addPeople';
  static const String home = '/home';
  static const String connection = '/connection';
  static const String eventInformation = '/eventInformation';
  static const String create = '/create';
  static const String settingScreen = '/settingScreen';
  static const String profileScreen = '/profileScreen';
  static const String editProfile = '/editProfile';
  static const String myProfile = '/myProfile';
  static const String account = '/account';
  static const String changePassword = '/changePassword';
  static const String message = '/message';

  static List<GetPage> routes = [
    GetPage(
      name: splash,
      page: () => const Splash(),
      transition: Transition.fadeIn, // Add transition here
      transitionDuration: const Duration(milliseconds: 500), // Optional: specify duration
    ),
    GetPage(
      name: login,
      page: () =>  LogIn(),
      transition: Transition.fadeIn, // Add transition here
      transitionDuration: const Duration(milliseconds: 500), // Optional: specify duration
    ),
    GetPage(
      name: signUp,
      page: () =>  SignUp(),
      transition: Transition.rightToLeftWithFade, // Different transition for another route
      transitionDuration: const Duration(milliseconds: 700), // Optional: specify duration
    ),
    GetPage(
      name: findByPhone,
      page: () =>  FindAccountByMobile(),
      transition: Transition.rightToLeftWithFade, // Different transition for another route
      transitionDuration: const Duration(milliseconds: 700), // Optional: specify duration
    ),
    GetPage(
      name: findByEmail,
      page: () =>  FindAccountByEmail(),
      transition: Transition.rightToLeftWithFade, // Different transition for another route
      transitionDuration: const Duration(milliseconds: 700), // Optional: specify duration
    ),
    GetPage(
      name: continueScreen,
      page: () =>  ContiueScreen(),
      transition: Transition.rightToLeftWithFade, // Different transition for another route
      transitionDuration: const Duration(milliseconds: 700), // Optional: specify duration
    ),
    GetPage(
      name: verify,
      page: () =>  Verify(),
      transition: Transition.rightToLeftWithFade, // Different transition for another route
      transitionDuration: const Duration(milliseconds: 700), // Optional: specify duration
    ),
    GetPage(
      name: landing,
      page: () =>  const LandingScreen(),
      transition: Transition.rightToLeftWithFade, // Different transition for another route
      transitionDuration: const Duration(milliseconds: 700), // Optional: specify duration
    ),
    GetPage(
      name: profileCreation,
      page: () =>  ProfileCreation(),
      transition: Transition.rightToLeftWithFade, // Different transition for another route
      transitionDuration: const Duration(milliseconds: 700), // Optional: specify duration
    ),
    GetPage(
      name: permission,
      page: () =>  Permission(),
      transition: Transition.rightToLeftWithFade, // Different transition for another route
      transitionDuration: const Duration(milliseconds: 700), // Optional: specify duration
    ),
    GetPage(
      name: profileSetting,
      page: () =>  const ProfileSetting(),
      // transition: Transition.rightToLeftWithFade, // Different transition for another route
      // transitionDuration: const Duration(milliseconds: 700), // Optional: specify duration
    ),
    GetPage(
      name: interest,
      page: () => const Interest(),
      transition: Transition.rightToLeftWithFade, // Different transition for another route
      transitionDuration: const Duration(milliseconds: 700), // Optional: specify duration
    ),
    GetPage(
      name: looking,
      page: () => const LookingScreen(),
      transition: Transition.rightToLeftWithFade, // Different transition for another route
      transitionDuration: const Duration(milliseconds: 700), // Optional: specify duration
    ),
    GetPage(
      name: addPeople,
      page: () => const  AddPeople(),
      transition: Transition.rightToLeftWithFade, // Different transition for another route
      transitionDuration: const Duration(milliseconds: 700), // Optional: specify duration
    ),GetPage(
      name: home,
      page: () =>   Home(),
      transition: Transition.rightToLeftWithFade, // Different transition for another route
      transitionDuration: const Duration(milliseconds: 700), // Optional: specify duration
    ),
    GetPage(
      name: connection,
      page: () => const  Connection(),
      transition: Transition.rightToLeftWithFade, // Different transition for another route
      transitionDuration: const Duration(milliseconds: 700), // Optional: specify duration
    ),
    GetPage(
      name: eventInformation,
      page: () => const  EventInformation(),
      transition: Transition.rightToLeftWithFade, // Different transition for another route
      transitionDuration: const Duration(milliseconds: 700), // Optional: specify duration
    ),
    GetPage(
      name: create,
      page: () =>   CreateEvent(),
      transition: Transition.rightToLeftWithFade, // Different transition for another route
      transitionDuration: const Duration(milliseconds: 700), // Optional: specify duration
    ),
    // GetPage(
    //   name: settingScreen,
    //   page: () =>   const ProfileSetting(),
    //   // transition: Transition.rightToLeftWithFade, // Different transition for another route
    //   // transitionDuration: const Duration(milliseconds: 700), // Optional: specify duration
    // ),

    GetPage(
      name: editProfile,
      page: () =>   const EditProfile(),
      // transition: Transition.rightToLeftWithFade, // Different transition for another route
      // transitionDuration: const Duration(milliseconds: 700), // Optional: specify duration
    ),
    GetPage(
      name: myProfile,
      page: () =>   const ProfileSetting(),
      transition: Transition.rightToLeftWithFade, // Different transition for another route
      transitionDuration: const Duration(milliseconds: 700), // Optional: specify duration
    ),
    GetPage(
      name: account,
      page: () =>   const Account(),
      // transition: Transition.rightToLeftWithFade, // Different transition for another route
      // transitionDuration: const Duration(milliseconds: 700), // Optional: specify duration
    ),

    GetPage(
      name: changePassword,
      page: () =>   const ChangePassword(),
      transition: Transition.rightToLeftWithFade, // Different transition for another route
      transitionDuration: const Duration(milliseconds: 700), // Optional: specify duration
    ),
    GetPage(
      name: message,
      page: () =>    Message(),
      transition: Transition.rightToLeftWithFade, // Different transition for another route
      transitionDuration: const Duration(milliseconds: 700), // Optional: specify duration
    ),
  ];
}
