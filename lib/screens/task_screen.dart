import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todoey_flutter/screens/add_task_screen.dart'; 
import 'package:todoey_flutter/widgets/task_tile.dart';

class TaskScreen extends StatelessWidget {
  static const String id = 'task_screen';
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[900],
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey[900],
        child: Icon(Icons.add, color: Colors.orange[900]),
        onPressed: () {
          showModalBottomSheet(
              context: context,isScrollControlled: true ,builder: (context) => SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: const AddTaskScreen(),
                )
                ),

              );
        },
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // ignore: avoid_unnecessary_containers
          Container(
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // ignore: avoid_unnecessary_containers
                  CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 30.0,
                      child: Icon(
                        Icons.list,
                        color: Colors.orange[900],
                      )),
                  const SizedBox(height: 10.0),
                  Text(
                    'To-do',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 50.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    '12 Tasks',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 30.0),
                ],
              ),
            ),
          ),
          Expanded(
              child: Container(
            decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0))),
            child: ListView(
              children: const <Widget>[
                TaskTile(
                  isChecked: false,
                ),
                TaskTile(
                  isChecked: false,
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}

