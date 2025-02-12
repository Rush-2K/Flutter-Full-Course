import 'package:flutter/material.dart';

enum Categories {
  vegetables,
  fruit,
  meat,
  dairy,
  carbs,
  sweets,
  spices,
  convenience,
  hygiene,
  other
}

class Category {
  const Category(
    this.title,
    this.color,
  ); //positional argument{neeed to follow the order}

  final String title;
  final Color color;
}
