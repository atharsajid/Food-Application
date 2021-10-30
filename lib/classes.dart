import 'package:flutter/material.dart';
import 'package:food_app/colors.dart';
import 'package:food_app/homescreen.dart/constructor.dart';
import 'package:food_app/detailedscreen/detailsceen.dart';
import 'package:food_app/homescreen.dart/homescreenwidget.dart';
import 'package:food_app/homescreen.dart/hscreen_configration.dart';
import 'package:food_app/list_category.dart';



class OtherFood extends StatefulWidget {
  const OtherFood({Key? key}) : super(key: key);

  @override
  _OtherFoodState createState() => _OtherFoodState();
}

class _OtherFoodState extends State<OtherFood> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      child: GridView.builder(
        physics: ScrollPhysics(parent: null),
        shrinkWrap: true,
        itemCount: otherfoods.length,
        gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
          
          crossAxisCount: 2,
          mainAxisSpacing: 50,
          crossAxisSpacing: 20,
        ),
        itemBuilder: (context, index) => OtherFoodmethod(
          otherfood: otherfoods[index],
          press: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailScreen(foodItem: otherfoods[index]),
            ),
          ),
        ),
      ),
    );
  }
}

class OtherFoodmethod extends StatelessWidget {
  final FoodItem otherfood;
  final dynamic press;
  const OtherFoodmethod(
      {Key? key, required this.otherfood, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 200,
            width: 170,
            decoration: BoxDecoration(
              color: backgroundcolor,
            ),
          ),
          Align(
            alignment: Alignment(0, -1),
            child: Container(
              width: 150,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
                image: DecorationImage(
                    image: AssetImage(otherfood.img), fit: BoxFit.cover),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0, 0.35),
            child: star(20),
          ),
          Align(
            alignment: Alignment(0, 0.6),
            child: Text(
              otherfood.name,
              style: othertext,
            ),
          ),
          Positioned(
            top: -15,
            right: 0,
            child: priceContainer2(50, 50, otherfood.price),
          ),
          Align(
            alignment: Alignment(0, 1.2),
            child: Container(
                height: 40,
                width: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25)),
                    color: primarycolor),
                child: cartbtn()),
          )
        ],
      ),
    );
  }
}
