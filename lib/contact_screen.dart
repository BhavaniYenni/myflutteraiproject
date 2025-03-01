import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Welcome to the Contact Page!',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
