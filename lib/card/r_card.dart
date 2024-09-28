import 'package:flutter/material.dart';

class RCard extends StatelessWidget {
  final double? height;
  final double? width;
  final Widget? child;
  final BorderRadius borderRadius;
  final Color color;
  final Color borderColor;
  final Color shadowColor;
  final double borderWidth;
  final Offset shadowOffset;
  final ImageProvider? bgImageProvider;
  const RCard(
      {super.key,
      this.child,
      this.height,
      this.width,
      required this.shadowColor,
      required this.color,
      required this.borderRadius,
      required this.borderColor,
      this.bgImageProvider,
      this.shadowOffset = const Offset(8, 5),
      this.borderWidth = 2});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        image: bgImageProvider == null
            ? null
            : DecorationImage(
                image: bgImageProvider!,
                fit: BoxFit.cover,
              ),
        color: color,
        border: Border.all(
          color: borderColor,
          width: borderWidth,
        ),
        boxShadow: [
          BoxShadow(
            color: shadowColor,
            offset: shadowOffset,
            blurRadius: 2,
          )
        ],
      ),
      child: child,
    );
  }
}
