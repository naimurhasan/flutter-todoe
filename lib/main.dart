import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoe/models/task_data.dart';
import 'screens/tasks_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{

    @override
    Widget build(BuildContext context){
        return ChangeNotifierProvider<TaskData>(
          create: (BuildContext context) => TaskData(),
          child: MaterialApp(
              home: TasksScreen(),
          ),
        );
    }
}
