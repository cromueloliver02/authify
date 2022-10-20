import 'package:flutter/material.dart';
import '../widgets/atf_login_avatar.dart';
import '../widgets/atf_text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
            ],
          ),
        ),
      ),
    );
  }
}
