import 'package:flutter/material.dart';
// import 'package:todoey_flutter/models/task.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return Container(
      color: Colors.black,
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.orange[900],
          borderRadius:const BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.black,
              ),
            ),
            TextField(
              decoration: const InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
              autofocus: true,
              textAlign: TextAlign.center,
              controller: controller,
              onChanged: (newText) {
                // Use newText for the task title if needed
              },
            ),
            Padding(
              padding: const EdgeInsets.only(right: 40.0, left: 40.0, top: 20.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(

                  backgroundColor: Colors.black,
                ),
                onPressed: () {
                  String newTaskTitle = controller.text; // Fetch the new task title from TextField
                  Provider.of<TaskData>(context, listen: false).addTask(newTaskTitle);
                  controller.clear();
                  Navigator.pop(context);
                },
                child: const Text(
                  'Add',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
