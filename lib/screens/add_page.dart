import 'package:flutter/material.dart';
import '../components/bottom_nav_bar.dart';

class AddPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Add Page",
          style: TextStyle(fontSize: 24),
        ),
      ),
      bottomNavigationBar: BottomNavBar(
        currentIndex: 2, // Add tab index
        onTap: (index) {
          // Navigation logic handled in BottomNavBar
        },
      ),
    );
  }
}
