import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/filter_type.dart';

/// Holds the currently selected [FilterType].
///
/// Default value: [FilterType.all] (show every todo).
///
/// TODO (Exercise 2): Read this provider inside [TodoListScreen] and pass
/// the value to [FilterSelector] so the segmented button reflects it.
/// Then connect it to the list so only matching todos are displayed.
final activeFilterProvider = StateProvider<FilterType>(
  (ref) => FilterType.all,
);
