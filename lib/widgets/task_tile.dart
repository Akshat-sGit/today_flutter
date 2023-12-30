import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  const TaskTile({Key? key, required this.isChecked}) : super(key: key);

  final bool isChecked;
  

  @override
  // ignore: library_private_types_in_public_api
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  late bool isChecked = false;

  @override
  void initState() {
    super.initState();
    isChecked = widget.isChecked;
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      textColor: Colors.black,
      title: Text(
        "This is a task.",
        style: TextStyle(
          color: Colors.white, 
          decoration: isChecked ?  TextDecoration.lineThrough : null, 
        ),
      ),
      trailing: Checkbox(
        fillColor: MaterialStateProperty.all(Colors.black),
        checkColor: Colors.white,
        activeColor: Colors.black,
        value: isChecked,
        onChanged: (value) {
          setState(() {
            isChecked = value!;
          });
        },
      ),
    );
  }
}