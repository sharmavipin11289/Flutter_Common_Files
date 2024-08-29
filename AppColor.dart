import 'package:flutter/material.dart';

class AppColor {
  // Basic colors
  static const Color red = Color(0xFFFF0000);
  static const Color orange = Color(0xFFFFA500);
  static const Color yellow = Color(0xFFFFFF00);
  static const Color green = Color(0xFF008000);
  static const Color blue = Color(0xFF0000FF);
  static const Color indigo = Color(0xFF4B0082);
  static const Color violet = Color(0xFFEE82EE);

  // Gradient colors
  static const Gradient redGradient = LinearGradient(
    colors: [Color(0xFFFF0000), Color(0xFFFF7F7F)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const Gradient orangeGradient = LinearGradient(
    colors: [Color(0xFFFFA500), Color(0xFFFFD580)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const Gradient yellowGradient = LinearGradient(
    colors: [Color(0xFFFFFF00), Color(0xFFFFFF99)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const Gradient greenGradient = LinearGradient(
    colors: [Color(0xFF008000), Color(0xFF66FF66)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const Gradient blueGradient = LinearGradient(
    colors: [Color(0xFF0000FF), Color(0xFF6699FF)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const Gradient indigoGradient = LinearGradient(
    colors: [Color(0xFF4B0082), Color(0xFF9370DB)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const Gradient violetGradient = LinearGradient(
    colors: [Color(0xFFEE82EE), Color(0xFFFFB6C1)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
