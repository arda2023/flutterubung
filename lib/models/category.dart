class Category {
  final String id;
  final String name;

  Category({required this.id, required this.name});

  Category copyWith({String? id, String? name}) {
    // TODO: implement copyWith
    return Category(id: id ?? this.id, name: name ?? this.name);
  }
}
