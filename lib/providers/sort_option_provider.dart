import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/sort_option.dart';

/// Holds the currently selected sort option.
///
/// Defaults to SortOption.name. The actual sorting logic (applying this
/// value to reorder the habit list) is NOT implemented here — you will
/// need to use this provider's value in HabitListScreen to sort the list
/// before displaying it.
final sortOptionProvider = StateProvider<SortOption>((ref) {
  return SortOption.name;
});
