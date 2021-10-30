import 'package:flutter/material.dart';

import '../colors.dart';

Widget dcircleContainer(
    double height, double width, double borederwith, String img) {
  return Container(
    clipBehavior: Clip.hardEdge,
    height: height,
    width: width,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      border: Border.all(color: primarycolor, width: borederwith),
      image: DecorationImage(image: AssetImage(img), fit: BoxFit.fill),
    ),
  );
}

Widget scircleContainer(
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
        fit: BoxFit.fill,
        colorFilter:
            ColorFilter.mode(Colors.black.withOpacity(0.6), BlendMode.darken),
      ),
    ),
  );
}
