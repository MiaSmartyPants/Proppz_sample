import 'package:flutter/material.dart';
import '../components/bottom_nav_bar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile Page"),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          "This is the Profile Page!",
          style: TextStyle(fontSize: 24),
        ),
      ),
      bottomNavigationBar: BottomNavBar(
        currentIndex: 4, // Profile tab index
        onTap: (index) {
          // Navigation logic handled in BottomNavBar
        },
      ),
    );
  }
}
