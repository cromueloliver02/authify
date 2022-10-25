import 'package:flutter/material.dart';
import '../data.dart';

class ATFLoginAvatar extends StatelessWidget {
  final Animation<double> animation;

  const ATFLoginAvatar({
    super.key,
    required this.animation,
  });

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Center(
      child: AnimatedBuilder(
        animation: animation,
        builder: (ctx, child) => Transform(
          alignment: Alignment.center,
          transform: Matrix4.diagonal3Values(
            animation.value,
            animation.value,
            1,
          ),
          child: Container(
            width: screenSize.width * 0.45,
            height: screenSize.width * 0.45,
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
