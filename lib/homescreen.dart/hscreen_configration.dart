import 'package:flutter/material.dart';
import 'package:food_app/colors.dart';

//profile picture
String dpimage = "images/dp.jpg";
String menuimage = "images/menu.png";

//Circle Container with image

Widget circleContainer(
    double height, double width, double borederwith, String img) {
  return Container(
    clipBehavior: Clip.hardEdge,
    height: height,
    width: width,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      border: Border.all(color: primarycolor, width: borederwith),
      image: DecorationImage(
        image: AssetImage(img),
      ),
    ),
  );
}

//Text Styles

final locaitontxt = TextStyle(
  fontSize: 22,
  fontWeight: FontWeight.bold,
  letterSpacing: 1,
);
