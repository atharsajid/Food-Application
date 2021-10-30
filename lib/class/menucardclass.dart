
import 'package:flutter/material.dart';
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
            ));
  }
}

class Favoritefoodm extends StatelessWidget {
  final FoodItem foodItem;
  const Favoritefoodm({Key? key, required this.foodItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20),
      width: 170,
      height: 170,
      color: backgroundcolor,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            margin: EdgeInsets.only(top: 80),
            width: 170,
            height: 90,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: primarycolor),
          ),
          Align(
            alignment: Alignment(0, -0.9),
            child: circleContainer(110, 110, 1, foodItem.img),
          ),
          Align(
              alignment: Alignment(0.9, -1),
              child: priceContainer(60, 60, foodItem.price)),
          Align(
            alignment: Alignment(0, 0.5),
            child: Text(foodItem.name, style: fooditemtext),
          ),
          Align(
            alignment: Alignment(0, 0.7),
            child: Text(foodItem.comments, style: ratingtext),
          ),
          Align(
            alignment: Alignment(0, 0.9),
            child: star(20),
          ),
        ],
      ),
    );
  }
}
