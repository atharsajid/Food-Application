import 'package:flutter/material.dart';
import 'package:food_app/colors.dart';
import 'package:food_app/homescreen.dart/constructor.dart';
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
      
      color: Secondarycolor,
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
            child: circleContainer(115, 115, 1, foodItem.img),
          ),
          Align(
            alignment: Alignment(0, -0.9),
            child: circleContainer(115, 115, 1, foodItem.img),
          ),
        ],
      ),
    );
  }
}
