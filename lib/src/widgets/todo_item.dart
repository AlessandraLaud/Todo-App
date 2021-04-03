/*
Here, Provider.of<TodosProvider>(context, listen: false).toggleTodo(task); reveals
the instance of TodosProvider. This can be used to call its methods on that class
The listen: false argument tells flutter that this widget doese not need to be
re-rendeered on state changes
*/
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/src/models/todo.dart';
import 'package:todo/src/providers/todos_provider.dart';

class TodoItem extends StatelessWidget {
  final Todo todo;

  TodoItem({@required this.todo});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Checkbox(
        value: todo.completed,
        activeColor: Theme.of(context).primaryColor,
        onChanged: (bool isChecked) {
          Provider.of<TodosProvider>(context, listen: false).toggleTodo(todo);
        },
      ),
      title: Text(todo.title, style: TextStyle(fontWeight: FontWeight.w500)),
      trailing: IconButton(
        icon: Icon(
          Icons.delete,
          color: Theme.of(context).accentColor,
        ),
        onPressed: () {
          Provider.of<TodosProvider>(context, listen: false).deleteTodo(todo);
        },
      ),
    );
  }
}
