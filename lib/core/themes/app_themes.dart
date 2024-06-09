import 'package:clean_architecture_structure/core/themes/dark_theme.dart';
import 'package:clean_architecture_structure/core/themes/light_theme.dart';
import 'package:flutter/material.dart';

abstract class AppThemes {
  static ThemeData light() => LightTheme.theme();

  static ThemeData dark() => DarkTheme.theme();
}
