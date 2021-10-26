import 'package:flutter/material.dart';
import 'package:food_app/colors.dart';
import 'package:food_app/list_category.dart';

//Food Categories class

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  bool isContainerSelected = false;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: catergorieslist.length,
      itemBuilder: (context, index) {
        return Container(
          height: 50,
          width: 160,
          margin: EdgeInsets.only(left: 10),
          padding: EdgeInsets.only(left: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: isContainerSelected ? primarycolor : Secondarycolor,
          ),
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(catergorieslist[index]['iconpath']),
              ),
              SizedBox(
                width: 2,
              ),
              Text(catergorieslist[index]['name']),
            ],
          ),
        );
      },
    );
  }
}
