import 'package:flutter/material.dart';
import 'package:food_app/classes.dart';
import 'package:food_app/list_category.dart';

class FoodItem {
  final String img, name, price, comments, detail, distance;
  FoodItem({
    required this.img,
    required this.name,
    required this.price,
    required this.comments,
    required this.detail,
    required this.distance,
  });
}

List<FoodItem> fooditems = [
  FoodItem(
    img: 'images/burger.jpg',
    name: 'Messy Meat Burger',
    price: '6.9',
    comments: 'Customer Favorite',
    detail: burger,
    distance: '0.5Km Distance',
  ),
  FoodItem(
    name: 'West Side Garlic Pizza',
    img: 'images/pizza.jpg',
    price: '7.9',
    comments: 'Customer Favorite',
    detail: pizza,
    distance: '0.6Km Distance',
  ),
  FoodItem(
    name: 'Fried Chicken',
    img: 'images/friedchicken.jpg',
    price: '3.9',
    comments: 'Customer Favorite',
    detail: friedchick,
    distance: '0.7Km Distance',
  ),
  FoodItem(
    name: 'Fajita Pizza',
    img: 'images/p5.jpg',
    price: '10.9',
    comments: 'Preimum Pizza',
    detail: pizza2,
    distance: '5Km Distance',
  ),
  FoodItem(
    name: 'Wraps & Pitas',
    img: 'images/wrap.jpg',
    price: '4.9',
    comments: 'High Rated',
    detail: wrap,
    distance: '1Km Distance',
  ),
  FoodItem(
    name: 'Chicken Noodle',
    img: 'images/noodle.jpg',
    price: "5.9",
    comments: 'Healty food',
    detail: noodle,
    distance: '1.5Km Distance',
  ),
  FoodItem(
    name: 'Gigantic Burger',
    img: 'images/burger.jpg',
    price: '7.9',
    comments: 'Best in Class',
    detail:burger2,
    distance: '2.5Km Distance',
  ),
];

List<FoodItem> otherfoods = [
  FoodItem(
    img: 'images/burger.jpg',
    name: 'Messy Meat Burger',
    price: '6.9',
    comments: 'Customer Favorite',
    detail: burger,
    distance: '4.5Km Distance',
  ),
  FoodItem(
    name: 'Pepperoni Pizza',
    img: 'images/pizza.jpg',
    price: '9.9',
    comments: 'Customer Favorite',
    detail: pizza,
    distance: '3.5Km Distance',
  ),
  FoodItem(
    name: 'Fried Chicken',
    img: 'images/friedchicken.jpg',
    price: '5.9',
    comments: 'Customer Favorite',
    detail: friedchick,
    distance: '5.5Km Distance',
  ),
  FoodItem(
    name: 'Fajita Pizza',
    img: 'images/p5.jpg',
    price: '10.9',
    comments: 'Preimum Pizza',
    detail: pizza2,
    distance: '7.5Km Distance',
  ),
  FoodItem(
    name: 'Wraps & Pitas',
    img: 'images/wrap.jpg',
    price: '4.9',
    comments: 'High Rated',
    detail: wrap,
    distance: '8.5Km Distance',
  ),
  FoodItem(
    name: 'Chicken Noodle',
    img: 'images/noodle.jpg',
    price: '6.9',
    comments: 'Healty food',
    detail: noodle,
    distance: '9.5Km Distance',
  ),
  FoodItem(
    name: 'Gigantic Burger',
    img: 'images/burger.jpg',
    price: '7.9',
    comments: 'Best in Class',
    detail: burger2,
    distance: '10.5Km Distance',
  ),
];
