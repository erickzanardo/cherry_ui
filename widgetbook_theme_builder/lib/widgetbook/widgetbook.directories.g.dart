// dart format width=80
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_import, prefer_relative_imports, directives_ordering

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AppGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:widgetbook/widgetbook.dart' as _widgetbook;
import 'package:widgetbook_theme_builder/widgetbook/use_cases/buttons.dart'
    as _widgetbook_theme_builder_widgetbook_use_cases_buttons;
import 'package:widgetbook_theme_builder/widgetbook/use_cases/cards.dart'
    as _widgetbook_theme_builder_widgetbook_use_cases_cards;
import 'package:widgetbook_theme_builder/widgetbook/use_cases/general.dart'
    as _widgetbook_theme_builder_widgetbook_use_cases_general;
import 'package:widgetbook_theme_builder/widgetbook/use_cases/ribbons.dart'
    as _widgetbook_theme_builder_widgetbook_use_cases_ribbons;
import 'package:widgetbook_theme_builder/widgetbook/use_cases/texts.dart'
    as _widgetbook_theme_builder_widgetbook_use_cases_texts;

final directories = <_widgetbook.WidgetbookNode>[
  _widgetbook.WidgetbookFolder(
    name: 'material',
    children: [
      _widgetbook.WidgetbookLeafComponent(
        name: 'Scaffold',
        useCase: _widgetbook.WidgetbookUseCase(
          name: 'general',
          builder: _widgetbook_theme_builder_widgetbook_use_cases_general.texts,
        ),
      ),
    ],
  ),
  _widgetbook.WidgetbookFolder(
    name: 'widgets',
    children: [
      _widgetbook.WidgetbookLeafComponent(
        name: 'CherryCard',
        useCase: _widgetbook.WidgetbookUseCase(
          name: 'CherryCard',
          builder: _widgetbook_theme_builder_widgetbook_use_cases_cards.buttons,
        ),
      ),
      _widgetbook.WidgetbookLeafComponent(
        name: 'CherryRibbon',
        useCase: _widgetbook.WidgetbookUseCase(
          name: 'CherryRibbon',
          builder:
              _widgetbook_theme_builder_widgetbook_use_cases_ribbons.buttons,
        ),
      ),
      _widgetbook.WidgetbookLeafComponent(
        name: 'Text',
        useCase: _widgetbook.WidgetbookUseCase(
          name: 'Text',
          builder: _widgetbook_theme_builder_widgetbook_use_cases_texts.texts,
        ),
      ),
      _widgetbook.WidgetbookFolder(
        name: 'buttons',
        children: [
          _widgetbook.WidgetbookLeafComponent(
            name: 'CherryButton',
            useCase: _widgetbook.WidgetbookUseCase(
              name: 'CherryButton',
              builder: _widgetbook_theme_builder_widgetbook_use_cases_buttons
                  .buttons,
            ),
          ),
          _widgetbook.WidgetbookLeafComponent(
            name: 'CherryCircleButton',
            useCase: _widgetbook.WidgetbookUseCase(
              name: 'CherryCircleButton',
              builder: _widgetbook_theme_builder_widgetbook_use_cases_buttons
                  .circleButtons,
            ),
          ),
        ],
      ),
    ],
  ),
];
