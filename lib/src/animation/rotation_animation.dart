import 'package:flutter/material.dart';

class RotationAnimation extends StatefulWidget {
  final Widget child;
  final Duration duration;
  final VoidCallback onPressed;

  const RotationAnimation({
    Key? key,
    required this.child,
    required this.duration,
    required this.onPressed,
  }) : super(key: key);

  @override
  _RotationAnimationState createState() => _RotationAnimationState();
}

class _RotationAnimationState extends State<RotationAnimation> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _rotationAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: widget.duration,
      vsync: this,
    );
    _rotationAnimation = Tween<double>(begin: 0.0, end: 0.25).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _handleTap() {
    _controller.forward().then((_) {
      _controller.reverse();
      widget.onPressed();
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      child: RotationTransition(
        turns: _rotationAnimation,
        child: widget.child,
      ),
    );
  }
}
