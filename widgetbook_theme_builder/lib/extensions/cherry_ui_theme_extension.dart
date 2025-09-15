import 'package:cherry_ui/cherry_ui.dart';
import 'package:widgetbook_theme_builder/extensions/extensions.dart';

extension CherryUiThemeExtension on CherryUITheme {
  String toCode() {
    return '''
const CherryUITheme(
  scaffoldBackgroundColor: ${scaffoldBackgroundColor.toCode()},
  baseButtonTheme: CherryBaseButtonTheme(
    affirmativeColor: ${baseButtonTheme.affirmativeColor.toCode()},
    negativeColor: ${baseButtonTheme.negativeColor.toCode()},
    informativeColor: ${baseButtonTheme.informativeColor.toCode()},
    neutralColor: ${baseButtonTheme.neutralColor.toCode()},
    pressedScale: ${baseButtonTheme.pressedScale},
    animationDuration: ${baseButtonTheme.animationDuration.toCode()},
  ),
  buttonTheme: CherryButtonTheme(
    padding: ${buttonTheme.padding},
    borderRadius: ${buttonTheme.borderRadius},
    borderSize: ${buttonTheme.borderSize},
    blurRadius: ${buttonTheme.blurRadius},
  ),
  circleButtonTheme: CherryCircleButtonTheme(
    size: ${circleButtonTheme.size},
  ),
  cardTheme: CherryCardTheme(
    mainCardBackgroundColor: ${cardTheme.mainCardBackgroundColor.toCode()},
    mainCardDecorationColor: ${cardTheme.mainCardDecorationColor.toCode()},
    secondaryCardBackgroundColor: ${cardTheme.secondaryCardBackgroundColor.toCode()},
    secondaryCardDecorationColor: ${cardTheme.secondaryCardDecorationColor.toCode()},
    borderRadius: ${cardTheme.borderRadius},
  ),
  elevatedCardTheme: CherryElevatedCardTheme(
    cardBackgroundColor: ${elevatedCardTheme.cardBackgroundColor.toCode()},
    borderRadius: ${elevatedCardTheme.borderRadius},
    elevation: ${elevatedCardTheme.elevation},
  ),
  ribbonTheme: CherryRibbonTheme(
    mainRibbonBackgroundColor: ${ribbonTheme.mainRibbonBackgroundColor.toCode()},
    mainRibbonDecorationColor: ${ribbonTheme.mainRibbonDecorationColor.toCode()},
    secondaryRibbonBackgroundColor: ${ribbonTheme.secondaryRibbonBackgroundColor.toCode()},
    secondaryRibbonDecorationColor: ${ribbonTheme.secondaryRibbonDecorationColor.toCode()},
  ),
  switchTheme: CherrySwitchTheme(
    size: Size(${switchTheme.size.width}, ${switchTheme.size.height}),
    selectedColor: ${switchTheme.selectedColor.toCode()},
    unselectedColor: ${switchTheme.unselectedColor.toCode()},
    thumbSelectedColor: ${switchTheme.thumbSelectedColor.toCode()},
    thumbUnselectedColor: ${switchTheme.thumbUnselectedColor.toCode()},
    animationDuration: ${switchTheme.animationDuration.toCode()},
    borderSize: ${switchTheme.borderSize},
  ),
  displayFontColor: ${displayFontColor.toCode()},
  headlineFontColor: ${headlineFontColor.toCode()},
  titleFontColor: ${titleFontColor.toCode()},
  labelFontColor: ${labelFontColor.toCode()},
  bodyFontColor: ${bodyFontColor.toCode()},
);
''';
  }
}
