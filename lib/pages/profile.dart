import 'package:flutter/material.dart';
import 'package:workout_tracker/widgets/profile_header.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          // profile icon
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              // navigate to profile page
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: ListView(
          children: const [
            ProfileHeader(),
          ],
        ),
      ),
    );
  }
}
