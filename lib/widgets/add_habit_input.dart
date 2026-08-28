import 'package:flutter/material.dart';

/// A simple input area for adding a new habit.
///
/// Contains a text field for the habit name, a text field for the category
/// (simplified — see note below), and an "Add" button.
///
/// All interactive elements are INERT — the button's onPressed is empty.
class AddHabitInput extends StatelessWidget {
  const AddHabitInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          // Habit name input
          Expanded(
            flex: 2,
            child: TextField(
              decoration: const InputDecoration(
                hintText: 'Habit name',
                border: OutlineInputBorder(),
                isDense: true,
              ),
              onChanged: (value) {
                // TODO: store the entered name somewhere (e.g. a local
                // variable, a TextEditingController, or a separate provider)
                // so it can be used when the Add button is pressed.
              },
            ),
          ),
          const SizedBox(width: 8),
          // Category input
          //
          // NOTE / SIMPLIFICATION:
          // Ideally this should be a Dropdown that shows existing Category
          // objects (from categoryListProvider) and lets the user pick one,
          // so you get a valid categoryId. Right now it's just a plain
          // TextField where the user types a category name — which doesn't
          // directly give you a categoryId.
          //
          // When you implement this for real, you'll want to either:
          // a) Replace this with a DropdownButton<String> populated from
          //    the category list, where each item's value is the category id.
          // b) Or look up the typed name in the category list to find the
          //    matching id.
          Expanded(
            flex: 1,
            child: TextField(
              decoration: const InputDecoration(
                hintText: 'Category',
                border: OutlineInputBorder(),
                isDense: true,
              ),
              onChanged: (value) {
                // TODO: store the entered category value.
              },
            ),
          ),
          const SizedBox(width: 8),
          // Add button
          FilledButton(
            onPressed: () {
              // TODO: call addHabit(name, categoryId) on the HabitNotifier
              // via ref. You'll need:
              // 1. The habit name from the first TextField
              // 2. A valid categoryId (from the second TextField or a dropdown)
              // 3. Access to ref (convert to ConsumerWidget or pass callback)
              // 4. After adding, clear the text fields
            },
            child: const Text('Add'),
          ),
        ],
      ),
    );
  }
}
