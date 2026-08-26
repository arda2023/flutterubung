import 'package:dartubung/providers/filter_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/filter_type.dart';

/// Renders a [SegmentedButton] with three options: All, Open, Done.
///
/// [selected] is the currently active filter (read from the provider in the
/// parent screen). Tapping a segment does nothing yet.
///
/// TODO (Exercise 9): Pass a real [onSelectionChanged] callback from
/// [TodoListScreen].
class FilterSelector extends ConsumerWidget {
  /// The currently active filter — drives which segment appears selected.
  final FilterType selected;

  const FilterSelector({super.key, required this.selected});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
      child: SegmentedButton<FilterType>(
        segments: const [
          ButtonSegment(
            value: FilterType.all,
            label: Text('All'),
            icon: Icon(Icons.list),
          ),
          ButtonSegment(
            value: FilterType.open,
            label: Text('Open'),
            icon: Icon(Icons.radio_button_unchecked),
          ),
          ButtonSegment(
            value: FilterType.done,
            label: Text('Done'),
            icon: Icon(Icons.check_circle_outline),
          ),
        ],
        selected: {selected},
        // TODO (Exercise 10): Implement onSelectionChanged.
        onSelectionChanged: (newSelection) {
          ref.read(activeFilterProvider.notifier).state = newSelection.first;
        },
      ),
    );
  }
}
