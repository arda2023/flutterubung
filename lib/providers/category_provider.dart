import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/category.dart';

/// Hardcoded dummy categories for visual testing.
final _dummyCategories = [
  Category(id: '1', name: 'Health'),
  Category(id: '2', name: 'Productivity'),
  Category(id: '3', name: 'Mindfulness'),
];

/// Provides the list of categories.
///
/// Categories are read-only in this exercise — the build() method simply
/// returns the dummy data. No add/remove/update methods are needed here.
class CategoryNotifier extends Notifier<List<Category>> {
  @override
  List<Category> build() {
    return _dummyCategories;
  }
}

final categoryListProvider =
    NotifierProvider<CategoryNotifier, List<Category>>(CategoryNotifier.new);
