import 'package:workout_tracker/models/set_details.dart';

class ExerciseSet {
  final String exerciseId;
  final String exerciseNote;
  final double exerciseOrder;
  final List<SetDetails> sets;

  ExerciseSet({
    required this.exerciseId,
    required this.exerciseNote,
    required this.exerciseOrder,
    required this.sets,
  });
}
