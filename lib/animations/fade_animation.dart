import 'package:flutter/cupertino.dart';
import 'package:simple_animations/multi_tween/multi_tween.dart';
import 'package:simple_animations/stateless_animation/play_animation.dart';

enum TypeAnimation { translateY, opacity }

class FadeAnimation extends StatelessWidget {
  final double delay;
  final Widget child;

  FadeAnimation(this.delay, this.child);

  @override
  Widget build(BuildContext context) {
    final tween = MultiTween<TypeAnimation>()
      ..add(TypeAnimation.opacity, Tween(begin: 0.0, end: 1.0),
          Duration(milliseconds: 500))
      ..add(TypeAnimation.translateY, Tween(begin: -30.0, end: 0.0),
          Duration(milliseconds: 500), Curves.easeOut);

    return PlayAnimation<MultiTweenValues<TypeAnimation>>(
      delay: Duration(milliseconds: (500*delay).round()),
      duration: tween.duration,
      tween: tween,
      child: child,
      builder: (ctx, child, value){
        return Opacity(
          opacity: value.get(TypeAnimation.opacity),
          child: Transform.translate(
            offset: Offset(0, value.get(TypeAnimation.translateY)),
            child: child,
          ),
        );
      }
    );
  }
}
