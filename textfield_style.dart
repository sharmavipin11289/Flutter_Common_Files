import 'package:flutter/material.dart';

class AppTextFieldStyles {
  static InputDecoration defaultDecoration({
    String? hintText,
    String? labelText,
    IconData? prefixIcon,
    Color? fillColor,
    Color? borderColor,
    double borderRadius = 8.0,
  }) {
    return InputDecoration(
      hintText: hintText,
      labelText: labelText,
      prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
      filled: true,
      fillColor: fillColor ?? Colors.grey[200],
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius),
        borderSide: BorderSide(color: borderColor ?? Colors.transparent),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius),
        borderSide: BorderSide(color: borderColor ?? Colors.transparent),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius),
        borderSide:
            BorderSide(color: borderColor ?? Theme.of(context).primaryColor),
      ),
    );
  }

  static TextStyle defaultTextStyle({
    Color? color,
    double fontSize = 16.0,
    FontWeight fontWeight = FontWeight.normal,
  }) {
    return TextStyle(
      color: color ?? Colors.black,
      fontSize: fontSize,
      fontWeight: fontWeight,
    );
  }
}
