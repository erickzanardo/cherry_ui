import 'dart:ui';

extension ColorExtension on Color {
  /// Converts a [Color] to a Dart code representation.
  String toCode() {
    return 'Color(0x${toARGB32().toRadixString(16).padLeft(8, '0')})';
  }
}
