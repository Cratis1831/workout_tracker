class Exercise {
  final String bodyPartId;
  final int exerciseId;
  final String exerciseName;
  final String exerciseNote;

  Exercise(
    this.exerciseId, {
    required this.bodyPartId,
    required this.exerciseName,
    required this.exerciseNote,
  });
}
