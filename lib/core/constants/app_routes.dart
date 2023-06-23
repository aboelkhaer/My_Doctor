import 'package:get/get.dart';

import '../../view/home_screen/home_screen.dart';
import '../../view/sign_in_screen/sign_in_screen.dart';
import '../../view/sign_up_screen/sign_up_controller.dart';
import '../bindings/home_binding.dart';
import '../bindings/sign_in_binding.dart';
import '../bindings/sign_up_binding.dart';


class AppRoutes {
  static const String _homeScreen = '/home';
  static String goToHomeRoute() => _homeScreen;

  static const String _signInScreen = '/';
  static String goToSignInRoute() => _signInScreen;

  static const String _signUpScreen = '/signUp';
  static String goToSignUpRoute() => _signUpScreen;

  static List<GetPage> routes = [
    GetPage(
        page: () => const HomeScreen(),
        name: _homeScreen,
        binding: HomeBinding()),
    GetPage(
        page: () =>  SignInScreen(),
        name: _signInScreen,
        binding: SignInBinding()),
    GetPage(
        page: () =>  SignUpScreen(),
        name: _signUpScreen,
        binding: SignUpBinding()),
  ];
}
