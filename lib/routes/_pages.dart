import 'package:get/get.dart';
import 'package:naturemedix_admin/views/auth/login.dart';
import 'package:naturemedix_admin/views/home.dart';
import 'package:naturemedix_admin/views/landing.dart';

import '../views/auth/signup.dart';

class SystemPage {
  static const String _landing = '/';
  static const String _login = '/login';
  static const String _signup = '/signup';
  static const String _home = '/home';

  static get getLadingPage => _landing;
  static get getLoginPage => _login;
  static get getSignupPage => _signup;
  static get getHomePage => _home;

  static List<GetPage> routes = [
    GetPage(name: _landing, page: () => const LandingPage()),
    GetPage(name: _login, page: () => const LoginPage()),
    GetPage(name: _signup, page: () => const SignupPage()),
    GetPage(name: _home, page: () => const HomePage()),
  ];
}
