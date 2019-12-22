import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoe/models/task_data.dart';

String taskTitle;
class AddTaskScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text('Add task', style: TextStyle(color: Colors.blueAccent, fontSize: 30.0,),textAlign: TextAlign.center,),
            TextField(onChanged: (value){taskTitle = value;},),
            RaisedButton(
              child: Text('Add', style: TextStyle(color: Colors.white),),color: Colors.blueAccent,
              onPressed: (){
                if(taskTitle == null){return;}
                Provider.of<TaskData>(context).addTask(taskTitle);
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}