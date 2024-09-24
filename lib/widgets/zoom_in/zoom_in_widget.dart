import 'package:flutter/material.dart';

class DevPyZoomInWidget extends StatefulWidget {
  const DevPyZoomInWidget({
    super.key,
    required this.child,
    this.inDuration = const Duration(milliseconds: 300),
    this.animate = true,
    this.delay = const Duration(milliseconds: 0),
  });

  final Widget child;
  final Duration inDuration;
  final bool animate;
  final Duration delay;

  @override
  State<DevPyZoomInWidget> createState() => _DevPyZoomInWidgetState();
}

class _DevPyZoomInWidgetState extends State<DevPyZoomInWidget>
    with SingleTickerProviderStateMixin {
  AnimationController? controller;
  late Animation<double> zoom;
  late Animation<double> opacity;
  bool disposed = false;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(duration: widget.inDuration, vsync: this);
    zoom = Tween(begin: 0.0, end: 1.0)
        .animate(CurvedAnimation(curve: Curves.easeOut, parent: controller!));

    opacity = Tween<double>(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(parent: controller!, curve: const Interval(0, 0.65)));
  }

  @override
  void dispose() {
    controller?.dispose();
    disposed = true;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.animate && widget.delay.inMilliseconds == 0) {
      controller?.forward();
    }

    if (!widget.animate) {
      controller?.animateBack(0);
    }

    return AnimatedBuilder(
      animation: controller!,
      builder: (context, child) {
        return Transform.scale(
          scale: zoom.value,
          child: Opacity(
            opacity: opacity.value,
            child: widget.child,
          ),
        );
      },
    );
  }
}
