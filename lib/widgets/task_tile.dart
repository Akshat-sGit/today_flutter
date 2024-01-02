import 'package:flutter/material.dart';
class TaskTile extends StatelessWidget {
  final String taskTitle;
  final bool isChecked;
  final Function(bool) checkboxCallback;
  final Function() longPressCallback;

   const TaskTile({
    super.key,
    required this.taskTitle,
    required this.isChecked,
    required this.checkboxCallback,
    required this.longPressCallback,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
          color: Colors.white,
        ),
      ),
      trailing: Checkbox(
        focusColor: Colors.white,
        value: isChecked,
        onChanged: (newValue) {
          checkboxCallback(newValue ?? false);
        },
      ),
      onLongPress: longPressCallback,
    );
  }
}
