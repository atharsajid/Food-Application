import 'package:flutter/material.dart';
import 'package:food_app/colors.dart';
import 'package:food_app/homescreen.dart/constructor.dart';
import 'package:food_app/homescreen.dart/homescreenwidget.dart';
import 'package:food_app/homescreen.dart/hscreen_configration.dart';
import 'package:food_app/list_category.dart';

//Food Categories class

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int isContainerSelected = 0;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: catergorieslist.length,
      itemBuilder: (context, index) {
        return buildCategory(index);
      },
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isContainerSelected = index;
        });
      },
      child: Container(
        height: 40,
        width: 160,
        margin: EdgeInsets.only(left: 10),
        padding: EdgeInsets.only(left: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: isContainerSelected == index ? primarycolor : Secondarycolor,
        ),
        child: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(
                catergorieslist[index]['iconpath'],
              ),
            ),
            SizedBox(
              width: 2,
            ),
            Text(
              catergorieslist[index]['name'],
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: isContainerSelected == index
                      ? Colors.white
                      : Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}

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
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            // childAspectRatio: 0.8,
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
          ),
          itemBuilder: (context, index) =>
              OtherFoodmethod(otherfood: otherfoods[index])),
    );
  }
}

class OtherFoodmethod extends StatelessWidget {
  final FoodItem otherfood;
  const OtherFoodmethod({Key? key, required this.otherfood}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 170,
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
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
              image: DecorationImage(
                  image: AssetImage(otherfood.img), fit: BoxFit.cover),
            ),
          ),
        ),
        Align(
          alignment: Alignment(0, 0.3),
          child: star(20),
        ),
        Align(
          alignment: Alignment(0, 0.5),
          child: Text(
            otherfood.name,
            style: othertext,
          ),
        ),
        Positioned(
          top: -15,
          right: 0,
          child: priceContainer2(50, 50, otherfood.price),
        )
      ],
    );
  }
}
