import 'package:flutter/material.dart';

/// A row containing a [TextField] and an "Add" [ElevatedButton].
///
/// Typing into the field and pressing the button does nothing yet.
///
/// TODO (Exercise 6): Accept the text from the field and call
/// addTodo(text) via the provider when the button is pressed.
class AddTodoInput extends StatefulWidget {
  const AddTodoInput({super.key});

  @override
  State<AddTodoInput> createState() => _AddTodoInputState();
}

class _AddTodoInputState extends State<AddTodoInput> {
  // A TextEditingController lets you read the current value of the field.
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    // Always dispose controllers to avoid memory leaks.
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _controller,
              decoration: const InputDecoration(
                hintText: 'New task…',
                border: OutlineInputBorder(),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              ),
              // TODO (Exercise 7): Also trigger the add action on keyboard submit.
              onSubmitted: (_) {},
            ),
          ),
          const SizedBox(width: 8),
          ElevatedButton(
            // TODO (Exercise 8): Read _controller.text, call the provider,
            //       then clear the field with _controller.clear().
            onPressed: () {},
            child: const Text('Add'),
          ),
        ],
      ),
    );
  }
}
