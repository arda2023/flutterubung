import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';

import '../models/habit.dart';

const _uuid = Uuid();

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

class HabitNotifier extends Notifier<List<Habit>> {
  @override
  List<Habit> build() {
    return _dummyHabits;
  }

  void addHabit(String name, String categoryId) {
    final newHabit = Habit(
      id: _uuid.v4(),
      name: name,
      categoryId: categoryId,
      streak: 0,
      isCompletedToday: false,
    );
    state = [...state, newHabit];
  }

  void toggleCompletedToday(String id) {
    state = state.map((habit) {
      if (habit.id == id) {
        return habit.copyWith(
          isCompletedToday: !habit.isCompletedToday,
          streak: habit.isCompletedToday ? habit.streak - 1 : habit.streak + 1,
        );
      } else {
        return habit;
      }
    }).toList();
  }

  void removeHabit(String id) {
    state = state.where((habit) => habit.id != id).toList();
  }
}

final habitListProvider = NotifierProvider<HabitNotifier, List<Habit>>(
  HabitNotifier.new,
);
