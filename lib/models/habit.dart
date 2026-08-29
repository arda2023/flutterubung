class Habit {
  final String id;
  final String name;
  final String categoryId;
  final int streak;
  final bool isCompletedToday;

  Habit({
    required this.id,
    required this.name,
    required this.categoryId,
    required this.streak,
    required this.isCompletedToday,
  });

  Habit copyWith({
    String? id,
    String? name,
    String? categoryId,
    int? streak,
    bool? isCompletedToday,
  }) {
    // TODO: implement copyWith
    return Habit(
      streak: streak ?? this.streak,
      isCompletedToday: isCompletedToday ?? this.isCompletedToday,
      id: id ?? this.id,
      categoryId: categoryId ?? this.categoryId,
      name: name ?? this.name,
    );
  }
}
