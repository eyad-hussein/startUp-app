import 'package:app/controllers/auth_controller.dart';
import 'package:app/controllers/product_controller.dart';
import 'package:app/controllers/user_controller.dart';
import 'package:app/shared/routes.dart';
import 'package:app/shared/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  await dotenv.load(fileName: ".env");
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final UserController userController = Get.put(UserController());
  final AuthController authController = Get.put(AuthController());
  final ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    // return const MaterialApp(home: const Test());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes
          .loginScreenRoute, // Restore it to default after finishing testing
      getPages: getPages,
      themeMode: ThemeMode.light,
      theme: kLightTheme,
      darkTheme: kDarkTheme,
    );
  }
}

// class MyApp extends StatelessWidget {
//   MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.white,
//         body: Text("hi"),
//       ),
//     );
//   }
// }
