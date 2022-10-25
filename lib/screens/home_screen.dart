import 'package:flutter/material.dart';
import '../widgets/atf_login_avatar.dart';
import '../widgets/atf_outline_button.dart';
import '../screens/login_screen.dart';
import '../data.dart';

class HomeScreen extends StatefulWidget {
  static const id = '/';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animController;
  late final Animation<double> _sizeAnimation;

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
            ATFLoginAvatar(animation: _sizeAnimation),
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

  @override
  void initState() {
    super.initState();
    _animController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
      reverseDuration: const Duration(milliseconds: 500),
    );

    final curveAnimation = CurvedAnimation(
      parent: _animController,
      curve: Curves.easeInOutBack,
    );

    _sizeAnimation = Tween(
      begin: 0.0,
      end: 1.0,
    ).animate(curveAnimation);

    _animController.forward();
  }

  @override
  void dispose() {
    _animController.dispose();
    super.dispose();
  }
}
