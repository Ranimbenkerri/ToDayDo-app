import 'package:flutter/material.dart';
import 'package:todaydo/Screens/AddTasks.dart';
import 'package:todaydo/Widgets/tasks_list.dart';
import '../Models/TaskData.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          onPressed: (() {
            showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (context) => Container(
                child: SingleChildScrollView(
                  child: Container(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom),
                      child: AddTasks((newTask) {
                        // setState(() {
                        //   task.add(tasks(name: newTask));
                        //   Navigator.pop(context);
                        // });
                      })),
                ),
              ),
            );
          }),
          child: Icon(Icons.add),
          backgroundColor: Colors.blue,
        ),
        backgroundColor: Colors.teal[400],
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: [
                  Icon(
                    Icons.playlist_add_check,
                    size: 40,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'ToDayDo',
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )
                ],
              ),
              Text(
                '${Provider.of<TaskData>(context).task.length} Tasks',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  child: TasksListState(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
