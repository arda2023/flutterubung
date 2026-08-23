import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/filter_type.dart';

/// Holds the currently selected [FilterType].
///
/// Default value: [FilterType.all] (show every todo).
///
/// TODO (Exercise 2): Implement filtering logic and connect it to the UI.
final activeFilterProvider = StateProvider<FilterType>(
  (ref) => FilterType.all,
);
