import 'package:flutter/material.dart';
import 'package:todo/models/task.dart';

class TaskProvider with ChangeNotifier {
  List<Task> _tasks = [
    Task(name: "Buy eggs", isDone: false),
    Task(name: "Buy bread", isDone: false),
    Task(name: "Buy milk", isDone: false),
  ];

  List<Task> get tasks {
    return [..._tasks];
  }

  void changeTaskDone(int index, bool isDone) {
    _tasks[index].isDone = isDone;
    notifyListeners();
  }
}
