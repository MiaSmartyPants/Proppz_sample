import 'package:flutter/material.dart';

class StoryBar extends StatelessWidget {
  const StoryBar({super.key});

  @override
  Widget build(BuildContext context) {
    // Placeholder data for stories
    final List<Map<String, String>> stories = [
      {"name": "propperlc"},
      {"name": "ajamonet", "badge": "3"},
      {"name": "iam_zelda"},
      {"name": "bignenerg", "badge": "+"},
    ];

    return Container(
      width: double.infinity, // Edge-to-edge width
      color: const Color(0xFF4A148C), // Darker purple color
      height: 120, // Adjust height as needed
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: stories.map((story) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12.0),
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      const CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage('assets/avatar_placeholder.jpg'),
                      ),
                      if (story.containsKey("badge"))
                        Positioned(
                          bottom: 5,
                          right: 0,
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.white, width: 2),
                            ),
                            child: Center(
                              child: Text(
                                story["badge"]!,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    story["name"]!,
                    style: const TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
