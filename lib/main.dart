import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app/routes.dart';
import 'package:app/themes.dart';
import 'package:app/controllers/user_controller.dart';
import 'package:app/test.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final UserController userController = Get.put(UserController());

  @override
  Widget build(BuildContext context) {
    // return const MaterialApp(home: const Test());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes
          .addNewCardScreenRoute, // Restore it to default after finishing testing
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
