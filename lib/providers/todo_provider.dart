import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';

import '../models/todo.dart';

const _uuid = Uuid();

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
    final newTodo = Todo(id: _uuid.v4(), title: title, isDone: false);
    state = [...state, newTodo];
  }

  /// Toggles the [isDone] field of the todo identified by [id].
  void toggleTodo(String id) {
    state = state.map((todo) {
      if (todo.id == id) {
        return todo.copyWith(isDone: !todo.isDone);
      } else {
        return todo;
      }
    }).toList();
  }

  /// Removes the todo identified by [id] from the list.
  void removeTodo(String id) {
    state = state.where((todo) {
      return todo.id != id;
    }).toList();
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
