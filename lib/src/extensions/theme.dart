import 'package:flutter/material.dart';

/// Extension method to safely retrieve a ThemeExtension from ThemeData.
extension ThemeDataExtension on ThemeData {
  /// Retrieves the ThemeExtension of type [T] from the ThemeData.
  T cherryExtension<T>() {
    final value = extension<T>();
    if (value == null) {
      throw Exception('Theme extension of type $T not found in ThemeData');
    }
    return value;
  }
}
