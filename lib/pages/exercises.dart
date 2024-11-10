import 'package:flutter/material.dart';

import '../data/constants.dart';

class ExercisesPage extends StatelessWidget {
  const ExercisesPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Sort the list alphabetically by the 'name' property.
    final sortedExercises = List<Map<String, String>>.from(bodyweightExercises)
      ..sort((a, b) => a['name']!.compareTo(b['name']!));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Exercises'),
      ),
      body: Center(
        child:
            // list of exercises and their name and image in a listview.builder + listtile,
            // with a leading image and a title
            ListView.builder(
          itemCount: sortedExercises.length,
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/exercise',
                  arguments: sortedExercises[index],
                );
              },
              //leading should use the First Letter of every word in the name of the exercise
              leading: CircleAvatar(
                backgroundColor: Theme.of(context).colorScheme.primary,
                child: Text(
                  sortedExercises[index]['name']![0],
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              title: Text(sortedExercises[index]['name']!),
            );
          },
        ),
      ),
    );
  }
}
