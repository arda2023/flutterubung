import 'package:dartubung/main.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('HabitListScreen shows the dummy habits', (
    WidgetTester tester,
  ) async {
    // Build our app and trigger a frame. ProviderScope is required because
    // the app reads Riverpod providers.
    await tester.pumpWidget(
      const ProviderScope(child: HabitLoopApp()),
    );

    // Verify that the dummy habits are displayed.
    expect(find.text('Drink water'), findsOneWidget);
    expect(find.text('Read 10 pages'), findsOneWidget);
    expect(find.text('Meditate 5 min'), findsOneWidget);
  });
}
