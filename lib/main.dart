import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app/routes.dart';
import 'package:app/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.splashScreenRoute,
      getPages: getPages,
      themeMode: ThemeMode.light,
      theme: kLightTheme,
      darkTheme: kDarkTheme,
    );
  }
}
