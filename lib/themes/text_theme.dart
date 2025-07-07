import 'package:flutter/material.dart';

class FixedTextTheme {
  // * TODO: Finalize defaults for text themes
  // * to be reviewed
  // * reference: https://m3.material.io/styles/typography/type-scale-tokens#a734c6ed-634c-4abb-adb2-35daf0aed06a
  static const TextTheme defaultTextTheme = TextTheme(
    // * As the largest text on the screen, display styles are reserved for short,
    // * important text or numerals.
    displayLarge: TextStyle(
      fontSize: 57,
      height: 1.3,
      letterSpacing: -0.25,
      fontWeight: FontWeight.w400,
    ),
    displayMedium: TextStyle(
      fontSize: 45,
      height: 1.15,
      fontWeight: FontWeight.w400,
    ),
    displaySmall: TextStyle(
      fontSize: 36,
      height: 1.3,
      fontWeight: FontWeight.w400,
    ),

    // * Headline styles are smaller than display styles.
    headlineLarge: TextStyle(
      fontSize: 32,
      height: 1.25,
      fontWeight: FontWeight.w600,
      fontFamily: 'ProximaNova',
    ),
    headlineMedium: TextStyle(
      fontSize: 28,
      height: 1.25,
      fontWeight: FontWeight.w600,
      fontFamily: 'ProximaNova',
    ),
    headlineSmall: TextStyle(
      fontSize: 24,
      height: 1.35,
      fontWeight: FontWeight.w600,
      fontFamily: 'ProximaNova',
    ),

    // * Titles are smaller than headline styles and should be used for shorter,
    // * medium-emphasis text.
    titleLarge: TextStyle(
      fontSize: 22,
      height: 1.25,
      fontWeight: FontWeight.w500,
    ),
    titleMedium: TextStyle(
      fontSize: 16,
      height: 1.5,
      letterSpacing: 0.15,
      fontWeight: FontWeight.w600,
    ),
    titleSmall: TextStyle(
      fontSize: 14,
      height: 1.4,
      letterSpacing: 0.1,
      fontWeight: FontWeight.w600,
    ),

    // * Body styles are used for longer passages of text.
    bodyLarge: TextStyle(
      fontSize: 16,
      height: 1.5,
      letterSpacing: 0.5,
      fontWeight: FontWeight.w500,
    ),
    bodyMedium: TextStyle(
      fontSize: 14,
      height: 1.4,
      letterSpacing: 0.25,
      fontWeight: FontWeight.w500,
    ),
    bodySmall: TextStyle(
      fontSize: 12,
      height: 1.3,
      letterSpacing: 0.4,
      fontWeight: FontWeight.w500,
    ),

    // * Label styles are smaller, utilitarian styles, used for areas of the UI
    // * such as text inside of components or very small supporting text in the
    // * content body, like captions.

    // * Used for text on [ElevatedButton], [TextButton] and [OutlinedButton].
    labelLarge: TextStyle(
      fontSize: 14,
      height: 1.4,
      letterSpacing: 0.1,
      fontWeight: FontWeight.w500,
    ),
    labelMedium: TextStyle(
      fontSize: 12,
      height: 1.3,
      letterSpacing: 0.5,
      fontWeight: FontWeight.w500,
    ),
    labelSmall: TextStyle(
      fontSize: 11,
      height: 1.4,
      letterSpacing: 0.5,
      fontWeight: FontWeight.w500,
    ),
  );
}
