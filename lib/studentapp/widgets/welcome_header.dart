//Welcoming user with greeting and profile image
import 'package:flutter/material.dart';

class WelcomeHeader extends StatelessWidget {
  const WelcomeHeader({super.key, required this.name});
  final String name;
  //final String profileUrl - will be implemented when firebase is integrated

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 30,
          //backgroundImage:
        ),
        SizedBox(width: 12),
        Text(
          'Welcome, $name',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
