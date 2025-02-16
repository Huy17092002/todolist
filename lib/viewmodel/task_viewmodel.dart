import 'package:flutter/material.dart';
import 'package:todolist/model/task.dart';
import 'package:todolist/model/tasklist.dart';
import 'package:todolist/services/notification_service.dart';

class TaskViewModel extends ChangeNotifier {
  List<TaskList> taskLists = [];

  void addTaskToTaskList(TaskList taskList, Task newTask) {
    taskList.tasks.add(newTask);
    notifyListeners();
  }

  void deleteTask(TaskList taskList, Task task) {
    taskList.tasks.remove(task);
    notifyListeners();
  }

  void toggleTaskCompletion(TaskList taskList, Task task) {
    task.isCompleted = !task.isCompleted;
    notifyListeners();
  }

  void updateTaskTitle(TaskList taskList, Task task, String newTitle) {
    task.title = newTitle;
    notifyListeners();
  }

  void updateTaskDescription(TaskList taskList, Task task, String newDescription) {
    task.description = newDescription;
    notifyListeners();
  }
}
