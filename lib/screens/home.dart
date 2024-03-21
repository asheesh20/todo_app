import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:todo_app/screens/new_todo.dart';
import 'package:todo_app/widgets/category_grid.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 150,
            ),
            const Text(
              'Todo\'s',
              style: TextStyle(fontSize: 34, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              '2',
              style: TextStyle(fontSize: 36),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return const NewTodo();
                    }));
                  },
                  child: const CategoryGrid(
                    title: 'New Todo',
                    icon: Icon(
                      Icons.add,
                      color: Colors.yellow,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return const NewTodo();
                        },
                      ),
                    );
                  },
                  child: const CategoryGrid(
                    title: 'Update Todo',
                    icon: Icon(
                      Icons.pin_end_rounded,
                      color: Colors.yellow,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return const NewTodo();
                        },
                      ),
                    );
                  },
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return const NewTodo();
                          },
                        ),
                      );
                    },
                    child: const CategoryGrid(
                      title: 'Total Todo',
                      icon: Icon(
                        Icons.checklist_sharp,
                        color: Colors.yellow,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return const NewTodo();
                        },
                      ),
                    );
                  },
                  child: const CategoryGrid(
                    title: 'Delete Todo',
                    icon: Icon(
                      Icons.delete_outline,
                      color: Colors.yellow,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      )),
    );
  }
}
