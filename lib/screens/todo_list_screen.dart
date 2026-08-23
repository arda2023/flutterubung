import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/filter_provider.dart';
import '../providers/todo_provider.dart';
import '../widgets/add_todo_input.dart';
import '../widgets/filter_selector.dart';
import '../widgets/todo_item.dart';

/// The main screen of the TaskFlow app.
///
/// Displays:
///   1. [FilterSelector] — filter tabs (inert for now)
///   2. A [ListView] of [TodoItem] widgets built from [todoListProvider]
///   3. [AddTodoInput] — text field + button pinned at the bottom
///
/// This is a [ConsumerWidget] so it can read Riverpod providers via [ref].
class TodoListScreen extends ConsumerWidget {
  const TodoListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Watch the todo list — the UI rebuilds whenever the list changes.
    final todos = ref.watch(todoListProvider);

    // Watch the active filter — currently only used to pass to FilterSelector
    // so the correct segment appears highlighted. No actual filtering yet.
    final activeFilter = ref.watch(activeFilterProvider);

    // TODO (Exercise 11): Filter the list based on `activeFilter`.

    return Scaffold(
      appBar: AppBar(
        title: const Text('TaskFlow'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // ── Filter row ──────────────────────────────────────────────────
          FilterSelector(selected: activeFilter),

          const Divider(height: 1),

          // ── Todo list ───────────────────────────────────────────────────
          Expanded(
            child: todos.isEmpty
                ? const Center(
                    child: Text(
                      'No tasks yet.\nAdd one below!',
                      textAlign: TextAlign.center,
                    ),
                  )
                : ListView.separated(
                    itemCount: todos.length,
                    separatorBuilder: (_, _) => const Divider(height: 1),
                    itemBuilder: (context, index) {
                      return TodoItem(todo: todos[index]);
                    },
                  ),
          ),

          const Divider(height: 1),

          // ── Add input ───────────────────────────────────────────────────
          const AddTodoInput(),
        ],
      ),
    );
  }
}
