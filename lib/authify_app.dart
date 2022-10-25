import 'package:flutter/material.dart';
import 'utils/fade_page_transition.dart';
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
      routes: {
        LoginScreen.id: (ctx) => const LoginScreen(),
      },
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case HomeScreen.id:
            return ECMFadePageTransition(
              settings: settings,
              child: const HomeScreen(),
            );
        }

        return null;
      },
    );
  }
}
