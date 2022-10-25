import 'package:flutter/material.dart';
import 'utils/fade_page_transition.dart';
import 'utils/slide_page_transition.dart';
import 'screens/login_screen.dart';
import 'screens/home_screen.dart';
import 'data.dart';

class AuthifyApp extends StatelessWidget {
  const AuthifyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Authify',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: primaryColor,
      ),
      initialRoute: LoginScreen.id,
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case LoginScreen.id:
            return SlidePageTransition(
              settings: settings,
              child: const LoginScreen(),
            );
          case HomeScreen.id:
            return FadePageTransition(
              settings: settings,
              child: const HomeScreen(),
            );
        }

        return null;
      },
    );
  }
}
