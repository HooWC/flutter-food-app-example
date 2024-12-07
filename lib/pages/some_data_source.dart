import 'dart:convert';
import 'package:flutter/material.dart';

var bannerItems = ["Burger", "Cheese Chilly", "Noodles", "Pizza"];
var bannerImage = [
  "images/burger.jpg",
  "images/cheesechilly.jpg",
  "images/noodles.jpg",
  "images/pizza.jpg"
];

Future<List<dynamic>> fetchData(BuildContext context) async {
  String dataString = await DefaultAssetBundle.of(context).loadString("assets/data.json");
  List<dynamic> dataJSON = jsonDecode(dataString);
  return dataJSON;
}
