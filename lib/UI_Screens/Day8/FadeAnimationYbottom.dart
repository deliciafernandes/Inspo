import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

class FadeAnimationYDownToUp extends StatelessWidget {
  final double delay;
  final Widget child;

  FadeAnimationYDownToUp({required this.delay, required this.child});

  @override
  Widget build(BuildContext context) {
    final tween = MultiTrackTween([
      Track('opacity')
          .add(Duration(milliseconds: 500), Tween(begin: 0.0, end: 1.0)),
      Track('translateY').add(
          Duration(milliseconds: 500),
          Tween(
              begin: -120.0,
              end: 0.0), //- added to 120 to make it begin downToUp
          curve: Curves.easeOut)
    ]);

    return ControlledAnimation(
      delay: Duration(milliseconds: (500 * delay).round()),
      duration: tween.duration,
      tween: tween,
      child: child,
      builderWithChild: (context, child, animation) => Opacity(
        opacity: animation['opacity'],
        child: Transform.translate(
          offset: Offset(0, animation['translateY']),
          child: child,
        ),
      ),
    );
  }
}
