import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.btnText,
    required this.onTap,
    this.btnColor,
  });
  final String btnText;
  final VoidCallback? onTap;
  final Color? btnColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: btnColor,
        side: BorderSide(color: const Color.fromARGB(255, 33, 61, 243)),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        minimumSize: Size(double.infinity, 65),
      ),
      child: Text(
        btnText,
        style: TextStyle(
          color: btnColor != Color.fromARGB(255, 33, 61, 243)
              ? Color.fromARGB(255, 33, 61, 243)
              : Colors.white,
        ),
      ),
    );
  }
}
