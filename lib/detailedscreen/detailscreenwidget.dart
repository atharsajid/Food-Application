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
    childrenPadding: EdgeInsets.all(30).copyWith(top: 0),
    title: Text(" Read more..",
        style: TextStyle(
            fontSize: 16, color: primarycolor, fontWeight: FontWeight.bold)),
    children: [
      Text(
        lorem,
        textAlign: TextAlign.justify,
        style: TextStyle(fontSize: 15),
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
      SizedBox(
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

//Add to cart
Widget addCart() {
  return Row(
    children: [
      // FloatingActionButton(
      //   backgroundColor: primarycolor,
      //   onPressed: () {},
      //   child: Icon(
      //     Icons.remove,
      //     color: backgroundcolor,
      //     size: 18,
      //   ),
      // ),

      Text(
        "1",
        style: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(
        width: 15,
      ),
      FloatingActionButton(
        backgroundColor: primarycolor,
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: backgroundcolor,
          size: 18,
        ),
      ),
      SizedBox(
        width: 20,
      ),
      ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
            onPrimary: backgroundcolor,
            primary: primarycolor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32))),
        onPressed: () {},
        icon: Icon(Icons.shopping_cart_rounded),
        label: Text("Add to Cart"),
      ),
    ],
  );
}

final elebtn = ElevatedButton(
  
    style: ElevatedButton.styleFrom(
  minimumSize: Size(20, 55),    
      primary: primarycolor,
      onPrimary: backgroundcolor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
    ),
    onPressed: () {},
    child: Icon(Icons.remove));

final elebtnadd = ElevatedButton(
  
    style: ElevatedButton.styleFrom(
  minimumSize: Size(20, 55),    
      primary: primarycolor,
      onPrimary: backgroundcolor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
    ),
    onPressed: () {},
    child: Icon(Icons.add));
