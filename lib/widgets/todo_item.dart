import 'package:dartubung/providers/todo_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/todo.dart';

/// Displays a single [Todo] item as a [ListTile] with:
///   - a [Checkbox] on the left (tapping does nothing yet)
///   - the todo [title] as the main text, struck-through when [isDone]
///   - a delete [IconButton] on the right (tapping does nothing yet)
///
/// Optionally wrapped in a [Dismissible] for swipe-to-delete (also inert).
class TodoItem extends ConsumerWidget {
  final Todo todo;

  const TodoItem({super.key, required this.todo});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Dismissible(
      // A unique key is required by Dismissible.
      key: ValueKey(todo.id),
      direction: DismissDirection.endToStart,
      // TODO (Exercise 3): Implement remove action here.
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
          // TODO (Exercise 4): Implement toggle action here.
          onChanged: (_) {
            ref.read(todoListProvider.notifier).toggleTodo(todo.id);
          },
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
          // TODO (Exercise 5): Implement remove action here.
          onPressed: () {},
        ),
      ),
    );
  }
}
