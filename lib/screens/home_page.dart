import 'package:flutter/material.dart';
import '../components/bottom_nav_bar.dart';
import '../components/post_card.dart';
import '../components/story_bar.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Proppz', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 0,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            StoryBar(),

             // **will be object from database with while loop**
            PostCard(
              profileImage: 'lib/assets/avatar_placeholder.jpg',
              username: 'big_mike_330',
              postImage: 'lib/assets/post_placeholder.jpg',
              caption: 'Mentor Mondays with the boyz.',
              likes: 256,
              comments: 31,
              timeAgo: '2 days ago',
            ),
            PostCard(
              profileImage: 'lib/assets/avatar_placeholder.jpg',
              username: 'ajamonet',
              postImage: 'lib/assets/post_placeholder.jpg',
              caption: 'Excited to share this moment!',
              likes: 134,
              comments: 15,
              timeAgo: '1 day ago',
            ),
            PostCard(
              profileImage: 'lib/assets/avatar_placeholder.jpg',
              username: 'iam_zelda',
              postImage: 'lib/assets/post_placeholder.jpg',
              caption: 'Feeling inspired 💜',
              likes: 89,
              comments: 8,
              timeAgo: '5 hours ago',
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(
        currentIndex: 0,
        onTap: (index) {
          // print("Tab $index tapped");
        },
      ),
    );
  }
}
