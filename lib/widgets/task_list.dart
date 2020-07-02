import 'package:flutter/material.dart';
import 'package:todo/models/task.dart';
import 'package:todo/widgets/task_item.dart';

class TasksList extends StatelessWidget {
  final List<Task> tasks;
  final Function onChangedItemCheckboxState;

  TasksList({@required this.tasks, this.onChangedItemCheckboxState});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) => TaskItem(
        taskTitle: tasks[index].name,
        isChecked: tasks[index].isDone,
        onChanged: (isDone) => onChangedItemCheckboxState(isDone, index),
      ),
    );
  }
}
