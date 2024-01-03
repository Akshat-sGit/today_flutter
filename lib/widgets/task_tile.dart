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

  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.orange;
    }
    return Colors.orange;
  }

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
        side: const BorderSide(color: Colors.orange),
        checkColor: Colors.orange,
        value: isChecked,
        onChanged: (newValue) {
          checkboxCallback(newValue ?? false);
        },
      ),
      onLongPress: longPressCallback,
    );
  }
}
