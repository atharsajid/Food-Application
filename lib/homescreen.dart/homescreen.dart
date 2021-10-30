import 'package:flutter/material.dart';
import 'package:food_app/class/categoryclass.dart';
import 'package:food_app/class/menucardclass.dart';
import 'package:food_app/classes.dart';
import 'package:food_app/colors.dart';
import 'package:food_app/homescreen.dart/constructor.dart';

import 'package:food_app/homescreen.dart/homescreenwidget.dart';
import 'package:food_app/list_category.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcolor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: menulogo(),
            ),
            Container(
              padding: EdgeInsets.only(top: 10),
              child: location("Bahadurabad, KHI"),
            ),
            Container(
              padding: EdgeInsets.only(top: 10, bottom: 30),
              alignment: Alignment.center,
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 55,
                child: searchbar(),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20),
              child: Column(
                children: [
                  Container(
                    child: foodCatText(),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    height: 45,
                    child: Categories(),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: favText("Favorite", "Foods", "Search More"),
                  ),
                  Container(
                    height: 170,
                    margin: EdgeInsets.only(top: 20),
                    child: MenuCard(),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: favText("Other", "Foods", "Search More"),
                  ),
                  Container(
                    
                    child: OtherFood()),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
