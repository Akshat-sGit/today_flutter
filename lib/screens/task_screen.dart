import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todoey_flutter/screens/add_task_screen.dart'; 

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