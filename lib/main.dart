import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'screens/todo_list_screen.dart';

void main() {
  // ProviderScope is required by Riverpod — it must wrap the entire widget
  // tree so that every widget below can read providers.
  runApp(const ProviderScope(child: TaskFlowApp()));
}

/// Root widget of the TaskFlow application.
class TaskFlowApp extends StatelessWidget {
  const TaskFlowApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TaskFlow',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: const TodoListScreen(),
    );
  }
}
