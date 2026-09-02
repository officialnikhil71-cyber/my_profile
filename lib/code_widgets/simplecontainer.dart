import 'package:flutter/material.dart';

class SimpleContainer extends StatefulWidget {
  final Widget child;
  final VoidCallback? onTap;

  const SimpleContainer({
    super.key,
    required this.child,
    this.onTap,
  });

  @override
  State<SimpleContainer> createState() => _SimpleContainerState();
}

class _SimpleContainerState extends State<SimpleContainer> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => setState(() => _isPressed = true),
      onTapUp: (_) => setState(() => _isPressed = false),
      onTapCancel: () => setState(() => _isPressed = false),
      onTap: widget.onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeInOut,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: _isPressed ? const Color(0xFFE0E0E0) : const Color(0xFFECEBEB),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(_isPressed ? 0.1 : 0.2),
              blurRadius: _isPressed ? 4.0 : 12.0,
              spreadRadius: _isPressed ? 1.0 : 2.0,
              offset: _isPressed ? const Offset(0, 2) : const Offset(0, 6),
            ),
          ],
          border: Border.all(
            color: Colors.white.withOpacity(0.8),
            width: 1.5,
          ),
        ),
        child: widget.child,
      ),
    );
  }
}
