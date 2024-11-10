import 'package:flutter/material.dart';

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
      body: const Center(
        child: Text('Profile Page'),
      ),
    );
  }
}
