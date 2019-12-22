import 'dart:collection';

import 'package:flutter/foundation.dart';

import 'task.dart';

class TaskData with ChangeNotifier{
  List<Task> _tasks = [
    Task('Sample Task 1'),
    Task('Long press to delete, me.'),
  ];

  String getTitle(int position) => _tasks[position].title;
  bool getIsDone(int position) => _tasks[position].isDone;

  UnmodifiableListView<Task> get tasks => UnmodifiableListView(_tasks);

  int get taskCount => _tasks.length;
  
  void addTask(String value){
    _tasks.add(Task(value));
    notifyListeners();
  }

  void updateTask(Task task){
    task.changeStatus();
    notifyListeners();
  }

  void removeTask(Task task){
    _tasks.remove(task);
    notifyListeners();
  }
}