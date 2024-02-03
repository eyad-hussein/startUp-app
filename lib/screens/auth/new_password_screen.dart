import 'package:app/widgets/custom_bottom_nav_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NewPasswordScreen extends StatelessWidget {
  const NewPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    double getHeight(double height) {
      return screenHeight * height / 812.0;
    }

    double getWidth(double width) {
      return screenWidth * width / 375.0;
    }

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      bottomNavigationBar: CustomBottomNavBar(
        text: 'Reset Password',
        height: getHeight(75),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: getHeight(45),
              left: getWidth(20),
            ),
            child: Container(
              width: getHeight(45),
              height: getHeight(45),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFF5F6FA),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: getHeight(10),
                ),
                child: SvgPicture.asset('assets/icons/arrow-left.svg'),
              ),
            ),
          ),
          SizedBox(
            height: getHeight(15),
          ),
          Center(
            child: Text(
              "New Password",
              style: TextStyle(
                fontSize: Theme.of(context).textTheme.displayMedium!.fontSize,
                fontWeight:
                    Theme.of(context).textTheme.displayMedium!.fontWeight,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: getHeight(186),
              left: getWidth(20),
              right: getWidth(20),
            ),
            child: TextFormField(
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontWeight: FontWeight.w500,
              ),
              cursorColor: Theme.of(context).colorScheme.secondary,
              decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
                  fontWeight: FontWeight.w500,
                ),
                contentPadding: const EdgeInsets.only(bottom: 13),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFF8F959E),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: getHeight(20),
              left: getWidth(20),
              right: getWidth(20),
            ),
            child: TextFormField(
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontWeight: FontWeight.w500,
              ),
              cursorColor: Theme.of(context).colorScheme.secondary,
              decoration: InputDecoration(
                labelText: 'Confirm Password',
                labelStyle: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
                  fontWeight: FontWeight.w500,
                ),
                contentPadding: const EdgeInsets.only(bottom: 13),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFF8F959E),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: getWidth(87),
              top: getHeight(230),
            ),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
                  fontSize: 15,
                  height: 1.4,
                ),
                children: const [
                  TextSpan(text: "Please write your new password."),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
