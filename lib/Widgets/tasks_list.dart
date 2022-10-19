import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todaydo/Models/TaskData.dart';
import 'package:todaydo/Widgets/task_list.dart';

class TasksListState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, data, child) {
        return ListView.builder(
            itemCount: data.task.length,
            itemBuilder: (context, index) {
              return TaskTile(
                taskTitle: data.task[index].name,
                isChecked: data.task[index].isDone,
                CheckBoxChange: (newValue) {
                  data.update(data.task[index]);
                },
                delete: () {
                  data.deleteTask(data.task[index]);
                },
              );
            });
      },
    );
  }
}
