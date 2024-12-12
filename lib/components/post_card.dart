import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final String profileImage;
  final String username;
  final String postImage;
  final String caption;
  final int likes;
  final int comments;
  final String timeAgo;

  const PostCard({
    Key? key,
    required this.profileImage,
    required this.username,
    required this.postImage,
    required this.caption,
    required this.likes,
    required this.comments,
    required this.timeAgo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header: Profile Picture + Username + Menu
          ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage(profileImage),
            ),
            title: Row(
              children: [
                Text(username, style: TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(width: 5),
                const Icon(Icons.verified, size: 16, color: Colors.blue),
              ],
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.share, size: 20),
                const SizedBox(width: 8),
                Icon(Icons.more_vert, size: 20),
              ],
            ),
          ),

          // Post Image
          Image.asset(
            postImage,
            width: double.infinity,
            height: 250,
            fit: BoxFit.cover,
          ),

          // Interaction Row (arrows, custom icon)
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.arrow_back_ios, size: 20),
                Icon(Icons.star, size: 20, color: Colors.purple),
                Icon(Icons.arrow_forward_ios, size: 20),
              ],
            ),
          ),

          // Caption, Likes, Comments
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('$likes likes',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(height: 4),
                Text(caption),
                const SizedBox(height: 4),
                GestureDetector(
                  onTap: () {
                    print("View comments tapped");
                  },
                  child: Text('View comments ($comments)',
                      style: TextStyle(color: Colors.grey)),
                ),
                const SizedBox(height: 4),
                Text(timeAgo, style: TextStyle(color: Colors.grey)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
