import 'package:app/widgets/custom_bottom_nav_bar_widget.dart';
import 'package:app/widgets/address-screen/custom_slidable_button_widget.dart';
import 'package:app/widgets/custom_title_textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({super.key});

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
      body: Padding(
        padding: EdgeInsets.only(
          top: getHeight(45),
          left: getWidth(20),
          right: getWidth(20),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Container(
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
                Padding(
                  padding: EdgeInsets.only(
                    left: getWidth(95),
                  ),
                  child: const Text(
                    'Address',
                    style: TextStyle(
                      color: Color(0xFF1D1E20),
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                      fontSize: 17,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                top: getHeight(20),
              ),
              child: CustomTitledTextField(
                height: getHeight(87),
                textHint: 'John Doe',
                title: 'Name',
                width: getWidth(335),
                topPadding: getHeight(10),
                textFieldHeight: getHeight(50),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: getHeight(15),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomTitledTextField(
                    textFieldHeight: getHeight(50),
                    title: 'Country',
                    height: getHeight(87),
                    width: getWidth(160),
                    textHint: 'Egypt',
                    topPadding: getHeight(10),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: getWidth(15),
                    ),
                    child: CustomTitledTextField(
                      textFieldHeight: getHeight(50),
                      title: 'City',
                      height: getHeight(87),
                      width: getWidth(160),
                      textHint: 'New Borg El-Arab',
                      topPadding: getHeight(10),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: getHeight(15),
              ),
              child: CustomTitledTextField(
                height: getHeight(87),
                textHint: '+201000000000',
                title: 'Phone Number',
                width: getWidth(335),
                topPadding: getHeight(10),
                textFieldHeight: getHeight(50),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: getHeight(15),
              ),
              child: CustomTitledTextField(
                height: getHeight(87),
                textHint: '12, Court Street, Second District',
                title: 'Address',
                width: getWidth(335),
                topPadding: getHeight(10),
                textFieldHeight: getHeight(50),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: getHeight(15),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Save as primary address',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      color: Color(0xFF1D1E20),
                    ),
                  ),
                  CustomSlidableButton(),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(height: getHeight(80),text: 'Save Address',),
    );
  }
}
