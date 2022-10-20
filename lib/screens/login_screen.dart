import 'package:flutter/material.dart';
import '../widgets/atf_login_avatar.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: SizedBox(
        width: screenSize.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            ATFLoginAvatar(),
          ],
        ),
      ),
    );
  }
}
