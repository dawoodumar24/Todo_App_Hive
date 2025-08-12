import 'package:flutter/material.dart';
import 'package:hive_todo_app/utils/my_buttons.dart';

class DialogBox extends StatelessWidget {
  final controller;
  DialogBox({super.key,
  required this.controller});
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[300],
      content: Container(height: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextField(
            controller: controller,
            decoration: InputDecoration(
              hintText: "Enter a new task",
              border: OutlineInputBorder()
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // save button
            MyButtons(text: "save", onPressed: (){}),
              SizedBox(width: 8,),
              // cancel button
              MyButtons(text: "cancel", onPressed:(){})
            ],

          )

        ],
      ),),
    );
  }
}