import 'package:flutter/material.dart';
import 'package:food_app/Menutab/menuscreen.dart';
import 'package:food_app/class/categoryclass.dart';
import 'package:food_app/class/menucardclass.dart';
import 'package:food_app/class/navbar.dart';
import 'package:food_app/classes.dart';
import 'package:food_app/colors.dart';

import 'package:food_app/homescreen.dart/homescreenwidget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigarionDrawer(),
      appBar: appbar(),
      extendBody: true,
      backgroundColor: backgroundcolor,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            // Container(
            //   child: menulogo(),
            // ),
            Container(
              padding: const EdgeInsets.only(top: 10),
              child: location("Bahadurabad, KHI"),
            ),
            Container(
              padding: const EdgeInsets.only(top: 10, bottom: 30),
              alignment: Alignment.center,
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 55,
                child: searchbar(),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                children: [
                  Container(
                    child: foodCatText(),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    height: 45,
                    child: const Categories(),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    child: favText("Favorite", "Foods", "Search More"),
                  ),
                  Container(
                    height: 170,
                    margin: const EdgeInsets.only(top: 20),
                    child: const MenuCard(),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    child: favText("Other", "Foods", "Search More"),
                  ),
                  const OtherFood(),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: const Navbar(),
    );
  }
}
