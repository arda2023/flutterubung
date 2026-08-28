// =============================================================================
// Category — a plain Dart class representing a habit category.
//
// WHAT IS copyWith?
// -----------------
// In Dart (and Flutter especially), objects are often immutable — meaning once
// you create one, you don't change its fields directly. Instead, when you want
// a "modified version" of an object, you create a brand-new object that is
// identical to the original EXCEPT for the fields you want to change.
//
// That's what copyWith does: it returns a NEW instance of the class, copying
// all the current field values, but letting you override specific ones.
//
// For example, if you have:
//   final cat = Category(id: '1', name: 'Health');
//
// And you want a version with a different name but the same id, you'd call:
//   final updated = cat.copyWith(name: 'Fitness');
//
// The method signature uses OPTIONAL NAMED PARAMETERS (with `?` types) so
// that you only need to pass the fields you want to change. Inside the body,
// for each field, you check: "Did the caller pass a new value? If yes, use it.
// If no, use `this.fieldName` (the current value)."
//
// This pattern is extremely common in Flutter state management (Riverpod,
// Bloc, etc.) because it lets you produce new state objects without mutating
// the old ones, which is how Flutter knows to rebuild widgets.
// =============================================================================

class Category {
  final String id;
  final String name;

  Category({
    required this.id,
    required this.name,
  });

  /// Creates a copy of this Category with the given fields replaced.
  /// See the class-level comment above for a full explanation of the pattern.
  Category copyWith({
    String? id,
    String? name,
  }) {
    // TODO: implement copyWith
    throw UnimplementedError();
  }
}
