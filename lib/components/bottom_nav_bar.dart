import 'package:flutter/material.dart';
import '../screens/home_grid_page.dart';
import '../screens/search_page.dart';
import '../screens/add_page.dart';
import '../screens/proppz_page.dart';
import '../screens/profile_page.dart';

class BottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const BottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  void _navigateTo(BuildContext context, int index) {
    switch (index) {
      case 0:
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomeGridPage()));
        break;
      case 1:
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => SearchPage()));
        break;
      case 2:
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => AddPage()));
        break;
      case 3:
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => ProppzPage()));
        break;
      case 4:
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => ProfilePage()));
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (index) {
        _navigateTo(context, index);
        onTap(index);
      },
      selectedItemColor: const Color(0xFF4A148C), // Color for the selected item
      unselectedItemColor: const Color(0xFF4A148C), // Color for unselected items
      backgroundColor: Colors.white, // Background color of the navbar
      // type: BottomNavigationBarType.fixediu, 
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add),
          label: 'Add',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.star),
          label: 'Proppz',
        ),
        BottomNavigationBarItem(
          icon: CircleAvatar(
            radius: 12,
            backgroundImage: AssetImage('lib/assets/avatar_placeholder.jpg'),
          ),
          label: 'Profile',
        ),
      ],
    );
  }
}
