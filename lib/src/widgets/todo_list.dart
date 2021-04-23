import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/src/models/todo.dart';
import 'package:todo/src/providers/todos_provider.dart';

class TodoList extends StatelessWidget {
  final List<Todo> todos;
  final bool showCheckbox;

  TodoList({@required this.todos, this.showCheckbox = true});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: todos.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: showCheckbox
                ? Checkbox(
                    value: todos[index].completed,
                    activeColor: Theme.of(context).primaryColor,
                    onChanged: (bool isChecked) {
                      Provider.of<TodosProvider>(context, listen: false)
                          .toggleTodo(todos[index]);
                    },
                  )
                : null,
            title: Text(todos[index].title,
                style: TextStyle(fontWeight: FontWeight.w500)),
            trailing: IconButton(
              icon: Icon(
                Icons.delete,
                color: Theme.of(context).accentColor,
              ),
              onPressed: () {
                Provider.of<TodosProvider>(context, listen: false)
                    .deleteTodo(todos[index]);
              },
            ),
          );
        });
  }
}
