import 'package:app/screens/address_screen.dart';
import 'package:app/screens/cart_screen.dart';
import 'package:app/screens/login_screen.dart';
import 'package:app/screens/onboarding_screen.dart';
import 'package:app/screens/product_overview_screen.dart';
import 'package:app/screens/providers_screen.dart';
import 'package:app/screens/signup_screen.dart';
import 'package:get/get.dart';
import 'package:app/screens/splash_screen.dart';

class Routes {
  static String splashScreenRoute = '/splash-screen';
  static String loginScreenRoute = '/login-screen';
  static String signupScreenRoute = '/signup-screen';
  static String providersScreenRoute = '/providers-screen';
  static String onBoardingPageRoute = '/onboarding-screen';
  static String productScreenRoute = '/product-overview-screen';
  static String addressScreenRoute = '/address-screen';
  static String cartScreenRoute = '/cart-screen';
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
  GetPage(name: Routes.onBoardingPageRoute,
      page: () => const OnBoardingScreen()
  ),
  GetPage(
    name: Routes.productScreenRoute,
    page: () => const ProductOverviewScreen(),
  ),
  GetPage(
    name: Routes.addressScreenRoute,
    page: () => const AddressScreen(),
  ),
  GetPage(
    name: Routes.cartScreenRoute,
    page: () => const CartScreen(),
  ),
];
