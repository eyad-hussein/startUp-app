import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'package:app/shared/routes.dart';

class CustomBottomNavigatorBar extends StatefulWidget {
  const CustomBottomNavigatorBar({super.key});

  @override
  State<CustomBottomNavigatorBar> createState() => _BottomNavigatorBarState();
}

class _BottomNavigatorBarState extends State<CustomBottomNavigatorBar> {
  int _selectedIndex = 0;
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

    return Container(
      height: getHeight(85),
      decoration: BoxDecoration(
        gradient: RadialGradient(
          center: Alignment.topLeft,
          radius: 1.0,
          colors: [
            Colors.black.withOpacity(0.75),
            Colors.black.withOpacity(1.0),
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: BottomNavigationBar(
            backgroundColor: Colors.transparent,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white.withOpacity(0.3),
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            currentIndex: _selectedIndex,
            onTap: (index) {
              setState(() {
                _selectedIndex = index;
              });
              if (index == 3) {
                Get.offNamed(Routes.addressScreenRoute);
              }
              if (index == 2) {
                Get.offNamed(Routes.cartScreenRoute);
              }
            },
            items: [
              const BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/heart-nav.svg',
                  color: (_selectedIndex == 1)
                      ? Colors.white
                      : Colors.white.withOpacity(0.3),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/bag-nav.svg',
                  color: (_selectedIndex == 2)
                      ? Colors.white
                      : Colors.white.withOpacity(0.3),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/wallet.svg',
                  color: (_selectedIndex == 3)
                      ? Colors.white
                      : Colors.white.withOpacity(0.3),
                ),
                label: '',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
