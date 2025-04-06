import 'package:flutter/material.dart';

class CustomBottonNavigation extends StatefulWidget {
  const CustomBottonNavigation({
    super.key,
    required this.currentIndex,
    required this.onTabChanged,
  });
  final int currentIndex;
  final Function(int) onTabChanged;
  @override
  State<CustomBottonNavigation> createState() => _CustomBottonNavigationState();
}

class _CustomBottonNavigationState extends State<CustomBottonNavigation> {
  late int _selectedIndex;
  @override
  void initState() {
    _selectedIndex = widget.currentIndex;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(8),
          topRight: Radius.circular(8),
        ),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.07),
            blurRadius: 10,
            offset: Offset(0, -5),
          ),
        ],
      ),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildNavItem(Icons.home, 'Home', 0),
          _buildNavItem(Icons.book, 'Books', 1),
          _buildNavItem(Icons.person, 'Profile', 2),
        ],
      ),
    );
  }

  _buildNavItem(IconData icon, String label, int index) {
    final bool isActive = _selectedIndex == index;
    return InkWell(
      onTap: () {
        if (_selectedIndex != index) {
          setState(() {
            _selectedIndex = index;
          });
          widget.onTabChanged(index);
        }
      },
      child: Column(
        children: [
          Icon(
            icon,
            color: isActive ? Colors.blue.shade800 : Colors.grey.shade600,
            size: 24,
          ),
          SizedBox(height: 3),
          if (isActive)
            Container(
              width: 20,
              height: 3,
              decoration: BoxDecoration(
                color: Colors.blue.shade800,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
        ],
      ),
    );
  }
}
