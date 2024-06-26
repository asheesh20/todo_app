import 'package:flutter/material.dart';
import 'package:todo_app/models/category.dart';
import 'package:todo_app/screens/new_todo.dart';

class CategoryGrid extends StatelessWidget {
  const CategoryGrid({super.key, required this.title, required this.icon});

  //final Category category;
  final String title;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color.fromARGB(224, 39, 4, 196),
      ),
      width: 140,
      height: 140,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 11,
            ),
            icon,
          ],
        ),
      ),
    );
  }
}
