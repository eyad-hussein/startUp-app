import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:app/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    Future.delayed(
      const Duration(seconds: 3),
      () => Get.offNamed(Routes.loginScreenRoute),
    );
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              'assets/images/logo.svg',
            ),
            Text(
              'Styleach',
              style: TextStyle(
                fontSize: Theme.of(context).textTheme.displayLarge!.fontSize,
                fontWeight:
                    Theme.of(context).textTheme.displayLarge!.fontWeight,
              ),
            ),
            Text(
              'Find Your Style',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w400,
                fontFamily: GoogleFonts.sacramento().fontFamily,
              ),
            )
          ],
        ),
      ),
    );
  }
}
