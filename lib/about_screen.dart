import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Welcome to the About Page!',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
