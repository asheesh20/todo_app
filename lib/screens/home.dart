import 'package:flutter/material.dart';
import 'package:todo_app/screens/categories.dart';
import 'package:todo_app/widgets/category_grid.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 150,
            ),
            Text(
              'Todo\'s',
              style: TextStyle(fontSize: 34, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '2',
              style: TextStyle(fontSize: 36),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CategoryGrid(
                  title: 'New Todo',
                  icon: Icon(
                    Icons.add,
                    color: Colors.yellow,
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                CategoryGrid(
                  title: 'Update Todo',
                  icon: Icon(
                    Icons.pin_end_rounded,
                    color: Colors.yellow,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CategoryGrid(
                  title: 'Total Todo',
                  icon: Icon(
                    Icons.checklist_sharp,
                    color: Colors.yellow,
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                CategoryGrid(
                  title: 'Delete Todo',
                  icon: Icon(
                    Icons.delete_outline,
                    color: Colors.yellow,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      )),
    );
  }
}
