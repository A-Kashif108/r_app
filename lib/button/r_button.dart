import 'package:flutter/material.dart';

class RButton extends StatefulWidget {
  final double height;
  final double width;
  final Color color;
  final Color shadowColor;
  final BorderRadius borderRadius;
  final Color borderColor;
  final VoidCallback onPressed;
  final Offset shadowOffset;
  final Widget child;

  const RButton({
    super.key,
    this.height = 70.0,
    this.width = 200.0,
    required this.onPressed,
    this.color = Colors.grey,
    this.shadowColor = Colors.black,
    required this.child,
    this.borderRadius = const BorderRadius.all(Radius.circular(8)),
    this.shadowOffset = const Offset(8, 5),
    this.borderColor = Colors.black,
  });

  @override
  _RButtonState createState() => _RButtonState();
}

class _RButtonState extends State<RButton> with SingleTickerProviderStateMixin {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => _handleTapDown(),
      onTapUp: (_) => _handleTapUp(),
      onTapCancel: _handleTapCancel,
      onTap: widget.onPressed,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeOut,
        height: widget.height,
        width: widget.width,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: widget.color,
          border: Border.all(
            color: widget.borderColor,
            width: 2,
          ),
          boxShadow: _isPressed
              ? []
              : [
                  BoxShadow(
                    color: widget.shadowColor,
                    blurRadius: 4,
                    offset: widget.shadowOffset,
                  ),
                ],
          borderRadius: widget.borderRadius,
        ),
        child: Center(child: widget.child),
      ),
    );
  }

  void _handleTapDown() {
    setState(() {
      _isPressed = true;
    });
  }

  void _handleTapUp() {
    Future.delayed(const Duration(milliseconds: 100), () {
      setState(() {
        _isPressed = false;
      });
    });
  }

  void _handleTapCancel() {
    setState(() {
      _isPressed = false;
    });
  }
}
