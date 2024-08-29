import 'package:flutter/material.dart';

class CommonFontStyle {
  // Regular font styles
  static TextStyle regular(
      {Color color = Colors.black, double fontSize = 12.0}) {
    return TextStyle(
      fontWeight: FontWeight.normal,
      fontSize: fontSize,
      color: color,
      fontFamily: "font family",
    );
  }

  // Bold font styles
  static TextStyle bold({Color color = Colors.black, double fontSize = 12.0}) {
    return TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: fontSize,
      color: color,
      fontFamily: "font family",
    );
  }

  // Specific font sizes for regular text
  static TextStyle regular12({Color color = Colors.black}) =>
      regular(color: color, fontSize: 12);
  static TextStyle regular14({Color color = Colors.black}) =>
      regular(color: color, fontSize: 14);
  static TextStyle regular16({Color color = Colors.black}) =>
      regular(color: color, fontSize: 16);
  static TextStyle regular18({Color color = Colors.black}) =>
      regular(color: color, fontSize: 18);
  static TextStyle regular20({Color color = Colors.black}) =>
      regular(color: color, fontSize: 20);
  static TextStyle regular22({Color color = Colors.black}) =>
      regular(color: color, fontSize: 22);
  static TextStyle regular24({Color color = Colors.black}) =>
      regular(color: color, fontSize: 24);
  static TextStyle regular26({Color color = Colors.black}) =>
      regular(color: color, fontSize: 26);
  static TextStyle regular28({Color color = Colors.black}) =>
      regular(color: color, fontSize: 28);
  static TextStyle regular30({Color color = Colors.black}) =>
      regular(color: color, fontSize: 30);

  // Specific font sizes for bold text
  static TextStyle bold12({Color color = Colors.black}) =>
      bold(color: color, fontSize: 12);
  static TextStyle bold14({Color color = Colors.black}) =>
      bold(color: color, fontSize: 14);
  static TextStyle bold16({Color color = Colors.black}) =>
      bold(color: color, fontSize: 16);
  static TextStyle bold18({Color color = Colors.black}) =>
      bold(color: color, fontSize: 18);
  static TextStyle bold20({Color color = Colors.black}) =>
      bold(color: color, fontSize: 20);
  static TextStyle bold22({Color color = Colors.black}) =>
      bold(color: color, fontSize: 22);
  static TextStyle bold24({Color color = Colors.black}) =>
      bold(color: color, fontSize: 24);
  static TextStyle bold26({Color color = Colors.black}) =>
      bold(color: color, fontSize: 26);
  static TextStyle bold28({Color color = Colors.black}) =>
      bold(color: color, fontSize: 28);
  static TextStyle bold30({Color color = Colors.black}) =>
      bold(color: color, fontSize: 30);
}
