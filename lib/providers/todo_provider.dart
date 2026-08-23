import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/todo.dart';

// ---------------------------------------------------------------------------
// Hardcoded dummy data — used as the initial state so the list screen
// has something to display without any real logic.
// ---------------------------------------------------------------------------
const List<Todo> kDummyTodos = [
  Todo(id: '1', title: 'Buy groceries', isDone: false),
  Todo(id: '2', title: 'Finish Flutter exercise', isDone: false),
  Todo(id: '3', title: 'Walk the dog', isDone: true),
];

// ---------------------------------------------------------------------------
// Notifier — manages the list of todos.
// All methods are EMPTY STUBS. Implement them as your exercise!
// ---------------------------------------------------------------------------

class TodoNotifier extends Notifier<List<Todo>> {
  @override
  List<Todo> build() {
    // The initial state is a mutable copy of the dummy list.
    return List<Todo>.from(kDummyTodos);
  }

  /// Adds a new [Todo] with the given [title] to the list.
  void addTodo(String title) {
    // TODO: implement
    // Hint: create a Todo with a unique id (e.g. DateTime.now().toString())
    //       and append it to `state`.
  }

  /// Toggles the [isDone] field of the todo identified by [id].
  void toggleTodo(String id) {
    // TODO: implement
    // Hint: use copyWith() on the matching todo and rebuild the list.
  }

  /// Removes the todo identified by [id] from the list.
  void removeTodo(String id) {
    // TODO: implement
    // Hint: filter `state` to exclude the todo with the matching id.
  }
}

// ---------------------------------------------------------------------------
// Provider — exposes TodoNotifier to the widget tree.
// ---------------------------------------------------------------------------

/// Read this provider in a [ConsumerWidget] to get the current list of todos.
///
/// Example:
///   final todos = ref.watch(todoListProvider);
final todoListProvider = NotifierProvider<TodoNotifier, List<Todo>>(
  TodoNotifier.new,
);
