import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/src/models/todo.dart';
import 'package:todo/src/providers/todos_provider.dart';

class TodoList extends StatelessWidget {
  final List<Todo> todos;

  TodoList({@required this.todos});

  @override
  Widget build(BuildContext context) {
    return Consumer<TodosProvider>(
      builder: (context, provider, child) {
        return ListView.builder(
            itemCount: provider.allTodos.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: Checkbox(
                  value: provider.allTodos[index].completed,
                  activeColor: Theme.of(context).primaryColor,
                  onChanged: (bool isChecked) {
                    provider.toggleTodo(provider.allTodos[index]);
                  },
                ),
                title: Text(provider.allTodos[index].title,
                    style: TextStyle(fontWeight: FontWeight.w500)),
                trailing: IconButton(
                  icon: Icon(
                    Icons.delete,
                    color: Theme.of(context).accentColor,
                  ),
                  onPressed: () {
                    provider.deleteTodo(provider.allTodos[index]);
                  },
                ),
              );
            });
      },
    );
  }
}
