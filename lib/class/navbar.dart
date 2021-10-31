import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:food_app/colors.dart';

class Navbar extends StatefulWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int index = 2;
  bool isSelected1 = false;
  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      backgroundColor: Colors.transparent,
      color: backgroundcolor,
      height: 55,
      index: index,
      items: [
        Icon(
          Icons.phone,
          size: 30,
          color: primarycolor,
        ),
        Icon(
          Icons.bookmark,
          size: 30,
          color: primarycolor,
        ),
        Icon(
          Icons.shopping_cart_rounded,
          size: 30,
          color: primarycolor,
        ),
        Icon(
          Icons.history,
          color: primarycolor,
          size: 30,
        ),
        Icon(
          Icons.person,
          size: 30,
          color: primarycolor,
        ),
      ],
    );
  }
}
