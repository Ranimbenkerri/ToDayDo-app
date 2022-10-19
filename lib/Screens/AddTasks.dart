import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todaydo/Models/TaskData.dart';

class AddTasks extends StatelessWidget {
  final Function addTaskCallback;
  AddTasks(this.addTaskCallback);
  @override
  Widget build(BuildContext context) {
    String? newTask;
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Text(
          'Add Task',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 30,
              color: Colors.indigo[400],
              fontWeight: FontWeight.bold),
        ),
        TextField(
          autofocus: true,
          textAlign: TextAlign.center,
          onChanged: (newText) {
            newTask = newText;
          },
        ),
        SizedBox(
          height: 30,
        ),
        TextButton(
          onPressed: () {
            Provider.of<TaskData>(context,listen: false).addTask(newTask!);
            Navigator.pop(context);
          },
          child: Text(
            'Add',
            style: TextStyle(fontSize: 20),
          ),
          style: TextButton.styleFrom(
            backgroundColor: Colors.teal[400],
            primary: Colors.white,
          ),
        ),
      ]),
    );
  }
}
