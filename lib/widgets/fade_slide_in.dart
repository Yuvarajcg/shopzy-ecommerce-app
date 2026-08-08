import 'package:flutter/material.dart';

/// Wraps [child] and animates it in with a fade + upward slide, after an
/// optional [delay]. Used to give grids/lists of products a staggered
/// entrance animation ("Fade Animations" + "Slide Animations").
class FadeSlideIn extends StatefulWidget {
  final Widget child;
  final Duration delay;

  const FadeSlideIn({
    super.key,
    required this.child,
    this.delay = Duration.zero,
  });

  @override
  State<FadeSlideIn> createState() => _FadeSlideInState();
}

class _FadeSlideInState extends State<FadeSlideIn> {
  bool _visible = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(widget.delay, () {
      if (mounted) setState(() => _visible = true);
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: const Duration(milliseconds: 350),
      opacity: _visible ? 1.0 : 0.0,
      curve: Curves.easeOut,
      child: AnimatedSlide(
        duration: const Duration(milliseconds: 350),
        offset: _visible ? Offset.zero : const Offset(0, 0.08),
        curve: Curves.easeOut,
        child: widget.child,
      ),
    );
  }
}
