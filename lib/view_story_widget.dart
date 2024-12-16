import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ViewStoryWidget extends StatelessWidget {
  final String avatarImage;
  final String storyImage;

  const ViewStoryWidget({
    super.key,
    required this.avatarImage,
    required this.storyImage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 112,
      height: 178,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              storyImage,
              width: 112,
              height: 178,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 10,
            left: 5,
            child: CircleAvatar(
                radius: 28,
                backgroundColor: Colors.blue,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    avatarImage,
                    fit: BoxFit.cover,
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
