
import 'package:flutter/material.dart';
import 'package:new_project/themes/dark_theme.dart';
import 'package:new_project/themes/light_theme.dart';


// For information on Material 3 Color schemes
// https://m3.material.io/styles/color/system/overview
// https://m3.material.io/styles/color/roles
// https://docs.flutter.dev/release/breaking-changes/new-color-scheme-roles

const ColorScheme lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: LightTheme.primary,
  onPrimary: LightTheme.text,
  secondary: LightTheme.secondary,
  onSecondary: LightTheme.background,
  error: LightTheme.error,
  onError: LightTheme.text,
  surface: LightTheme.background,
  onSurface: LightTheme.text,
);

const ColorScheme darkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: DarkTheme.primary,
  onPrimary: DarkTheme.text,
  secondary: DarkTheme.secondary,
  onSecondary: DarkTheme.background,
  error: DarkTheme.error,
  onError: DarkTheme.text,
  surface: DarkTheme.background,
  onSurface: DarkTheme.text,
);
