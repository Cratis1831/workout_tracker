import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExercisesPage extends StatelessWidget {
  const ExercisesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Exercises'),
        ),
        body: const CupertinoTextField(
          placeholder: 'Search exercises',
        ));
  }
}
