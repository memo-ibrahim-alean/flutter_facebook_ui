import 'package:flutter/material.dart';

class CreateStoryWidget extends StatelessWidget {
  const CreateStoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 112,
      height: 178,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              'assets/images/Messi.jpg',
              width: 112,
              height: 124,
              fit: BoxFit.cover,
            ),
          ),
          const Positioned(
            left: 40,
            bottom: 60,
            child: CircleAvatar(
              radius: 18,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.add,
                size: 24,
                color: Colors.white,
              ),
            ),
          ),
          const Positioned(
            left: 10,
            right: 10,
            bottom: 21,
            child: Text(
              'Create a\nStory',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF242527),
                fontSize: 13,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}