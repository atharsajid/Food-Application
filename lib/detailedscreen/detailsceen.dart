import 'package:flutter/material.dart';

import 'package:food_app/colors.dart';
import 'package:food_app/detailedscreen/addcart.dart';
import 'package:food_app/detailedscreen/detailconfig.dart';
import 'package:food_app/detailedscreen/detailscreenwidget.dart';
import 'package:food_app/homescreen.dart/constructor.dart';
import 'package:food_app/homescreen.dart/homescreenwidget.dart';
import 'package:food_app/homescreen.dart/hscreen_configration.dart';

class DetailScreen extends StatelessWidget {
  static const routename = "detailScreen";
  final FoodItem foodItem;
  const DetailScreen({Key? key, required this.foodItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SingleChildScrollView(
        physics:const BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              margin:const EdgeInsets.only(top: 55),
              padding:const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      color: primarycolor,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.6,
                    height: 50,
                    child: searchbar(),
                  ),
                  circleContainer(60, 60, 3, dpimage),
                ],
              ),
            ),
            Container(
              height: 275,
              padding:const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: Stack(
                      children: [
                        scircleContainer(80, 80, 3, foodItem.img),
                        Positioned(
                          right: 0,
                          top: 25,
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: primarycolor,
                            size: 32,
                          ),
                        ),
                      ],
                    ),
                  ),
                  dcircleContainer(160, 160, 5, foodItem.img),
                  Container(
                    alignment: Alignment.center,
                    child: Stack(
                      children: [
                        scircleContainer(80, 80, 3, foodItem.img),
                        Positioned(
                          left: 6,
                          top: 25,
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: primarycolor,
                            size: 32,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding:const EdgeInsets.symmetric(horizontal: 30),
              height: 120,
              child: Stack(
                children: [
                  Text(
                    foodItem.name,
                    style: deNamTxt,
                  ),
                  Align(
                      alignment:const Alignment(-1, -0.3),
                      child: Text(
                        foodItem.comments,
                        style: decomTxt,
                      )),
                  Align(
                    alignment:const Alignment(-1, 0.3),
                    child: star(32),
                  ),
                  Align(
                    alignment:const Alignment(1, -1),
                    child: priceContainer(80, 80, foodItem.price, 26),
                  ),
                ],
              ),
            ),
            Container(
              margin:const EdgeInsets.symmetric(horizontal: 20),
              padding:const EdgeInsets.symmetric(horizontal: 0),
              child: Text(
                foodItem.detail,
                textAlign: TextAlign.justify,
                style:const TextStyle(fontSize: 18),
              ),
            ),
            expansion(),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: distanceRow(foodItem.distance),
            ),
           const Padding(
              padding:  EdgeInsets.only(top: 20, left: 20),
              child: AddCart(),
            ),
          ],
        ),
      ),

    );
  }
}
