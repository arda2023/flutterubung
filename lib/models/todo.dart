/// A single to-do item.
///
/// Fields:
///   [id]     – unique identifier (e.g. a UUID string)
///   [title]  – the human-readable task description
///   [isDone] – whether the task has been completed
class Todo {
  final String id;
  final String title;
  final bool isDone;

  const Todo({required this.id, required this.title, required this.isDone});

  Todo copyWith({String? id, String? title, bool? isDone}) {
    return Todo(
      id: id ?? this.id,
      title: title ?? this.title,
      isDone: isDone ?? this.isDone,
    );
  }

  // ---------------------------------------------------------------------------
  // TODO (Exercise 1): Add a copyWith() method.
  // ---------------------------------------------------------------------------

  @override
  String toString() => 'Todo(id: $id, title: "$title", isDone: $isDone)';
}
