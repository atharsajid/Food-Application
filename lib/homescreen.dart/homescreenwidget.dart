import 'package:flutter/material.dart';
import 'package:food_app/colors.dart';
import 'package:food_app/homescreen.dart/hscreen_configration.dart';

Widget menulogo() {
  return Container(
    margin: EdgeInsets.only(top: 80),
    padding: EdgeInsets.symmetric(horizontal: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(menuimage),
        circleContainer(60, 60, 3, dpimage),
      ],
    ),
  );
}

Widget location(String locationName) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(
        Icons.location_on_rounded,
        color: primarycolor,
      ),
      SizedBox(
        width: 5,
      ),
      Text(
        locationName,
        style: locaitontxt,
      ),
      Icon(
        Icons.keyboard_arrow_down,
      ),
    ],
  );
}
