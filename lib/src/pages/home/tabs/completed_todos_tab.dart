import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/src/providers/todos_provider.dart';
import 'package:todo/src/widgets/todo_list.dart';

class CompletedTodosTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Consumer<TodosProvider>(
          builder: (context, todos, child) => todos.completedTodos.length == 0
              ? Text("You have no completed todos",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.grey[800]))
              : TodoList(
                  todos: todos.completedTodos,
                  showCheckbox: false,
                ),
        ),
      ),
    );
  }
}
