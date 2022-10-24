import 'package:flutter/material.dart';
import '../data.dart';

class ATFOutlineButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const ATFOutlineButton({
    super.key,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      padding: const EdgeInsets.symmetric(vertical: 15),
      color: Colors.white,
      minWidth: double.infinity,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40),
        side: const BorderSide(
          color: primaryColor,
          width: 2,
        ),
      ),
      child: Text(
        title,
        style: const TextStyle(
          color: primaryColor,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
