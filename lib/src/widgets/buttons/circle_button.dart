import 'package:cherry_ui/cherry_ui.dart';
import 'package:cherry_ui/src/extensions/theme.dart';
import 'package:flutter/material.dart';

/// {@template cherry_circle_button}
/// A circular button widget with customizable properties.
/// {@endtemplate}
class CherryCircleButton extends StatefulWidget {
  /// {@macro cherry_circle_button}
  const CherryCircleButton({
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
  State<CherryCircleButton> createState() => _CherryCircleButtonState();
}

class _CherryCircleButtonState extends State<CherryCircleButton> {
  bool _pressed = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final buttonTheme = theme.cherryExtension<CherryButtonTheme>();
    final circleButtonTheme = theme.cherryExtension<CherryCircleButtonTheme>();

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
        duration: circleButtonTheme.animationDuration,
        scale: _pressed ? circleButtonTheme.pressedScale : 1.0,
        child: CherryDecoratedCircle(
          color: buttonTheme.colorForType(widget.type),
          size: circleButtonTheme.size,
          child: widget.child,
        ),
      ),
    );
  }
}
