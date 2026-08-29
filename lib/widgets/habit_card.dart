import 'package:dartubung/providers/category_provider.dart';
import 'package:dartubung/providers/habit_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/habit.dart';

class HabitCard extends ConsumerWidget {
  final Habit habit;

  const HabitCard({super.key, required this.habit});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categories = ref.watch(categoryListProvider);
    final matchingCategory = categories.firstWhere(
      (category) => category.id == habit.categoryId,
    );
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            Checkbox(
              value: habit.isCompletedToday,
              onChanged: (value) {
                ref
                    .read(habitListProvider.notifier)
                    .toggleCompletedToday(habit.id);
              },
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    habit.name,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      decoration: habit.isCompletedToday
                          ? TextDecoration.lineThrough
                          : null,
                    ),
                  ),
                  const SizedBox(height: 4),
                  // TODO: Replace this placeholder with the actual category name.
                  // To do this, you need to:
                  // 1. Access the category list (from categoryListProvider)
                  // 2. Find the Category whose id matches habit.categoryId
                  // 3. Display that Category's name here
                  //
                  // Think about: where should you do this lookup? Here in the
                  // card widget (which would need ref access), or in the parent
                  // screen which already has ref, passing the resolved name down?
                  Text(
                    matchingCategory.name,
                    style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                  ),
                ],
              ),
            ),
            Text('🔥 ${habit.streak}', style: const TextStyle(fontSize: 16)),
            const SizedBox(width: 8),
            IconButton(
              icon: const Icon(Icons.delete_outline, color: Colors.redAccent),
              onPressed: () {
                ref.read(habitListProvider.notifier).removeHabit(habit.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
