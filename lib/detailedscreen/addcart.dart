import 'package:flutter/material.dart';
import 'package:food_app/detailedscreen/detailscreenwidget.dart';

import '../colors.dart';

class AddCart extends StatelessWidget {
  const AddCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          elebtn,
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
          elebtn,
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
      ),
    );
  }
}
