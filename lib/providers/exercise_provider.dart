// Define the provider
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:workout_tracker/models/exercise_set.dart';
import 'package:workout_tracker/models/workout_session.dart';

// Define the StateNotifier
class WorkoutSessionNotifier extends StateNotifier<WorkoutSession?> {
  WorkoutSessionNotifier() : super(null);

  // Initialize a new WorkoutSession
  void createWorkoutSession({
    required String userId,
    required String workoutDate,
    required String workoutName,
    String? workoutNote,
  }) {
    state = WorkoutSession(
      userId: userId,
      workoutDate: workoutDate,
      workoutName: workoutName,
      workoutNote: workoutNote,
      exerciseSet: [],
    );
  }

  // Add an ExerciseSet to the current session
  void addExerciseSet(ExerciseSet exerciseSet) {
    if (state != null) {
      state = WorkoutSession(
        userId: state!.userId,
        workoutDate: state!.workoutDate,
        workoutName: state!.workoutName,
        workoutNote: state!.workoutNote,
        exerciseSet: [...state!.exerciseSet ?? [], exerciseSet],
      );
    }
  }

  // Update workout note
  void updateWorkoutNote(String note) {
    if (state != null) {
      state = WorkoutSession(
        userId: state!.userId,
        workoutDate: state!.workoutDate,
        workoutName: state!.workoutName,
        workoutNote: note,
        exerciseSet: state!.exerciseSet,
      );
    }
  }

  // Clear the workout session
  void clearWorkoutSession() {
    state = null;
  }
}

final workoutSessionProvider =
    StateNotifierProvider<WorkoutSessionNotifier, WorkoutSession?>((ref) {
  return WorkoutSessionNotifier();
});
