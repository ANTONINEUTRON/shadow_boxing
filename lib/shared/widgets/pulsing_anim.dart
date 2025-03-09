
import 'package:flutter/material.dart';

class PulsingAnim extends StatefulWidget {
  const PulsingAnim({
    Key? key,
    required this.child,
    this.begin = 0.90,
  }) : super(key: key);

  final Widget child;
  final double begin;

  @override
  State<PulsingAnim> createState() => _PulsingAnimState();
}

class _PulsingAnimState extends State<PulsingAnim>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 800))
      ..repeat(reverse: true);
    _scaleAnimation = Tween<double>(begin: widget.begin, end: 1.0).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: _scaleAnimation,
      child: widget.child,
    );
  }
}
