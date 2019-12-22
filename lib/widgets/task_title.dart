import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

  TaskTile(this.name, this.isChecked, this.checkboxCallBack, this.longPressCallback);

  final String name;
  final bool isChecked;
  final Function checkboxCallBack;
  final Function longPressCallback;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(name, style: isChecked ? TextStyle(decoration: TextDecoration.lineThrough,) : null),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallBack,
      ),
    );
  }
}

