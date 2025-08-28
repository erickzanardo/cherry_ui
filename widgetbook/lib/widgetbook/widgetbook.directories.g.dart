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
import 'package:widgetbook_catalog/widgetbook/use_cases/buttons.dart'
    as _widgetbook_catalog_widgetbook_use_cases_buttons;
import 'package:widgetbook_catalog/widgetbook/use_cases/cards.dart'
    as _widgetbook_catalog_widgetbook_use_cases_cards;
import 'package:widgetbook_catalog/widgetbook/use_cases/decorations.dart'
    as _widgetbook_catalog_widgetbook_use_cases_decorations;
import 'package:widgetbook_catalog/widgetbook/use_cases/texts.dart'
    as _widgetbook_catalog_widgetbook_use_cases_texts;

final directories = <_widgetbook.WidgetbookNode>[
  _widgetbook.WidgetbookFolder(
    name: 'widgets',
    children: [
      _widgetbook.WidgetbookLeafComponent(
        name: 'CherryCard',
        useCase: _widgetbook.WidgetbookUseCase(
          name: 'CherryCard',
          builder: _widgetbook_catalog_widgetbook_use_cases_cards.buttons,
        ),
      ),
      _widgetbook.WidgetbookLeafComponent(
        name: 'Text',
        useCase: _widgetbook.WidgetbookUseCase(
          name: 'Text',
          builder: _widgetbook_catalog_widgetbook_use_cases_texts.texts,
        ),
      ),
      _widgetbook.WidgetbookFolder(
        name: 'buttons',
        children: [
          _widgetbook.WidgetbookLeafComponent(
            name: 'CherryButton',
            useCase: _widgetbook.WidgetbookUseCase(
              name: 'CherryButton',
              builder: _widgetbook_catalog_widgetbook_use_cases_buttons.buttons,
            ),
          ),
          _widgetbook.WidgetbookLeafComponent(
            name: 'CherryCircleButton',
            useCase: _widgetbook.WidgetbookUseCase(
              name: 'CherryCircleButton',
              builder: _widgetbook_catalog_widgetbook_use_cases_buttons
                  .circleButtons,
            ),
          ),
        ],
      ),
      _widgetbook.WidgetbookFolder(
        name: 'decorations',
        children: [
          _widgetbook.WidgetbookLeafComponent(
            name: 'CherryCardDecoration',
            useCase: _widgetbook.WidgetbookUseCase(
              name: 'CherryCardDecoration',
              builder: _widgetbook_catalog_widgetbook_use_cases_decorations
                  .cardDecoration,
            ),
          ),
          _widgetbook.WidgetbookLeafComponent(
            name: 'CherryDecoratedCircle',
            useCase: _widgetbook.WidgetbookUseCase(
              name: 'CherryDecoratedCircle',
              builder: _widgetbook_catalog_widgetbook_use_cases_decorations
                  .decorations,
            ),
          ),
        ],
      ),
    ],
  ),
];
