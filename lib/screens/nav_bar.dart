import 'package:fashion/screens/product_screen.dart';
import 'package:flutter/material.dart';
import '../utils/colors.dart';
import 'home_screen.dart';

List<Widget> screens = [
  const HomeScreen(),
  const ProductScreen(),
];

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: screens[_currentIndex],
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
        backgroundColor: Colors.grey.shade900,
        selectedFontSize: 0,
        enableFeedback: true,
        iconSize: 30,
        onTap: (index) {
          if (index <= 1) {
            setState(() {
              _currentIndex = index;
            });
          } else {}
        },
        selectedItemColor: AppColors.buttonColor,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_rounded),
            label: "Shop",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shop),
            label: "Shop",
          ),
        ],
      ),
    );
  }
}