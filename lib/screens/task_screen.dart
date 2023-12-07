import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TaskScreen extends StatelessWidget {
  static const String id = 'task_screen';
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        child: const Icon(Icons.add),
        onPressed: () {},
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
                  const CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 30.0,
                      child: Icon(
                        Icons.list,
                        color: Colors.lightBlueAccent,
                      )),
                  const SizedBox(height: 10.0),
                  Text(
                    'Todoey',
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
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0))),
            child: ListView(
              children: const <Widget>[
                TaskTile(isChecked: true,),
                TaskTile(isChecked: false,),
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
  late bool isChecked;

  @override
  void initState() {
    super.initState();
    isChecked = widget.isChecked;
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      textColor: Colors.black,
      title: const Text("This is a task."),
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
