import 'package:button_animation/src/animation/fade_animation.dart';
import 'package:button_animation/src/animation/rotation_animation.dart';
import 'package:button_animation/src/animation/scale_animation.dart';
import 'package:button_animation/src/enum/button_animation_type.dart';
import 'package:flutter/material.dart';

class AnimatedButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final ButtonAnimationType animationType;
  final Duration duration;

  const AnimatedButton({
    Key? key,
    required this.label,
    required this.onPressed,
    this.animationType = ButtonAnimationType.fade,
    this.duration = const Duration(milliseconds: 200),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget animatedChild = Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        label,
        style: const TextStyle(color: Colors.white, fontSize: 16),
      ),
    );

    switch (animationType) {
      case ButtonAnimationType.fade:
        animatedChild = FadeAnimation(
          duration: duration,
          onPressed: onPressed,
          child: animatedChild,
        );
        break;
      case ButtonAnimationType.scale:
        animatedChild = ScaleAnimation(
          duration: duration,
          onPressed: onPressed,
          child: animatedChild,
        );
        break;
      case ButtonAnimationType.rotation:
        animatedChild = RotationAnimation(
          duration: duration,
          onPressed: onPressed,
          child: animatedChild,
        );
        break;
    }

    return animatedChild;
  }
}
