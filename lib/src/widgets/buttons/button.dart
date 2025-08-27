import 'package:cherry_ui/cherry_ui.dart';
import 'package:cherry_ui/src/extensions/color.dart';
import 'package:cherry_ui/src/extensions/theme.dart';
import 'package:flutter/material.dart';

/// {@template cherry_circle_button}
/// A circular button widget with customizable properties.
/// {@endtemplate}
class CherryButton extends StatefulWidget {
  /// {@macro cherry_circle_button}
  const CherryButton({
    required this.child,
    this.type = CherryButtonType.neutral,
    this.onPress,
    this.onPressDown,
    this.onPressUp,
    super.key,
  });

  /// The type of the button.
  final CherryButtonType type;

  /// Callback when the button is pressed.
  final VoidCallback? onPress;

  /// Callback when the button is pressed down.
  final VoidCallback? onPressDown;

  /// Callback when the button is released.
  final VoidCallback? onPressUp;

  /// The child widget to be displayed inside the button.
  final Widget child;

  @override
  State<CherryButton> createState() => _CherryButtonState();
}

class _CherryButtonState extends State<CherryButton> {
  bool _pressed = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final baseButtonTheme = theme.cherryExtension<CherryBaseButtonTheme>();
    final buttonColor = baseButtonTheme.colorForType(widget.type);

    return GestureDetector(
      onTap: widget.onPress,
      onTapDown: (_) {
        setState(() {
          _pressed = true;
        });
        widget.onPressDown?.call();
      },
      onTapUp: (_) {
        setState(() {
          _pressed = false;
        });
        widget.onPressUp?.call();
      },
      child: AnimatedScale(
        duration: baseButtonTheme.animationDuration,
        scale: _pressed ? baseButtonTheme.pressedScale : 1.0,
        child: _CherryButton(color: buttonColor, child: widget.child),
      ),
    );
  }
}

class _CherryButton extends StatelessWidget {
  const _CherryButton({
    required this.color,
    required this.child,
  });

  final Color color;

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final buttonTheme = theme.cherryExtension<CherryButtonTheme>();

    final padding = buttonTheme.padding;
    final borderSize = buttonTheme.borderSize;
    final radius = buttonTheme.borderRadius;
    final blurRadius = buttonTheme.blurRadius;

    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        border: Border.all(
          color: color.darken(0.4),
          width: borderSize,
        ),
        color: color.darken(0.2),
      ),
      child: Padding(
        padding: EdgeInsets.all(padding),
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius / 2),
            border: Border.all(
              color: color.brighten(0.4),
              width: borderSize,
            ),
            color: color,
            boxShadow: [
              BoxShadow(
                color: color.brighten(0.6).withValues(alpha: 0.8),
                blurRadius: blurRadius,
                offset: Offset(-padding / 2, -padding / 2),
              ),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.all(padding),
            child: DecoratedBox(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: color.brighten(0.6).withValues(alpha: 0.8),
                    blurRadius: blurRadius * 2,
                    spreadRadius: -8,
                    offset: Offset(-padding, padding * 0.75),
                  ),
                ],
              ),
              child: Center(child: child),
            ),
          ),
        ),
      ),
    );
  }
}
