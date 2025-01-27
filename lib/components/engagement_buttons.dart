import 'package:flutter/material.dart';

class EngagementButtons extends StatelessWidget {
  final VoidCallback onLeftArrowPressed;
  final VoidCallback onRightArrowPressed;
  final VoidCallback onStarPressed;

  const EngagementButtons({super.key, 
    required this.onLeftArrowPressed,
    required this.onRightArrowPressed,
    required this.onStarPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.grey),
          onPressed: onLeftArrowPressed,
        ),
        IconButton(
          icon: const Icon(Icons.star, color: Colors.purple), // Star icon
          onPressed: onStarPressed,
        ),
        IconButton(
          icon: const Icon(Icons.arrow_forward, color: Colors.grey),
          onPressed: onRightArrowPressed,
        ),
      ],
    );
  }
}
