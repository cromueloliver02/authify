import 'package:flutter/material.dart';

class ECMFadePageTransition extends PageRouteBuilder {
  @override
  final RouteSettings settings;
  final Widget child;
  // ignore: overridden_fields, annotate_overrides
  final Duration transitionDuration;

  ECMFadePageTransition({
    required this.settings,
    required this.child,
    this.transitionDuration = const Duration(milliseconds: 300),
  }) : super(
          settings: settings,
          transitionDuration: transitionDuration,
          transitionsBuilder: (ctx, anim, secondAnim, child) => FadeTransition(
            opacity: anim,
            child: child,
          ),
          pageBuilder: (ctx, anim, secondAnim) => child,
        );
}
