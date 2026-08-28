// =============================================================================
// Habit — a plain Dart class representing a single trackable habit.
//
// WHAT IS copyWith?
// -----------------
// When you work with state management in Flutter (Riverpod, Bloc, etc.), you
// almost always treat your data objects as IMMUTABLE. That means you never do
// something like `habit.streak = 5;` — instead, you create a completely new
// Habit object that is identical to the old one except for the fields you
// want to change.
//
// copyWith is a convenience method that does exactly this. It takes OPTIONAL
// NAMED PARAMETERS for every field in the class. Each parameter is nullable
// (e.g. `String? name`) so that the caller can omit fields they don't want
// to change.
//
// Inside the method body, for each field you write something like:
//   name: name ?? this.name
// which means: "Use the new value if one was provided, otherwise keep the
// current value."
//
// The method then returns a brand-new Habit instance constructed with those
// values.
//
// Example usage:
//   final h = Habit(id: '1', name: 'Read', categoryId: '2', streak: 3, isCompletedToday: false);
//   final updated = h.copyWith(streak: 4, isCompletedToday: true);
//   // updated is a NEW Habit with streak=4, isCompletedToday=true,
//   // and all other fields copied from h.
//
// WHY does this matter?
// Because Flutter's widget tree compares old state vs new state to decide
// what to rebuild. If you mutate an existing object in place, Flutter can't
// detect the change. By creating a new object, the framework sees "this is a
// different object" and knows to re-render the relevant widgets.
//
// NOTE on the `id` field:
// The id is left as a plain String. You will decide yourself how to generate
// unique ids (UUID, incrementing counter, timestamp-based, etc.).
//
// NOTE on `categoryId`:
// This is a plain String that references a Category's id. The Habit does NOT
// contain a nested Category object — this is intentional so you can practice
// looking up the matching Category from a separate list/provider yourself.
// =============================================================================

class Habit {
  final String id;
  final String name;
  final String categoryId;
  final int streak;
  final bool isCompletedToday;

  Habit({
    required this.id,
    required this.name,
    required this.categoryId,
    required this.streak,
    required this.isCompletedToday,
  });

  /// Creates a copy of this Habit with the given fields replaced.
  /// See the class-level comment above for a full explanation of the pattern.
  Habit copyWith({
    String? id,
    String? name,
    String? categoryId,
    int? streak,
    bool? isCompletedToday,
  }) {
    // TODO: implement copyWith
    throw UnimplementedError();
  }
}
