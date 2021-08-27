import 'package:flutter/material.dart';

class TasksTile extends StatelessWidget {
  final bool? isChecked;
  final String? taskTitle;
  final Function(bool?) checkboxCallBack;
  // final VoidCallback longPressCallBack;

  TasksTile({
    this.isChecked,
    this.taskTitle,
    required this.checkboxCallBack,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 0.0),
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            bottomLeft: Radius.circular(20.0),
            bottomRight: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: ListTile(
          // onLongPress: longPressCallBack,
          title: Text(
            taskTitle!,
            style: TextStyle(
                decoration: isChecked! ? TextDecoration.lineThrough : null),
          ),
          trailing: Checkbox(
            activeColor: Colors.lightBlueAccent,
            value: isChecked,
            onChanged: checkboxCallBack,
          ),
        ),
      ),
    );
  }
}
