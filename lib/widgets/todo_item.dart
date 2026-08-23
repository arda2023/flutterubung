import 'package:flutter/material.dart';

import '../models/todo.dart';

/// Displays a single [Todo] item as a [ListTile] with:
///   - a [Checkbox] on the left (tapping does nothing yet)
///   - the todo [title] as the main text, struck-through when [isDone]
///   - a delete [IconButton] on the right (tapping does nothing yet)
///
/// Optionally wrapped in a [Dismissible] for swipe-to-delete (also inert).
class TodoItem extends StatelessWidget {
  final Todo todo;

  const TodoItem({super.key, required this.todo});

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      // A unique key is required by Dismissible.
      key: ValueKey(todo.id),
      direction: DismissDirection.endToStart,
      // TODO (Exercise 3): Call removeTodo(todo.id) via the provider here.
      onDismissed: (_) {},
      background: Container(
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.only(right: 20),
        color: Colors.red,
        child: const Icon(Icons.delete, color: Colors.white),
      ),
      child: ListTile(
        leading: Checkbox(
          value: todo.isDone,
          // TODO (Exercise 4): Call toggleTodo(todo.id) via the provider here.
          onChanged: (_) {},
        ),
        title: Text(
          todo.title,
          style: TextStyle(
            decoration: todo.isDone ? TextDecoration.lineThrough : null,
            color: todo.isDone ? Colors.grey : null,
          ),
        ),
        trailing: IconButton(
          icon: const Icon(Icons.delete_outline),
          tooltip: 'Delete',
          // TODO (Exercise 5): Call removeTodo(todo.id) via the provider here.
          onPressed: () {},
        ),
      ),
    );
  }
}
