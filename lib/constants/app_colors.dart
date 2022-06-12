import 'package:flutter/material.dart';

class Palette {
  static const MaterialColor myThemeColor = const MaterialColor(
    0xff8AC541, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    const <int, Color>{
      50: const Color(0xff8AC541), //10%
      100: const Color(0xff8AC541), //20%
      200: const Color(0xff8AC541), //30%
      300: const Color(0xff8AC541), //40%
      400: const Color(0xff8AC541), //50%
      500: const Color(0xff8AC541), //60%
      600: const Color(0xff8AC541), //70%
      700: const Color(0xff8AC541), //80%
      800: const Color(0xff8AC541), //90%
      900: const Color(0xff8AC541), //100%
    },
  );
}
