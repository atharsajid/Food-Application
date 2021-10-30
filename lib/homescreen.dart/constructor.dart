import 'package:flutter/material.dart';
import 'package:food_app/classes.dart';

class FoodItem {
  final String img, name, price, comments;
  FoodItem({
    required this.img,
    required this.name,
    required this.price,
    required this.comments,
  });
}

List<FoodItem> fooditems = [
  FoodItem(
    img: 'images/burger.jpg',
    name: 'Messy Meat Burger',
    price: '6.9',
    comments: 'Customer Favorite',
  ),
  FoodItem(
    name: 'West Side Garlic Pizza',
    img: 'images/pizza.jpg',
    price: '9.9',
    comments: 'Customer Favorite',
  ),
  FoodItem(
    name: 'Fried Chicken',
    img: 'images/friedchicken.jpg',
    price: '5.9',
    comments: 'Customer Favorite',
  ),
  FoodItem(
    name: 'Fajita Pizza',
    img: 'images/p5.jpg',
    price: '10.9',
    comments: 'Preimum Pizza',
  ),
  FoodItem(
    name: 'Wraps & Pitas',
    img: 'images/wrap.jpg',
    price: '4.9',
    comments: 'High Rated',
  ),
  FoodItem(
    name: 'Chicken Noodle',
    img: 'images/noodle.jpg',
    price: '6.9',
    comments: 'Healty food',
  ),
  FoodItem(
    name: 'Gigantic Burger',
    img: 'images/burger.jpg',
    price: '7.9',
    comments: 'Best in Class',
  ),
];

List<FoodItem> otherfoods = [
  FoodItem(
    img: 'images/burger.jpg',
    name: 'Messy Meat Burger',
    price: '6.9',
    comments: 'Customer Favorite',
  ),
  FoodItem(
    name: 'Pepperoni Pizza',
    img: 'images/pizza.jpg',
    price: '9.9',
    comments: 'Customer Favorite',
  ),
  FoodItem(
    name: 'Fried Chicken',
    img: 'images/friedchicken.jpg',
    price: '5.9',
    comments: 'Customer Favorite',
  ),
  FoodItem(
    name: 'Fajita Pizza',
    img: 'images/pizza.jpg',
    price: '10.9',
    comments: 'Preimum Pizza',
  ),
  FoodItem(
    name: 'Wraps & Pitas',
    img: 'images/wrap.jpg',
    price: '4.9',
    comments: 'High Rated',
  ),
  FoodItem(
    name: 'Chicken Noodle',
    img: 'images/noodle.jpg',
    price: '6.9',
    comments: 'Healty food',
  ),
  FoodItem(
    name: 'Gigantic Burger',
    img: 'images/burger.jpg',
    price: '7.9',
    comments: 'Best in Class',
  ),
];
