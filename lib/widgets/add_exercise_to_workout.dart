import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:workout_tracker/models/workout_session.dart';
import 'package:workout_tracker/providers/exercise_provider.dart';

class AddExerciseToWorkout extends ConsumerStatefulWidget {
  final WorkoutSession workoutSession;

  const AddExerciseToWorkout(
    this.workoutSession, {
    super.key,
  });

  @override
  ConsumerState<AddExerciseToWorkout> createState() =>
      _AddExerciseToWorkoutState();
}

class _AddExerciseToWorkoutState extends ConsumerState<AddExerciseToWorkout> {
  @override
  Widget build(BuildContext context) {
    // final workoutSessionNotifier = ref.read(workoutSessionProvider.notifier);
    // final workoutSession = ref.watch(workoutSessionProvider);

    return Scaffold();
  }
}
