import 'package:flutter/material.dart';
import '../components/trend_button_row.dart';

class TrendzPage extends StatelessWidget {
  const TrendzPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('#Trendz', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: TrendButtonRow(), // Buttons defined in the component
          ),
          const Expanded(
            child: Center(child: Text('Trendz content here')),
          ),
        ],
      ),
    );
  }
}
