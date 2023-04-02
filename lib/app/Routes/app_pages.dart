import 'package:flutter_application_1/app/ActivityWall/bindings/Activitywall_binding.dart';
import 'package:flutter_application_1/app/ActivityWall/view/Activitywall.dart';
import 'package:flutter_application_1/app/Profile/binding/profile_binding.dart';
import 'package:flutter_application_1/app/Profile/views/Profile.dart';
import 'package:flutter_application_1/app/login/bindings/login_binding.dart';
import 'package:flutter_application_1/app/signup/bindings/signup_binding.dart';
import 'package:flutter_application_1/app/signup/views/SignupPage.dart';
import 'package:get/get.dart';

import '../login/views/login.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(
      name: _Paths.ACTIVITYWALL,
      page: () => ActivityWall(),
      binding: ActivitywallBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUP,
      page: () => SignupView(),
      binding: SignupBinding(),
    ),
   
  ];
}