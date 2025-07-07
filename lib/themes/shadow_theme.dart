import 'package:flutter/material.dart';

class ShadowTheme {
  static BoxShadow defaultShadow(BuildContext context, Offset? offset) {
    Color color = Theme.of(context).brightness == Brightness.light
        ? const Color.fromRGBO(71, 82, 93, 0.3) // Light
        : const Color.fromRGBO(0, 0, 0, 0.5); // Dark

    return BoxShadow(
      color: color,
      offset: offset ?? const Offset(0, 5),
      blurRadius: 10,
      spreadRadius: 0,
    );
  }

  static BoxShadow lightShadow(BuildContext context) {
    Color color = Theme.of(context).brightness == Brightness.light
        ? const Color.fromRGBO(71, 82, 93, 0.08) // Light
        : const Color.fromRGBO(0, 0, 0, 0.7); // Dark

    return BoxShadow(
      color: color,
      offset: const Offset(0, 3),
      blurRadius: 10,
      spreadRadius: 0,
    );
  }

  static BoxShadow wideShadow(BuildContext context) {
    Color color = Theme.of(context).brightness == Brightness.light
        ? const Color.fromRGBO(71, 82, 93, 0.125) // Light
        : const Color.fromRGBO(0, 0, 0, 0.9); // Dark

    return BoxShadow(
      color: color,
      offset: const Offset(0, 10),
      blurRadius: 20,
      spreadRadius: 0,
    );
  }
}
