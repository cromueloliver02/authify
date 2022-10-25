import 'package:flutter/material.dart';

class SlidePageTransition extends PageRouteBuilder {
  @override
  final RouteSettings settings;
  final Widget child;
  // ignore: overridden_fields, annotate_overrides
  final Duration transitionDuration;

  SlidePageTransition({
    required this.settings,
    required this.child,
    this.transitionDuration = const Duration(milliseconds: 500),
  }) : super(
          settings: settings,
          transitionDuration: transitionDuration,
          transitionsBuilder: (ctx, anim, secondAnim, child) => SlideTransition(
            position: Tween(
              begin: const Offset(0, 1),
              end: const Offset(0, 0),
            ).animate(anim),
            child: child,
          ),
          pageBuilder: (ctx, anim, secondAnim) => child,
        );
}
