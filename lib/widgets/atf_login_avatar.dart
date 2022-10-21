import 'package:authify/data.dart';
import 'package:flutter/material.dart';

class ATFLoginAvatar extends StatelessWidget {
  const ATFLoginAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return SizedBox(
      width: screenSize.width * 0.45,
      height: screenSize.width * 0.45,
      child: Center(
        child: TweenAnimationBuilder(
          tween: Tween(begin: 0.0, end: 0.45),
          duration: const Duration(milliseconds: 800),
          curve: Curves.ease,
          builder: (ctx, value, child) => Container(
            width: screenSize.width * value,
            height: screenSize.width * value,
            decoration: const BoxDecoration(
              color: secondaryColor,
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/images/main_avatar.png'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
