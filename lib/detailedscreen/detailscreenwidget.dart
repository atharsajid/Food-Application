import 'package:flutter/material.dart';
import 'package:food_app/detailedscreen/detailconfig.dart';

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

Widget expansion() {
  return ExpansionTile(
    childrenPadding: const EdgeInsets.all(30).copyWith(top: 0),
    title: Text(" Read more..",
        style: TextStyle(
            fontSize: 16, color: primarycolor, fontWeight: FontWeight.bold)),
    children: [
      Text(
        lorem,
        textAlign: TextAlign.justify,
        style: const TextStyle(fontSize: 15),
      )
    ],
  );
}
//distance Widget

Widget distanceRow(String distance) {
  return Row(
    children: [
      Icon(
        Icons.calendar_today,
        color: primarycolor,
      ),
      const SizedBox(
        width: 10,
      ),
      Text(
        distance,
        style: TextStyle(
          fontSize: 18,
          color: greycolor,
          fontWeight: FontWeight.bold,
        ),
      )
    ],
  );
}
