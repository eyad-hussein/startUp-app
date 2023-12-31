import 'package:flutter/material.dart';

class CustomBottomNavigatorBar extends StatefulWidget {
  const CustomBottomNavigatorBar({super.key});

  @override
  State<CustomBottomNavigatorBar> createState() => _BottomNavigatorBarState();
}

class _BottomNavigatorBarState extends State<CustomBottomNavigatorBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white.withOpacity(0.6),
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_rounded),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_wallet),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
