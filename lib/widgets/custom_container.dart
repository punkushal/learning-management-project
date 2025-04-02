import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    this.borderColor = Colors.grey,
    this.content,
    this.radius = 8.0,
    this.bgcolor,
    required this.vertical,
    required this.horizontal,
  });
  final Color? bgcolor;
  final Widget? content;
  final double radius;
  final Color borderColor;
  final double vertical;
  final double horizontal;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: vertical, horizontal: horizontal),
      decoration: BoxDecoration(
          color: bgcolor,
          borderRadius: BorderRadius.circular(radius),
          border: Border.all(color: borderColor)),
      child: content,
    );
  }
}
