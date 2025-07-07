
import 'package:flutter/material.dart';
import 'package:new_project/themes/color_scheme.dart';
import 'package:new_project/themes/dark_theme.dart';
import 'package:new_project/themes/light_theme.dart';
import 'package:new_project/themes/text_theme.dart';

class AppTheme {
  static ThemeData light() {
    return ThemeData(
      pageTransitionsTheme: const PageTransitionsTheme(
        builders: <TargetPlatform, PageTransitionsBuilder>{
          TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        },
      ),
      brightness: Brightness.light,
      useMaterial3: true,
      colorScheme: lightColorScheme,
      fontFamily: 'Satoshi',
      disabledColor: LightTheme.disabled,
      textTheme: FixedTextTheme.defaultTextTheme,
    );
  }

  static ThemeData dark() {
    return ThemeData(
      pageTransitionsTheme: const PageTransitionsTheme(
        builders: <TargetPlatform, PageTransitionsBuilder>{
          TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        },
      ),
      brightness: Brightness.dark,
      useMaterial3: true,
      colorScheme: darkColorScheme,
      fontFamily: 'Satoshi',
      disabledColor: DarkTheme.disabled,
      textTheme: FixedTextTheme.defaultTextTheme,
    );
  }
}
