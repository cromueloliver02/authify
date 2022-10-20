import 'package:authify/data.dart';
import 'package:flutter/material.dart';

class ATFLoginAvatar extends StatelessWidget {
  const ATFLoginAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Container(
      width: screenSize.width * 0.45,
      height: screenSize.width * 0.45,
      decoration: const BoxDecoration(
        color: secondaryColor,
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage('assets/images/main_avatar.png'),
        ),
      ),
    );
  }
}
