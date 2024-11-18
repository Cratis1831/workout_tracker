import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:workout_tracker/providers/exercise_provider.dart';

class CreateWorkoutPage extends ConsumerStatefulWidget {
  const CreateWorkoutPage({super.key});

  @override
  ConsumerState<CreateWorkoutPage> createState() => _CreateWorkoutPageState();
}

class _CreateWorkoutPageState extends ConsumerState<CreateWorkoutPage> {
  final workoutNameController = TextEditingController();
  final workoutDateController = TextEditingController();
  final workoutNoteController = TextEditingController();

  @override
  void dispose() {
    workoutDateController.dispose();
    workoutNameController.dispose();
    workoutNoteController.dispose();
    super.dispose();
  }

  void createNewWorkoutSession(WorkoutSessionNotifier workoutSessionNotifier) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Create Workout Session'),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: workoutNameController,
                  decoration: const InputDecoration(
                    labelText: 'Workout Name',
                  ),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                workoutSessionNotifier.createWorkoutSession(
                  userId: 'user123', //TODO: replace with actual user id
                  workoutDate: DateTime.now().toIso8601String(),
                  workoutName: workoutNameController.text,
                );
                Navigator.pop(context);
              },
              child: const Text('Create'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Cancel'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final workoutSessionNotifier = ref.read(workoutSessionProvider.notifier);
    final workoutSession = ref.watch(workoutSessionProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Create Workout')),
      body: Column(
        children: [
          if (workoutSession != null)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Workout Name: ${workoutSession.workoutName}'),
            ),
          Center(
            child: workoutSession == null
                ? ElevatedButton(
                    onPressed: () =>
                        createNewWorkoutSession(workoutSessionNotifier),
                    child: const Text('Create Workout'),
                  )
                : Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          workoutSessionNotifier.clearWorkoutSession();
                        },
                        child: const Text('Clear Workout'),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Add Exercise'),
                      ),
                    ],
                  ),
          ),
        ],
      ),
    );
  }
}
