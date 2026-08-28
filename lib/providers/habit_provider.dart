import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/habit.dart';

/// Hardcoded dummy habits for visual testing.
///
/// These reference category ids '1', '2', '3' which correspond to
/// "Health", "Productivity", "Mindfulness" in category_provider.dart.
final _dummyHabits = [
  Habit(
    id: '1',
    name: 'Drink water',
    categoryId: '1',
    streak: 5,
    isCompletedToday: true,
  ),
  Habit(
    id: '2',
    name: 'Read 10 pages',
    categoryId: '2',
    streak: 12,
    isCompletedToday: false,
  ),
  Habit(
    id: '3',
    name: 'Meditate 5 min',
    categoryId: '3',
    streak: 0,
    isCompletedToday: false,
  ),
  Habit(
    id: '4',
    name: 'Take a walk',
    categoryId: '1',
    streak: 3,
    isCompletedToday: true,
  ),
  Habit(
    id: '5',
    name: 'Review flashcards',
    categoryId: '2',
    streak: 0,
    isCompletedToday: false,
  ),
];

/// Provides the list of habits.
///
/// The build() method returns dummy data. All mutation methods below are
/// stubs for you to implement yourself.
class HabitNotifier extends Notifier<List<Habit>> {
  @override
  List<Habit> build() {
    return _dummyHabits;
  }

  /// Adds a new Habit to the list.
  ///
  /// You will need to:
  /// - Create a new Habit object (decide how to generate a unique id)
  /// - Set initial streak to 0 and isCompletedToday to false
  /// - Update `state` with a new list that includes the new habit
  void addHabit(String name, String categoryId) {
    // TODO: implement addHabit
  }

  /// Toggles the isCompletedToday flag for the habit with the given id.
  ///
  /// IMPORTANT DESIGN QUESTION FOR YOU TO THINK ABOUT:
  /// When you mark a habit as completed (isCompletedToday becomes true),
  /// should the streak also increment? And when you un-mark it (set back
  /// to false), should the streak decrement? What if the user toggles it
  /// multiple times in one day — should the streak keep going up and down?
  ///
  /// Consider:
  /// - Should streak only increment once per day?
  /// - What happens to streak when a day is missed entirely?
  /// - Is streak logic even appropriate to handle inside toggleCompletedToday,
  ///   or should it be a separate concern (e.g. a daily reset mechanism)?
  ///
  /// For now, just implement the toggle of isCompletedToday. You can decide
  /// on the streak logic after thinking it through.
  void toggleCompletedToday(String id) {
    // TODO: implement toggleCompletedToday
  }

  /// Removes the habit with the given id from the list.
  void removeHabit(String id) {
    // TODO: implement removeHabit
  }
}

final habitListProvider =
    NotifierProvider<HabitNotifier, List<Habit>>(HabitNotifier.new);
