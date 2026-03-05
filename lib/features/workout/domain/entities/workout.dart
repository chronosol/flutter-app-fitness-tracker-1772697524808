class Workout {
  final String id;
  final String name;
  final List<String> exercises;

  const Workout({required this.id, required this.name, required this.exercises});

  Workout copyWith({String? id, String? name, List<String>? exercises}) {
    return Workout(
      id: id ?? this.id,
      name: name ?? this.name,
      exercises: exercises ?? this.exercises,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Workout &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          exercises == other.exercises;

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ exercises.hashCode;

  @override
  String toString() => 'Workout(id: $id, name: $name, exercises: $exercises)';
}
