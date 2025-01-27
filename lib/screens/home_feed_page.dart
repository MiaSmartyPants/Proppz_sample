import 'package:flutter/material.dart';
import '../components/bottom_nav_bar.dart';
import '../components/post_card.dart';
import '../components/story_bar.dart';

class HomeFeedPage extends StatelessWidget {
  const HomeFeedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        // title: const Text('Proppz', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const PostCard(
              profileImage: 'lib/assets/avatar_placeholder.jpg',
              username: 'big_mike_330',
              postImage: 'lib/assets/post_placeholder.jpg',
              caption: 'Mentor Mondays with the boyz.',
              likes: 256,
              comments: 31,
              timeAgo: '2 days ago',
            ),
            // Additional PostCards here
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(
        currentIndex: 0,
        onTap: (index) {
          // Handle bottom navigation
        },
      ),
    );
  }
}
