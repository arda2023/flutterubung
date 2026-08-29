import 'package:dartubung/providers/category_provider.dart';
import 'package:dartubung/providers/habit_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddHabitInput extends ConsumerStatefulWidget {
  const AddHabitInput({super.key});

  @override
  ConsumerState<AddHabitInput> createState() => _AddHabitInputState();
}

class _AddHabitInputState extends ConsumerState<AddHabitInput> {
  TextEditingController nameController = TextEditingController();
  TextEditingController categoryController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: TextField(
              controller: nameController,
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
          Expanded(
            flex: 1,
            child: TextField(
              controller: categoryController,
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
          FilledButton(
            onPressed: () {
              String nameC = nameController.text;

              final cat = ref.read(categoryListProvider);
              final matchingCat = cat.firstWhere(
                (element) => element.name == nameC,
              );

              ref
                  .read(habitListProvider.notifier)
                  .addHabit(nameC, matchingCat.id);
            },
            child: const Text('Add'),
          ),
        ],
      ),
    );
  }
}
