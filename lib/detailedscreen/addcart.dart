import 'package:flutter/material.dart';


import '../colors.dart';

class AddCart extends StatefulWidget {
  const AddCart({Key? key}) : super(key: key);

  @override
  _AddCartState createState() => _AddCartState();
}

class _AddCartState extends State<AddCart> {
  int number = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize:const Size(20, 55),
              primary: primarycolor,
              onPrimary: backgroundcolor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32)),
            ),
            onPressed: () {
              setState(() {
                number>0?number = number - 1:number=number;
              });
            },
            child:const Icon(Icons.remove)),
       const SizedBox(
          width: 15,
        ),
        Text(
          "$number",
          style:const TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
     const   SizedBox(
          width: 15,
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize:const Size(20, 55),
              primary: primarycolor,
              onPrimary: backgroundcolor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32)),
            ),
            onPressed: () {
              setState(() {
                number = number + 1;
              });
            },
            child:const Icon(Icons.add)),
     const     SizedBox(
          width: 20,
        ),
        ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
              minimumSize:const Size(140, 50),
              onPrimary: backgroundcolor,
              primary: primarycolor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32))),
          onPressed: () {},
          icon:const Icon(Icons.shopping_cart_rounded),
          label:const Text("Add to Cart",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        ),
      ],
    );
  }
}
