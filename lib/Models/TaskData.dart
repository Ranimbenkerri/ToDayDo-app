import 'package:flutter/material.dart';
import 'package:todaydo/Models/Tasks.dart';

class TaskData extends ChangeNotifier {
  List<tasks> task = [
    tasks(name: 'go shopping'),
    tasks(name: 'buy a gift'),
    tasks(name: 'eat'),
  ];

  void addTask(String newTask) {
    task.add(tasks(name: newTask));
    notifyListeners();
  }

  void update(tasks Task) {
    Task.doneChange();
    notifyListeners();
  }

  void deleteTask(tasks tasks) {
    task.remove(tasks);
    notifyListeners();
  }
}
