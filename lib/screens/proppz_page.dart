import 'package:flutter/material.dart';
import '../components/bottom_nav_bar.dart';

class ProppzPage extends StatelessWidget {
  const ProppzPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Proppz Page"),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          "Welcome to the Proppz Page!",
          style: TextStyle(fontSize: 24),
        ),
      ),
      bottomNavigationBar: BottomNavBar(
        currentIndex: 3, // Proppz tab index
        onTap: (index) {
          // Navigation logic handled in BottomNavBar
        },
      ),
    );
  }
}
