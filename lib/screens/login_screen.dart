import 'package:flutter/material.dart';
import '../widgets/atf_login_avatar.dart';
import '../widgets/atf_text_field.dart';
import '../widgets/atf_solid_button.dart';
import '../screens/home_screen.dart';

class LoginScreen extends StatelessWidget {
  static const id = '/login';

  const LoginScreen({super.key});

  void onLogin(BuildContext ctx) => Navigator.pushReplacementNamed(
        ctx,
        HomeScreen.id,
      );

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: SizedBox(
          width: screenSize.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const ATFLoginAvatar(),
              const SizedBox(height: 70),
              SizedBox(
                width: screenSize.width * 0.75,
                child: const ATFTextField(
                  hintText: 'Email',
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              const SizedBox(height: 15),
              SizedBox(
                width: screenSize.width * 0.75,
                child: const ATFTextField(
                  hintText: 'Password',
                  obscureText: true,
                ),
              ),
              const SizedBox(height: 100),
              SizedBox(
                width: screenSize.width * 0.75,
                child: ATFSolidButton(
                  title: 'LOGIN',
                  onPressed: () => onLogin(context),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
