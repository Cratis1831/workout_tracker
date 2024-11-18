import 'package:workout_tracker/models/exercise_set.dart';

class WorkoutSession {
  final String userId;
  final String workoutDate;
  final String workoutName;
  final String? workoutNote;
  final List<ExerciseSet>? exerciseSet;

  WorkoutSession({
    required this.userId,
    required this.workoutDate,
    required this.workoutName,
    this.workoutNote,
    this.exerciseSet,
  });
}
