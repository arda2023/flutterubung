import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/sort_option.dart';
import '../providers/habit_provider.dart';
import '../providers/sort_option_provider.dart';
import '../widgets/add_habit_input.dart';
import '../widgets/habit_card.dart';

class HabitListScreen extends ConsumerWidget {
  const HabitListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final habits = ref.watch(habitListProvider);
    final currentSort = ref.watch(sortOptionProvider);

    // TODO: Apply sorting to the habits list based on currentSort.
    //
    // Right now `habits` is displayed in its raw order (the order from the
    // dummy data list). You need to:
    // 1. Make a mutable copy of the list (since the provider's list is
    //    unmodifiable): e.g. `final sorted = [...habits];`
    // 2. Sort it based on the value of currentSort:
    //    - SortOption.name → sort alphabetically by habit.name
    //    - SortOption.streak → sort by habit.streak (descending?)
    //    - SortOption.category → sort by habit.categoryId (or resolved name)
    // 3. Use `sorted` instead of `habits` in the ListView below.
    //
    // Hint: List has a .sort() method that takes a comparator function.

    return Scaffold(
      appBar: AppBar(title: const Text('HabitLoop')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              children: [
                const Text('Sort by: '),
                const SizedBox(width: 8),
                DropdownButton<SortOption>(
                  value: currentSort,
                  items: SortOption.values.map((option) {
                    return DropdownMenuItem(
                      value: option,
                      child: Text(option.name),
                    );
                  }).toList(),
                  onChanged: (value) {},
                ),
              ],
            ),
          ),
          const Divider(height: 1),
          Expanded(
            child: ListView.builder(
              itemCount: habits.length,
              itemBuilder: (context, index) {
                return HabitCard(habit: habits[index]);
              },
            ),
          ),
          const Divider(height: 1),
          const AddHabitInput(),
        ],
      ),
    );
  }
}
