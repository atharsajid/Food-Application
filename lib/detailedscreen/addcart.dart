import 'package:flutter/material.dart';
import 'package:food_app/detailedscreen/detailscreenwidget.dart';

import '../colors.dart';

class AddCart extends StatefulWidget {
  const AddCart({Key? key}) : super(key: key);

  @override
  _AddCartState createState() => _AddCartState();
}

class _AddCartState extends State<AddCart> {
  int number = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(20, 55),
                primary: primarycolor,
                onPrimary: backgroundcolor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32)),
              ),
              onPressed: () {
                setState(() {
                  number>0?number = number - 1:number=number;
                });
              },
              child: Icon(Icons.remove)),
          SizedBox(
            width: 15,
          ),
          Text(
            "$number",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            width: 15,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(20, 55),
                primary: primarycolor,
                onPrimary: backgroundcolor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32)),
              ),
              onPressed: () {
                setState(() {
                  number = number + 1;
                });
              },
              child: Icon(Icons.add)),
          SizedBox(
            width: 20,
          ),
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
                minimumSize: Size(140, 50),
                onPrimary: backgroundcolor,
                primary: primarycolor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32))),
            onPressed: () {},
            icon: Icon(Icons.shopping_cart_rounded),
            label: Text("Add to Cart",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          ),
        ],
      ),
    );
  }
}
