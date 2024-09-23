import 'package:flutter/material.dart';
import 'package:todo/add_todo.dart';
import 'package:todo/home_page.dart';

void main() {
  runApp(const Root());
}

class Root extends StatelessWidget {
  const Root({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/add_todo": (context) => const AddTodo()
      },
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xff121212)
      ),
    );
  }
}
