import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Facebook',
          style: TextStyle(
            color: Color(0xFF1877F2),
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            icon: SvgPicture.asset(
              'assets/icons/Plus.svg',
              color: Colors.black,
              width: 24,
              height: 24,
            ),
            onPressed: () {
              // Handle plus button press
            },
          ),
          IconButton(
            icon: SvgPicture.asset(
              'assets/icons/Search.svg',
              color: Colors.black,
              width: 24,
              height: 24,
            ),
            onPressed: () {
              // Handle search button press
            },
          ),
          IconButton(
            icon: SvgPicture.asset(
              'assets/icons/messenger_icon.svg',
              color: Colors.black,
              width: 24,
              height: 24,
            ),
            onPressed: () {
              // Handle Messenger button press
            },
          ),
        ],
      ),
      body: const Center(
        child: Text('HomeScreen'),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(home: HomeScreen()));
}
