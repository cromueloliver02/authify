import 'package:flutter/material.dart';
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
        HomeScreen.id: (ctx) => const HomeScreen(),
      },
    );
  }
}
