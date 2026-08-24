import 'package:dartubung/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('TodoListScreen shows the dummy todos', (
    WidgetTester tester,
  ) async {
    // Build our app and trigger a frame. ProviderScope is required because
    // the app reads Riverpod providers.
    await tester.pumpWidget(
      const ProviderScope(child: TaskFlowApp()),
    );

    // Verify that the dummy todos are displayed.
    expect(find.text('Buy groceries'), findsOneWidget);
    expect(find.text('Finish Flutter exercise'), findsOneWidget);
    expect(find.text('Walk the dog'), findsOneWidget);
  });
}
