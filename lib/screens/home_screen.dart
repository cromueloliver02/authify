import 'package:flutter/material.dart';
import '../widgets/atf_login_avatar.dart';
import '../widgets/atf_outline_button.dart';
import '../screens/login_screen.dart';
import '../data.dart';

class HomeScreen extends StatelessWidget {
  static const id = '/';

  const HomeScreen({super.key});

  void logout(BuildContext ctx) =>
      Navigator.pushReplacementNamed(ctx, LoginScreen.id);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        width: screenSize.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const ATFLoginAvatar(),
            const SizedBox(height: 50),
            const Text(
              'John Doe',
              style: TextStyle(
                color: primaryColor,
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 50),
            SizedBox(
              width: screenSize.width * 0.75,
              child: ATFOutlineButton(
                title: 'Logout',
                onPressed: () => logout(context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
