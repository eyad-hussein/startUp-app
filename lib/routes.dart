import 'package:app/screens/address_screen.dart';
import 'package:app/screens/cart_screen.dart';
import 'package:app/screens/login_screen.dart';
import 'package:app/screens/onboarding_screen.dart';
import 'package:app/screens/product_overview_screen.dart';
import 'package:app/screens/order_confirmed_screen.dart';
import 'package:app/screens/add_new_card_screen.dart';
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
  static String onBoardingPageRoute = '/onboarding-screen';
  static String productScreenRoute = '/product-overview-screen';
  static String addressScreenRoute = '/address-screen';
  static String cartScreenRoute = '/cart-screen';
  static String onBoardingScreenRoute = '/onboarding-screen';
  static String paymentScreenRoute = '/payment-screen';
  static String addNewCardScreenRoute = '/add-new-card-screen';
  static String orderConfirmedScreenRoute = '/order-confirmed-screen';
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
    name: Routes.onBoardingScreenRoute,
    page: () => const OnBoardingScreen(),
  ),
  GetPage(
    name: Routes.paymentScreenRoute,
    page: () => const PaymentScreen(),
  ),
  GetPage(
    name: Routes.orderConfirmedScreenRoute,
    page: () => const OrderConfirmedScreen(),
  ),
  GetPage(
    name: Routes.addNewCardScreenRoute,
    page: () => const AddNewCardScreen(),
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
