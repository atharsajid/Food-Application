import 'package:flutter/material.dart';
import 'package:food_app/colors.dart';

class Navbar extends StatefulWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  bool isSelected1 = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              isSelected1 = true;
            });
          },
          child: Icon(
            Icons.phone,
            color: isSelected1 ? primarycolor : greycolor,
            size: 30,
          ),
        ),
      ],
    );
  }
}
