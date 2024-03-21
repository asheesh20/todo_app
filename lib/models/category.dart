import 'package:flutter/material.dart';

class Category {
  const Category({
    required this.title,
    //required this.icon,
    this.color = Colors.blue,
  });

  final String title;
  //final Icons icon;
  final Color color;
}
