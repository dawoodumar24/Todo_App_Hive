import 'package:flutter/material.dart';
import 'package:hive_todo_app/utils/todo_tile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List TodoList = [
    ["Make tutorials", false],
    ["Do Exercise", false],
  ];

  void checkBoxChanged(bool? value, int index) {
    setState(() {
      TodoList[index][1] = !TodoList[index][1];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(title: Text('Todo App Hive'), centerTitle: true),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return TodoTile(
            taskName: TodoList[index][0],
            isCompleted: TodoList[index][1],
            onChanged: (value) => checkBoxChanged(value, index),
          );
        },
        itemCount: TodoList.length,
      ),
    );
  }
}
