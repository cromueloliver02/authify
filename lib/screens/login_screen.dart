import 'package:flutter/material.dart';
import '../widgets/atf_login_avatar.dart';
import '../widgets/atf_text_field.dart';
import '../data.dart';

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
              const SizedBox(height: 100),
              SizedBox(
                width: screenSize.width * 0.75,
                child: MaterialButton(
                  onPressed: () {},
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  color: Colors.white,
                  minWidth: double.infinity,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: const Text(
                    'LOGIN',
                    style: TextStyle(
                      color: primaryColor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
