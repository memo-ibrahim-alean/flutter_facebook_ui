import 'create_story_widget.dart'; // Corrected import statement
import 'view_story_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeTabWidget extends StatelessWidget {
  const HomeTabWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
          child: Row(
            children: [
              CircleAvatar(
                radius: 35,
                child: ClipOval(
                  child: Image.asset(
                    'assets/images/Messi.jpg',
                    width: 63,
                    height: 63,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              const Text(
                'What’s in Your Mind?',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF898F9C),
                ),
              ),
              const Spacer(),
              SvgPicture.asset(
                'assets/images/feed_image.svg',
                width: 28,
                height: 28,
              )
            ],
          ),
        ),
        const Divider(
          color: Color(0xFF898F9C),
          thickness: 2,
        ),
        SizedBox(
          height: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              CreateStoryWidget(),
              SizedBox(width: 5), // Add spacing between story widgets
              ViewStoryWidget(
                avatarImage: 'assets/images/model1.jpg',
                storyImage: 'assets/images/image1.jpg',
              ),
              SizedBox(width: 5), // Add spacing between story widgets
              ViewStoryWidget(
                avatarImage: 'assets/images/model2.jpg',
                storyImage: 'assets/images/image2.jpg',
              ),
              SizedBox(width: 5), // Add spacing between story widgets
              ViewStoryWidget(
                avatarImage: 'assets/images/model3.jpg',
                storyImage: 'assets/images/image3.jpg',
              ),
              SizedBox(width: 5), // Add spacing between story widgets
              ViewStoryWidget(
                avatarImage: 'assets/images/model4.jpg',
                storyImage: 'assets/images/image4.jpg',
              ),
              SizedBox(width: 5), // Add spacing between story widgets
              ViewStoryWidget(
                avatarImage: 'assets/images/model1.jpg',
                storyImage: 'assets/images/image1.jpg',
              ),
              SizedBox(width: 5), // Add spacing between story widgets
              ViewStoryWidget(
                avatarImage: 'assets/images/model2.jpg',
                storyImage: 'assets/images/image2.jpg',
              ),
              SizedBox(width: 5), // Add spacing between story widgets
              ViewStoryWidget(
                avatarImage: 'assets/images/model3.jpg',
                storyImage: 'assets/images/image3.jpg',
              ),
              SizedBox(width: 5), // Add spacing between story widgets
              ViewStoryWidget(
                avatarImage: 'assets/images/model4.jpg',
                storyImage: 'assets/images/image4.jpg',
              ),
            ],
          ),
        ),
        const Divider(
          color: Color(0xFF898F9C),
          thickness: 2,
        ),
      ],
    );
  }
}