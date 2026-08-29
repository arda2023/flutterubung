import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/category.dart';

final _dummyCategories = [
  Category(id: '1', name: 'Health'),
  Category(id: '2', name: 'Productivity'),
  Category(id: '3', name: 'Mindfulness'),
];

class CategoryNotifier extends Notifier<List<Category>> {
  @override
  List<Category> build() {
    return _dummyCategories;
  }
}

final categoryListProvider =
    NotifierProvider<CategoryNotifier, List<Category>>(CategoryNotifier.new);
