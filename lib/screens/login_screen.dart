import 'package:flutter/material.dart';
import '../widgets/atf_login_avatar.dart';
import '../widgets/atf_text_field.dart';
import '../widgets/atf_solid_button.dart';
import '../screens/home_screen.dart';

class LoginScreen extends StatefulWidget {
  static const id = '/login';

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animController;
  late final Animation<double> _sizeAnimation;

  void onLogin(BuildContext ctx) async {
    await _animController.reverse();

    // ignore: use_build_context_synchronously
    Navigator.pushReplacementNamed(
      ctx,
      HomeScreen.id,
    );
  }

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
              ATFLoginAvatar(animation: _sizeAnimation),
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
