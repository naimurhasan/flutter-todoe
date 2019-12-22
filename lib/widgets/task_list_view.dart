import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoe/models/task_data.dart';
import 'task_title.dart';

class TaskListView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
        builder: (context, taskData, _){
          return ListView.builder(
            itemCount: taskData.taskCount,
            itemBuilder:  (context, position){
              return TaskTile(
                  taskData.tasks[position].title,
                  taskData.tasks[position].isDone,
                      (newValue){
                    taskData.updateTask(taskData.tasks[position]);
                  },
                  (){
                    taskData.removeTask(taskData.tasks[position]);
                  }
              );
            },
          );
        },
        );
  }
}


