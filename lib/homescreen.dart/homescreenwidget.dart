import 'package:flutter/material.dart';
import 'package:food_app/Menutab/menuscreen.dart';
import 'package:food_app/colors.dart';
import 'package:food_app/homescreen.dart/hscreen_configration.dart';

//menu and logo widget

// Widget menulogo() {
//   return Container(
//     margin: const EdgeInsets.only(top: 50),
//     padding: const EdgeInsets.symmetric(horizontal: 20),
//     child: Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Image.asset(menuimage),
//         circleContainer(60, 60, 3, dpimage),
//       ],
//     ),
//   );
// }

//Location widget
Widget location(String locationName) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(
        Icons.location_on_rounded,
        color: primarycolor,
      ),
      const SizedBox(
        width: 5,
      ),
      Text(
        locationName,
        style: locaitontxt,
      ),
      const Icon(
        Icons.keyboard_arrow_down,
      ),
    ],
  );
}

//serchbox
Widget searchbar() {
  return TextField(
    decoration: searchbarborder,
  );
}

// Food Categories Text
Widget foodCatText() {
  return Row(
    children: [
      Text(
        "Food",
        style: foodCattxt1,
      ),
      const SizedBox(
        width: 2,
      ),
      const Text(
        " Categories",
        style: foodCattxt2,
      ),
    ],
  );
}

Widget favText(String category, String food, String search) {
  return Row(
    children: [
      Text(
        category,
        style: foodCattxt2,
      ),
      const SizedBox(
        width: 2,
      ),
      Text(
        food,
        style: foodCattxt1,
      ),
      const Spacer(),
      Text(
        search,
        style: foodCattxt3,
      ),
      Icon(Icons.arrow_forward_ios_sharp, color: primarycolor, size: 15),
      const SizedBox(
        width: 10,
      )
    ],
  );
}

//star widget
Widget star(double size) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Icon(
        Icons.star,
        color: Colors.yellow.shade800,
        size: size,
      ),
      Icon(
        Icons.star,
        color: Colors.yellow.shade800,
        size: size,
      ),
      Icon(
        Icons.star,
        color: Colors.yellow.shade800,
        size: size,
      ),
      Icon(
        Icons.star,
        color: Colors.yellow.shade800,
        size: size,
      ),
      Icon(
        Icons.star,
        color: Colors.yellow.shade800,
        size: size,
      ),
    ],
  );
}

//cart button widget
Widget cartbtn() {
  return TextButton.icon(
    onPressed: () {},
    icon: Icon(
      Icons.shopping_cart_rounded,
      color: backgroundcolor,
    ),
    label: Text(
      "Add to Cart",
      style: TextStyle(color: backgroundcolor),
    ),
  );
}

Widget star2(double size) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(
        Icons.star,
        color: Colors.yellow.shade800,
        size: size,
      ),
      Icon(
        Icons.star,
        color: Colors.yellow.shade800,
        size: size,
      ),
      Icon(
        Icons.star,
        color: Colors.yellow.shade800,
        size: size,
      ),
      Icon(
        Icons.star,
        color: Colors.yellow.shade800,
        size: size,
      ),
      Icon(
        Icons.star,
        color: Colors.yellow.shade800,
        size: size,
      ),
    ],
  );
}
