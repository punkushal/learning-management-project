import 'package:flutter/material.dart';

class StudentHomeScreen extends StatelessWidget {
  const StudentHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          spacing: 10,
          children: [
            //This will be dynamically fetched from firebase
            CircleAvatar(),
            Text('Welcome, Kushal'),
          ],
        ),
      ),
      body: Column(
        spacing: 10,
        children: [],
      ),
    );
  }
}
