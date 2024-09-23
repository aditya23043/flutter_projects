import 'package:flutter/material.dart';

class TodoItem extends StatelessWidget {
  final String desc;
  final DateTime time;
  final bool done;
  const TodoItem({super.key, required this.desc, required this.time, required this.done});

  static const TextStyle _textStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w200,
    color: Color(0xffaaaaaa),
    fontFamily: "Fira Sans"
  );

  String checkMonth(DateTime time){

    String month = "";

    switch (time.month) {
      case 1:
        month = "January";
        break;
      case 2:
        month = "February";
        break;
      case 3:
        month = "March";
        break;
      case 4:
        month = "April";
        break;
      case 5:
        month = "May";
        break;
      case 6:
        month = "June";
        break;
      case 7:
        month = "July";
        break;
      case 8:
        month = "August";
        break;
      case 9:
        month = "September";
        break;
      case 10:
        month = "October";
        break;
      case 11:
        month = "November";
        break;
      case 12:
        month = "December";
        break;
    }
    
    return month;

  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 20, top: 13, bottom: 13),
      child: GestureDetector(
        onTap: (){
          showDialog(context: context, builder: (context) =>
            AlertDialog(
              title: const Text("Task", style: TextStyle(fontFamily: "Fira Sans")),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(desc, style: _textStyle),
                  const Text(""),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(time.day.toString(), style: _textStyle,),
                      const Text(" "),
                      Text(checkMonth(time), style: _textStyle,),
                      const Text(", "),
                      Text(time.year.toString(), style: _textStyle,)
                    ],
                  ),
                  const Text(""),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: ElevatedButton(onPressed: (){ Navigator.pop(context); }, child: const Text("ok"),),
                  ) 
                ],
              )
            )
          );
        },
        child: Container(
          height: 100,
          decoration: BoxDecoration(
            color: const Color(0xff121212),
            borderRadius: BorderRadius.circular(30),
            boxShadow: const [
              BoxShadow(
                color: Color(0xff181818),
                blurRadius: 10,
                offset: Offset(-4,-4),
                spreadRadius: 1,
              ),
              BoxShadow(
                color: Color(0xff0f0f0f),
                blurRadius: 10,
                offset: Offset(4,4),
                spreadRadius: 1,
              ),
            ]
          ), 
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 50, left: 50),
                    child: (done) 
                      ? const Icon(
                          Icons.check_box_outlined,
                          color: Colors.grey,
                        ) 
                      : const Icon(
                          Icons.check_box_outline_blank,
                          color: Colors.grey,
                        )
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 0, left: 0),
                    child: Text(
                      desc,
                      style: _textStyle,
                    ),
                  ),
        
                ]
              ),
            ],
          )
        ),
      ),
    );
  }
}
