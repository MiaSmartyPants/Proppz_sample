import 'package:flutter/material.dart';
import '../components/bottom_nav_bar.dart';
import '../components/trend_button_row.dart';
import '../components/story_bar.dart';
import '../components/search_bar.dart';
import 'home_feed_page.dart';
// import 'trendz_page.dart';

class HomeGridPage extends StatelessWidget {
  const HomeGridPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: const Text('Proppz', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: [          
          const StoryBar(), 
          const SizedBox(height: 20), TrendButtonRow(),
          const  HomeSearchBar(),

        Expanded(
  child: GridView.builder(
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 3, // Number of columns
      mainAxisSpacing: 1,
      crossAxisSpacing: 1,
    ),
    itemCount: 20, // Number of items
    itemBuilder: (context, index) {
      return GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const HomeFeedPage(), // Navigate to feed
            ),
          );
        },
        child: Image.asset(
          'lib/assets/post_placeholder.jpg', // Replace with dynamic source
          fit: BoxFit.cover,
        ),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavBar(
        currentIndex: 0,
        onTap: (index) {
          // Handle navigation
        },
      ),
    );
  }
}
