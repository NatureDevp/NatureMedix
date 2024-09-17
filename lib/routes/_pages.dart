import 'package:get/get.dart';
import 'package:naturemedix_admin/views/auth/login.dart';
import 'package:naturemedix_admin/views/main.dart';
import 'package:naturemedix_admin/views/landing.dart';
import 'package:naturemedix_admin/views/pages/request/req_list.dart';
import 'package:naturemedix_admin/views/pages/workplace/work.dart';
import '../views/auth/signup.dart';

class SystemPage {
  static const String _landing = '/';
  static const String _login = '/login';
  static const String _signup = '/signup';
  static const String _mainpage = '/main';
  static const String _request_listpage = '/request_list';
  static const String _workplacepage = '/workplace';

  static get getLadingPage => _landing;
  static get getLoginPage => _login;
  static get getSignupPage => _signup;
  static get getMainpage => _mainpage;
  static get getRequestListpage => _request_listpage;
  static get getWorkplacepage => _workplacepage;

  static List<GetPage> routes = [
    GetPage(
      name: _landing,
      page: () => const LandingPage(),
      transition: Transition.fade,
      transitionDuration: const Duration(milliseconds: 300),
    ),
    GetPage(
      name: _login,
      page: () => const LoginPage(),
      transition: Transition.fade,
      transitionDuration: const Duration(milliseconds: 300),
    ),
    GetPage(
      name: _signup,
      page: () => const SignupPage(),
      transition: Transition.fade,
      transitionDuration: const Duration(milliseconds: 300),
    ),
    GetPage(
      name: _mainpage,
      page: () => Mainpage(),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: getRequestListpage,
      page: () => const RequestListPage(),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: getWorkplacepage,
      page: () => const WorkplacePage(),
      transition: Transition.cupertino,
    ),
  ];
}
