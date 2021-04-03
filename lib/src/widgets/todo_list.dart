import 'package:flutter/material.dart';
import 'package:todo/src/models/todo.dart';
import 'package:todo/src/widgets/todo_item.dart';

class TodoList extends StatelessWidget {
  final List<Todo> todos;

  TodoList({@required this.todos});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: getTodos(),
    );
  }

  List<Widget> getTodos() {
    return todos.map((todo) => TodoItem(todo: todo)).toList();
  }
}
