import 'package:cherry_ui/cherry_ui.dart';
import 'package:widgetbook_theme_builder/extensions/extensions.dart';

extension CherryUiThemeExtension on CherryUITheme {
  String toCode() {
    return '''
CherryUITheme(
  scaffoldBackgroundColor: ${scaffoldBackgroundColor.toCode()},
  baseButtonTheme: const CherryBaseButtonTheme(
    affirmativeColor: ${baseButtonTheme.affirmativeColor.toCode()},
    negativeColor: ${baseButtonTheme.negativeColor.toCode()},
  ),
);
''';
}
}
