import 'package:flutter/material.dart';

import '../models/habit.dart';

/// Displays a single habit as a card.
///
/// Shows the habit name, streak, a checkbox for completion, a delete button,
/// and a placeholder for the category name.
///
/// All interactive elements (checkbox, delete button) are INERT — their
/// callbacks are empty with TODO comments for you to wire up.
class HabitCard extends StatelessWidget {
  final Habit habit;

  const HabitCard({super.key, required this.habit});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            // Checkbox to mark habit as completed today
            Checkbox(
              value: habit.isCompletedToday,
              onChanged: (value) {
                // TODO: call toggleCompletedToday(habit.id) on the
                // HabitNotifier via ref. This widget is currently a
                // StatelessWidget — you may need to convert it to a
                // ConsumerWidget or pass a callback from the parent.
              },
            ),
            // Habit name and category
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
                    'Category: TODO',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ),
            // Streak display
            Text(
              '🔥 ${habit.streak}',
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(width: 8),
            // Delete button
            IconButton(
              icon: const Icon(Icons.delete_outline, color: Colors.redAccent),
              onPressed: () {
                // TODO: call removeHabit(habit.id) on the HabitNotifier via ref.
                // Same consideration as the checkbox — you need ref access here.
              },
            ),
          ],
        ),
      ),
    );
  }
}
