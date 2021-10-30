
import 'package:flutter/material.dart';

import '../colors.dart';
import '../list_category.dart';

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