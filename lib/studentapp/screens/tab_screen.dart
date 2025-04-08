import 'package:flutter/material.dart';
import 'package:learning_mgmt_app/studentapp/screens/profile_screen.dart';
import 'package:learning_mgmt_app/studentapp/screens/student_home_screen.dart';
import 'package:learning_mgmt_app/studentapp/widgets/bottom_navigation.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({super.key});

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  int _currentIndex = 0;
  // List of screens to display
  final List<Widget> _screens = [StudentHomeScreen(), ProfileScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: CustomBottonNavigation(
        currentIndex: _currentIndex,
        onTabChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
