import 'package:flutter/material.dart';
import 'package:workout_tracker/pages/create_workout.dart';
import 'package:workout_tracker/pages/exercises.dart';
import 'package:workout_tracker/pages/history.dart';
import 'package:workout_tracker/pages/profile.dart';
import 'package:workout_tracker/pages/settings.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: [
        const ProfilePage(),
        const HistoryPage(),
        const CreateWorkoutPage(),
        const ExercisesPage(),
        const SettingsPage(),
      ][currentPageIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(top: 16.0, left: 8.0, right: 8.0),
        child: NavigationBar(
          // indicator color theme primary colour
          indicatorColor: Theme.of(context).primaryColor.withOpacity(0.8),
          onDestinationSelected: (int index) {
            setState(() {
              currentPageIndex = index;
            });
          },
          backgroundColor: Colors.transparent,
          selectedIndex: currentPageIndex,
          height: 40,
          destinations: [
            const NavigationDestination(
              selectedIcon: Icon(
                Icons.person_rounded,
                //use icon theme color
              ),
              icon: Badge(
                label: Text('3'),
                child: Icon(
                  Icons.person_outline_rounded,
                ),
              ),
              label: 'Profile',
            ),
            NavigationDestination(
              selectedIcon: Icon(
                Icons.history_rounded,
                color: Theme.of(context).iconTheme.color,
              ),
              icon: const Icon(Icons.history_rounded),
              label: 'History',
            ),
            NavigationDestination(
              selectedIcon: Icon(
                Icons.add_rounded,
                color: Theme.of(context).iconTheme.color,
              ),
              icon: const Icon(Icons.add_rounded),
              label: 'Workout',
            ),
            NavigationDestination(
              selectedIcon: Icon(
                Icons.fitness_center_rounded,
                color: Theme.of(context).iconTheme.color,
              ),
              icon: const Icon(Icons.fitness_center_rounded),
              label: 'Exercises',
            ),
            NavigationDestination(
              icon: const Icon(Icons.settings_outlined),
              selectedIcon: Icon(
                Icons.settings_rounded,
                color: Theme.of(context).iconTheme.color,
              ),
              label: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}
