import 'package:facebookui/home_tab_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 6, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            controller: _tabController,
            indicator: const UnderlineTabIndicator(
              borderSide: BorderSide(color: Colors.blue, width: 2.0),
            ),
            labelColor: Colors.blue,
            unselectedLabelColor: Colors.black,
            tabs: [
              Tab(
                icon: Icon(
                  size: 35,
                  Icons.home,
                  color: Color(0xFF898F9C),
                ),
              ),
              Tab(
                icon: Icon(
                  size: 35,
                  Icons.video_library,
                  color: Color(0xFF898F9C),
                ),
              ),
              Tab(
                icon: Icon(
                  size: 35,
                  Icons.store,
                  color: Color(0xFF898F9C),
                ),
              ),
              Tab(
                icon: Icon(
                  size: 35,
                  Icons.person,
                  color: Color(0xFF898F9C),
                ),
              ),
              Tab(
                icon: Icon(
                  size: 35,
                  Icons.notifications,
                  color: Color(0xFF898F9C),
                ),
              ),
              Tab(
                icon: ClipOval(
                  child: SizedBox(
                    width: 31,
                    height: 31,
                    child: Image.asset('assets/images/Messi.jpg',
                        fit: BoxFit.cover),
                  ),
                ),
              )
            ],
          ),
          title: const Text(
            'Facebook',
            style: TextStyle(
              color: Color(0xFF1877F2),
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.white,
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
        body: TabBarView(
          controller: _tabController,
          children: const [
            HomeTabWidget(),
            Center(
              child: Text(
                'Videos Tab',
                style: TextStyle(fontSize: 50),
              ),
            ),
            Center(
              child: Text(
                'Store Tab',
                style: TextStyle(fontSize: 50),
              ),
            ),
            Center(
              child: Text(
                'Profile Tab',
                style: TextStyle(fontSize: 50),
              ),
            ),
            Center(
              child: Text(
                'Notification Tab',
                style: TextStyle(fontSize: 50),
              ),
            ),
            Center(
              child: Text(
                'Profile Logo Tab',
                style: TextStyle(fontSize: 50),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

