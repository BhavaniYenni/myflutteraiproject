import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'about_screen.dart';
import 'contact_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  final List<Widget> _children = [HomeScreen(), AboutScreen(), ContactScreen()];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'About',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_mail),
            label: 'Contact',
          ),
        ],
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Flutter AppBar'),
        centerTitle: true,
        backgroundColor: Colors.blue, // Change AppBar color
        elevation: 4, // Shadow effect
        leading: IconButton(
          icon: Icon(Icons.menu), // Menu icon
          onPressed: () {
            // Add menu action here
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search), // Search icon
            onPressed: () {
              // Add search action here
            },
          ),
          IconButton(
            icon: Icon(Icons.notifications), // Notification icon
            onPressed: () {
              // Add notification action here
            },
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: Container(
            color: Colors.blue[800],
            child: Center(
              child: Text(
                "Welcome to My App!",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ),
        ),
      ),
      body: Center(
        child: Text(
          'Hello, Flutter!',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
