import 'package:flutter/material.dart';

class FadeAnimationY extends StatelessWidget {
  final double delay;
  final Widget child;

  FadeAnimationY({required this.delay, required this.child});

  @override
  Widget build(BuildContext context) {
    final tween = MultiTrackTween([
      Track('opacity')
          .add(const Duration(milliseconds: 500), Tween(begin: 0.0, end: 1.0)),
      Track('translateY').add(
          const Duration(milliseconds: 500), Tween(begin: 120.0, end: 0.0),
          curve: Curves.easeOut)
    ]);

    return ControlledAnimation(
      delay: Duration(milliseconds: (500 * delay).round()),
      duration: tween.duration,
      tween: tween,
      child: child,
      builderWithChild: (context, child, animation) => Opacity(
        opacity: 0.5,
        child: Transform.translate(
          offset: Offset(0, 15.0), //TODO: to change
          child: child,
        ),
      ),
    );
  }
}
