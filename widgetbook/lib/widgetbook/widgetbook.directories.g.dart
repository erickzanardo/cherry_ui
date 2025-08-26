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
import 'package:widgetbook_catalog/widgetbook/use_cases/decorations.dart'
    as _widgetbook_catalog_widgetbook_use_cases_decorations;
import 'package:widgetbook_catalog/widgetbook/use_cases/texts.dart'
    as _widgetbook_catalog_widgetbook_use_cases_texts;

final directories = <_widgetbook.WidgetbookNode>[
  _widgetbook.WidgetbookFolder(
    name: 'widgets',
    children: [
      _widgetbook.WidgetbookLeafComponent(
        name: 'DecoratedBox',
        useCase: _widgetbook.WidgetbookUseCase(
          name: 'Decorations',
          builder:
              _widgetbook_catalog_widgetbook_use_cases_decorations.decorations,
        ),
      ),
      _widgetbook.WidgetbookLeafComponent(
        name: 'Text',
        useCase: _widgetbook.WidgetbookUseCase(
          name: 'Text',
          builder: _widgetbook_catalog_widgetbook_use_cases_texts.texts,
        ),
      ),
    ],
  ),
];
