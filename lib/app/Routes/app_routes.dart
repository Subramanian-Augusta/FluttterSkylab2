part of 'app_pages.dart';

abstract class Routes {
  Routes._();

  static const ACTIVITYWALL = _Paths.ACTIVITYWALL;
  static const LOGIN = _Paths.LOGIN;
static const SIGNUP = _Paths.SIGNUP;
  static const PROFILE = _Paths.PROFILE;
 
}

abstract class _Paths {
  static const ACTIVITYWALL = '/activitywall';
  static const LOGIN = '/login';
  static const SIGNUP = '/signup';
  static const PROFILE = '/profile';
 
}