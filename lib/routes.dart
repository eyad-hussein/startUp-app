import 'package:app/screens/login_screen.dart';
import 'package:app/screens/onboarding_screen.dart';
import 'package:app/screens/payment_screen.dart';
import 'package:app/screens/providers_screen.dart';
import 'package:app/screens/signup_screen.dart';
import 'package:get/get.dart';
import 'package:app/screens/splash_screen.dart';

class Routes {
  static String splashScreenRoute = '/splash-screen';
  static String loginScreenRoute = '/login-screen';
  static String signupScreenRoute = '/signup-screen';
  static String providersScreenRoute = '/providers-screen';
  static String onBoardingScreenRoute = '/onboarding-screen';
  static String paymentScreenRoute = '/payment-screen';
}

final getPages = [
  GetPage(
    name: Routes.splashScreenRoute,
    page: () => const SplashScreen(),
  ),
  GetPage(
    name: Routes.loginScreenRoute,
    page: () => LoginScreen(),
  ),
  GetPage(
    name: Routes.signupScreenRoute,
    page: () => SignUpScreen(),
  ),
  GetPage(
    name: Routes.providersScreenRoute,
    page: () => const ProvidersScreen(),
  ),
  GetPage(
      name: Routes.onBoardingScreenRoute, page: () => const OnBoardingScreen()),
  GetPage(name: Routes.paymentScreenRoute, page: () => const PaymentScreen()),
];
