import 'package:flutter/material.dart';
import 'package:food_app/detailedscreen/detailsceen.dart';
import 'package:food_app/homescreen.dart/constructor.dart';
import 'package:food_app/homescreen.dart/homescreenwidget.dart';
import 'package:food_app/homescreen.dart/hscreen_configration.dart';

import '../colors.dart';

class MenuCard extends StatefulWidget {
  const MenuCard({Key? key}) : super(key: key);

  @override
  _MenuCardState createState() => _MenuCardState();
}

class _MenuCardState extends State<MenuCard> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: fooditems.length,
        itemBuilder: (context, index) => Favoritefoodm(
              foodItem: fooditems[index],
              press: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(
                    foodItem: fooditems[index],
                  ),
                ),
              ),
            ));
  }
}

class Favoritefoodm extends StatelessWidget {
  final FoodItem foodItem;
  final dynamic press;
  const Favoritefoodm({Key? key, required this.foodItem, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: const EdgeInsets.only(left: 20),
        width: 170,
        height: 170,
        color: backgroundcolor,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              margin:const EdgeInsets.only(top: 80),
              width: 170,
              height: 90,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: primarycolor),
            ),
            Align(
              alignment:const Alignment(0, -0.9),
              child: circleContainer(110, 110, 1, foodItem.img),
            ),
            Align(
                alignment:const Alignment(0.9, -1),
                child: priceContainer(60, 60, foodItem.price, 18)),
            Align(
              alignment:const Alignment(0, 0.5),
              child: Text(foodItem.name, style: fooditemtext),
            ),
            Align(
              alignment:const Alignment(0, 0.7),
              child: Text(foodItem.comments, style: ratingtext),
            ),
            Align(
              alignment:const Alignment(0, 0.9),
              child: star2(20),
            ),
          ],
        ),
      ),
    );
  }
}
