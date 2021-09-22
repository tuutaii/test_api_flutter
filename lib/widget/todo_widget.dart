import 'package:flutter/material.dart';
import 'package:flutter_api/models/todo_model.dart';

class TodoWidget extends StatelessWidget {
  late final Todo _todo;

  TodoWidget(this._todo);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "UserID: ${_todo.userId}\nID: ${_todo.id}\nTitle: ${_todo.title}\nCompleted: ${_todo.completed}",
          style: TextStyle(fontSize: 20),
        ),
      ],
    );
  }
}
