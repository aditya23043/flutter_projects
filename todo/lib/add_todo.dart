import 'package:flutter/material.dart';

class AddTodo extends StatefulWidget {
  const AddTodo({super.key});

  static const TextStyle _textStyle = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w500,
      color: Colors.white60,
      fontFamily: "Fira Sans");

  @override
  State<AddTodo> createState() => _AddTodoState();
}

class _AddTodoState extends State<AddTodo> {

  TextEditingController taskNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Add A New Task",
          style: AddTodo._textStyle,
        ),
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white60,
          ),
        ),
        elevation: 0,
        backgroundColor: const Color(0xff121212),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // LABEL NAME
            TextField(
              controller: taskNameController,
              decoration: InputDecoration(
                labelText: "Task Name",
                labelStyle: const TextStyle(
                  color: Colors.white60
                ),
                suffixIcon: IconButton(
                  onPressed: (){
                    setState(() {
                      taskNameController.clear();
                    });
                  },
                  icon: const Icon(Icons.clear_rounded, color: Colors.white60)
                ),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(0), borderSide: const BorderSide(color: Colors.white24)),
                focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: const BorderSide(color: Colors.white54, width: 2)),
                enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(0), borderSide: const BorderSide(color: Colors.white24)),
                hintStyle: const TextStyle(color: Colors.white24)
              ),
              autofocus: true,
            ),
            // DEADLINE : DATE
            Padding(
              padding: const EdgeInsets.all(20),
              child: ElevatedButton(
                child: const Text("Pick Deadline"),
                onPressed: (){
                  showDialog(context: context, builder: (context){
                    return const AlertDialog(
                      title: Text("something"),
                    );
                  });
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
