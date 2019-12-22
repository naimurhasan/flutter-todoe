import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoe/models/task_data.dart';
import '../widgets/task_list_view.dart';
import 'add_task_screen.dart';

class TasksScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(30.0, 45.0, 30.0, 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                    radius: 25.0,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.format_list_bulleted,
                        color: Colors.blueAccent, size: 30.0)),
                SizedBox(height: 5.0),
                Text(
                  'Todoey',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  '${Provider.of<TaskData>(context).taskCount} Tasks',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              height: 300.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0)),
                color: Colors.white,
              ),
              child: TaskListView(),
            ),
          ),
        ],
      ),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: (){
                showModalBottomSheet(context: context, builder: (context) => AddTaskScreen());
            },
        ),
    );
  }
}






