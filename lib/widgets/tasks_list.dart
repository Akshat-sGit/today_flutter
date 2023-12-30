import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/task_tile.dart'; 

class TasksList extends StatefulWidget {
  const TasksList({super.key});

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {

  List<Task> tasks = [];

  @override
  Widget build(BuildContext context) {
    return ListView( 
      children: <Widget>[
        TaskTile(),
        TaskTile(),
      ],
    );
  }
}