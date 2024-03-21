import 'package:flutter/material.dart';
import 'package:todo_app/screens/categories.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Todo\'s',
              style: TextStyle(fontSize: 34, fontWeight: FontWeight.w500),
            ),
            Text('2'),
            CategoriesScreen(),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      )),
    );
  }
}
