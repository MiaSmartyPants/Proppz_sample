import 'package:flutter/material.dart';
import 'package:proppz_app/screens/home_grid_page.dart';
import 'package:proppz_app/screens/trendz_page.dart';

class TrendButtonRow extends StatelessWidget {
  const TrendButtonRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TrendButton(
          label: 'Netfeed',
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const HomeGridPage(), // Navigate to grid
              ),
            );
          },
        ),
        const SizedBox(width: 10),
        TrendButton(
          label: '#Trendz',
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const TrendzPage(), // Navigate to trendz
              ),
            );
          },
        ),
      ],
    );
  }
}

class TrendButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  const TrendButton({required this.label, required this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      ),
      child: Text(
        label,
        style: const TextStyle(color:Color(0xFF4A148C)),
      ),
    );
  }
}
