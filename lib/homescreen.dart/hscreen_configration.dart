import 'package:flutter/material.dart';
import 'package:food_app/colors.dart';

//profile picture
String dpimage = "images/dp.jpg";
String menuimage = "images/menu.png";

//Circle Container with image

Widget circleContainer(
    double height, double width, double borederwith, String img) {
  return Container(
    clipBehavior: Clip.hardEdge,
    height: height,
    width: width,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      border: Border.all(color: primarycolor, width: borederwith),
      image: DecorationImage(
        image: AssetImage(img),
        fit: BoxFit.cover
      ),
    ),
  );
}

Widget priceContainer(
    double height, double width,double borderwith String price) {
  return Container(
   
    height: height,
    width: width,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      border: Border.all(color: primarycolor, width: borderwith),
     
      ),
      child: Row(
        children: [
          Text("\$ ",style:TextStyle(color: primarycolor,fontSize: 12),),
          Text(price,style: TextStyle(
            fontSize: 16,
            fontWeight: Font
          ),),
        ],
      ),
    );
  
}

//Text Styles

final locaitontxt = TextStyle(
  fontSize: 22,
  fontWeight: FontWeight.bold,
  letterSpacing: 1,
);

final foodCattxt1 =
    TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: primarycolor);

final foodCattxt2 = TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.bold,
);
final foodCattxt3 = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.bold,
  color: primarycolor,
);
final categoriestxt = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.bold,
);

//Searbar border style
final searchbarborder = InputDecoration(
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(32),
    borderSide: BorderSide.none,
  ),
  filled: true,
  fillColor: Secondarycolor,
  hintText: "Search Your Food",
  hintStyle: TextStyle(color: greycolor, fontSize: 16),
  prefixIcon: Icon(
    Icons.search,
    color: greycolor,
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(32),
    borderSide: BorderSide.none,
  ),
);

//Categories Container

