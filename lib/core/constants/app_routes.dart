import 'package:get/get.dart';
import '../../view/doctor_schedules_screen/doctor_schedules_screen.dart';
import '../../view/home_screen/home_screen.dart';
import '../../view/my_booking_screen/my_booking_screen.dart';
import '../../view/notification_screen/notification_screen.dart';
import '../../view/posts_screen/posts_screen.dart';
import '../../view/sign_in_screen/sign_in_screen.dart';
import '../../view/sign_up_screen/sign_up_controller.dart';
import '../../view/welcome_screen/welcome_screen.dart';
import '../bindings/doctor_scaduales_binding.dart';
import '../bindings/home_binding.dart';
import '../bindings/my_booking_binding.dart';
import '../bindings/notification_binding.dart';
import '../bindings/posts_binding.dart';
import '../bindings/sign_in_binding.dart';
import '../bindings/sign_up_binding.dart';
import '../bindings/welcome_binding.dart';


class AppRoutes {
  static const String _homeScreen = '/home';
  static String goToHomeRoute() => _homeScreen;

  static const String _signInScreen = '/';
  static String goToSignInRoute() => _signInScreen;

  static const String _signUpScreen = '/signUp';
  static String goToSignUpRoute() => _signUpScreen;
  //
  static const String _doctorSchedulesScreen = '/DoctorSchedules';
  static String goToDoctorSchedulesRoute() => _doctorSchedulesScreen;

  static const String _myBookingScreen = '/MyBooking';
  static String goToMyBookingRoute() => _myBookingScreen;

  static const String _notificationScreen = '/Notification';
  static String goToNotificationRoute() => _notificationScreen;

  static const String _postsScreen = '/PostsScreen';
  static String goToPostsRoute() => _postsScreen;

  static const String _welcomeScreen = '/Welcome';
  static String goToWelcomeRoute() => _welcomeScreen;

  // static const String _welcomeScreen = '/Welcome';
  // static String goToWelcomeRoute() => _welcomeScreen;

  static List<GetPage> routes = [
    GetPage(
        page: () =>  const HomeScreen(),
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
    //
    GetPage(
        page: () =>  DoctorSchedulesScreen(),
        name: _doctorSchedulesScreen,
        binding: DoctorSchedulesBinding()),
    GetPage(
        page: () =>  MyBookingScreen(),
        name: _myBookingScreen,
        binding: MyBookingBinding()),
    GetPage(
        page: () =>  const NotificationScreen(),
        name: _notificationScreen,
        binding: NotificationsBinding()),
    GetPage(
        page: () =>  const PostsScreen(),
        name: _postsScreen,
        binding: PostsBinding()),
    GetPage(
        page: () =>  const WelcomeScreen(),
        name: _welcomeScreen ,
        binding: WelcomeBinding()),
    // GetPage(
    //     page: () =>  SignUpScreen(),
    //     name: _signUpScreen,
    //     binding: SignUpBinding()),
  ];
}
