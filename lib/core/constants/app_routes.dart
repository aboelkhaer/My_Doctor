import 'package:get/get.dart';
import 'package:my_doctor/core/bindings/home_binding.dart';
import 'package:my_doctor/core/bindings/sign_in_binding.dart';
import 'package:my_doctor/core/bindings/sign_up_binding.dart';
import 'package:my_doctor/view/home_screen/home_screen.dart';
import 'package:my_doctor/view/sign_in_screen/sign_in_screen.dart';
import 'package:my_doctor/view/sign_up_screen/sign_up_controller.dart';

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
        page: () => const SignInScreen(),
        name: _signInScreen,
        binding: SignInBinding()),
    GetPage(
        page: () => const SignUpScreen(),
        name: _signUpScreen,
        binding: SignUpBinding()),
  ];
}
