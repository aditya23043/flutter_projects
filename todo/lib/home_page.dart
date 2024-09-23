import 'package:flutter/material.dart';
import 'package:todo/todo_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const TextStyle _textStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: Colors.white60,
    fontFamily: "Fira Sans"
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: const Color(0xff000000),
        centerTitle: true,
        elevation: 0,
        title: const Text(
          "T A S K S",
          style: _textStyle,
        ),
        backgroundColor: const Color(0xff121212),
        actions: [
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, "/add_todo");
            },
            child: const Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(Icons.add_box),
            ),
          )
        ],
      ),
      body: Center(
        child: ListView(
          physics: const ScrollPhysics(),
          children: [
            TodoItem(desc: "SNS Quiz 3", time: DateTime.now(), done: false),
            TodoItem(desc: "AP Assignment", time: DateTime.now(), done: false),
            TodoItem(desc: "ELD Quiz 2", time: DateTime.now(), done: false),
            TodoItem(desc: "Math Worksheet", time: DateTime.now(), done: false),
            TodoItem(desc: "CTD Lab File Work", time: DateTime.now(), done: false),
            TodoItem(desc: "SNS Assignment 2", time: DateTime.now(), done: false),
            TodoItem(desc: "AP Project", time: DateTime.now(), done: false),
            TodoItem(desc: "Midsems", time: DateTime.now(), done: false),
            TodoItem(desc: "Geyser Installation by Amazon", time: DateTime.now(), done: false),
            TodoItem(desc: "Fan Installation by UC", time: DateTime.now(), done: false),
            TodoItem(desc: "Table Installation by UC", time: DateTime.now(), done: false),
            TodoItem(desc: "Give jhalar lights to Masi tomorrow", time: DateTime.now(), done: false),
            TodoItem(desc: "Try sleeping early", time: DateTime.now(), done: false),
            TodoItem(desc: "Gym @ 6/7?", time: DateTime.now(), done: false),
          ],
        ),
      ),
    );
  }
}
