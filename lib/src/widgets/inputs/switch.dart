// Positional parameter makes sense here
// ignore_for_file: avoid_positional_boolean_parameters

import 'package:cherry_ui/cherry_ui.dart';
import 'package:cherry_ui/src/extensions/color.dart';
import 'package:cherry_ui/src/extensions/theme.dart';
import 'package:flutter/material.dart';

/// {@template cherry_switch}
/// A switch control widget.
/// {@endtemplate}
class CherrySwitch extends StatefulWidget {
  /// {@macro cherry_switch}
  const CherrySwitch({
    this.value = false,
    this.onChanged,
    super.key,
  });

  /// The value of the switch.
  final bool value;

  /// Called when the user toggles the switch.
  final void Function(bool value)? onChanged;

  @override
  State<CherrySwitch> createState() => _CherrySwitchState();
}

class _CherrySwitchState extends State<CherrySwitch> {
  late bool _value = widget.value;

  @override
  Widget build(BuildContext context) {
    final switchTheme = Theme.of(context).cherryExtension<CherrySwitchTheme>();
    final size = switchTheme.size;
    final selectedColor = switchTheme.selectedColor;
    final unselectedColor = switchTheme.unselectedColor;

    final thumbSelectedColor = switchTheme.thumbSelectedColor;
    final thumbUnselectedColor = switchTheme.thumbUnselectedColor;

    final animationDuration = switchTheme.animationDuration;

    final thumbSize = size.height - 10;

    final borderSize = switchTheme.borderSize;

    return GestureDetector(
      onTap: () {
        setState(() {
          _value = !_value;
        });
        widget.onChanged?.call(_value);
      },
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: _value ? Colors.green : Colors.grey,
          border: Border.all(
            color: (_value ? selectedColor : unselectedColor).darken(.2),
            width: borderSize,
          ),
        ),
        child: SizedBox(
          width: size.width,
          height: size.height,
          child: Stack(
            children: [
              AnimatedPositioned(
                top: 1,
                left: _value ? size.width - thumbSize - borderSize : borderSize,
                duration: animationDuration,
                child: _SwitchThumb(
                  color: _value ? thumbSelectedColor : thumbUnselectedColor,
                  height: thumbSize,
                  width: thumbSize,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SwitchThumb extends StatelessWidget {
  const _SwitchThumb({
    required this.color,
    required this.width,
    required this.height,
  });

  final Color color;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 4),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(4),
          border: Border(
            bottom: BorderSide(
              color: color.darken(0.2),
              width: 4,
            ),
          ),
        ),
        child: SizedBox(
          width: width,
          height: height,
        ),
      ),
    );
  }
}
