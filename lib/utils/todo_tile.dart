import 'package:flutter/material.dart';

class TodoTile extends StatelessWidget {
  final String taskName;
  final bool isCompleted;
  Function(bool?)? onChanged;

  TodoTile({
    super.key,
    required this.taskName,
    required this.isCompleted,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Container(
          child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Row(
          children: [
            Checkbox(value: isCompleted, onChanged: onChanged,activeColor: Colors.black),
            Text(taskName,
            style: TextStyle(decoration: isCompleted? TextDecoration.lineThrough : TextDecoration.none),),
          ],
        ),
      ),
      decoration: BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.circular(12)
      ),),
    );
  }
}
