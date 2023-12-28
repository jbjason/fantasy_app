import 'package:flutter/material.dart';

class HomeTopTexts extends StatelessWidget {
  const HomeTopTexts({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: [
          const Text(
            'Discover',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontStyle: FontStyle.italic,
              letterSpacing: 1.3,
            ),
          ),
          const SizedBox(width: 50),
          Text(
            'Explore',
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.bold,
              color: Colors.grey[600]!,
              fontStyle: FontStyle.italic,
              letterSpacing: 1.3,
            ),
          ),
        ],
      ),
    );
  }
}
