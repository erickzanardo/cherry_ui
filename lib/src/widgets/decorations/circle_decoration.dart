import 'package:cherry_ui/src/extensions/color.dart';
import 'package:flutter/material.dart';

/// {@template cherry_decorated_circle}
/// A circular decoration with a border that is a darker shade of the fill color
/// {@endtemplate}
class CherryDecoratedCircle extends StatelessWidget {
  /// {@macro cherry_decorated_circle}
  const CherryDecoratedCircle({
    required this.color,
    required this.size,
    required this.child,
    super.key,
  });

  /// The color of the circle.
  final Color color;

  /// Size of the circle
  final double size;

  /// The child widget to be displayed inside the circle.
  final Widget child;

  @override
  Widget build(BuildContext context) {
    const borderFactor = 0.02;
    const paddingFactor = 0.12;
    return DecoratedBox(
      decoration: ShapeDecoration(
        shape: CircleBorder(
          side: BorderSide(
            color: color.darken(0.4),
            width: size * borderFactor,
          ),
        ),
        color: color.darken(0.2),
      ),
      child: Padding(
        padding: EdgeInsets.all(size * paddingFactor),
        child: DecoratedBox(
          decoration: ShapeDecoration(
            shape: CircleBorder(
              side: BorderSide(
                color: color.brighten(0.4),
                width: size * borderFactor,
              ),
            ),
            color: color,
            shadows: [
              BoxShadow(
                color: color.brighten(0.4),
                blurRadius: size * 0.1,
                offset: Offset(0, -size * 0.08),
              ),
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.2),
                blurRadius: size * 0.1,
                offset: Offset(0, size * 0.08),
              ),
            ],
          ),
          child: SizedBox.square(
            dimension: size * (1 - paddingFactor),
            child: Center(child: child),
          ),
        ),
      ),
    );
  }
}
