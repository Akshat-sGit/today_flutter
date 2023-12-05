import 'package:flutter/material.dart';
import 'package:todoey_flutter/screens/task_screen.dart';

void main() {
  runApp(const Todoey());
}

class Todoey extends StatelessWidget {
  const Todoey({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            color: Colors.black54,
            fontSize: 45.0,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
      initialRoute: TaskScreen.id,
      routes: {
        // all the routes added here
        TaskScreen.id: (context) => const TaskScreen(),
      },
    );
  }
}
