import 'package:flutter/material.dart';

class ResponsiveScaler {
  static double _scaleFactor(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    // Define breakpoints and scale factors
    if (width < 600) {
      // Mobile
      return 1.0; // Base scale factor
    } else if (width < 1200) {
      // Tablet
      return 1.5; // Scale factor for tablet
    } else {
      // Desktop
      return 2.0; // Scale factor for desktop
    }
  }

  // General function to get responsive size
  static double scale(double size, BuildContext context) {
    return size * _scaleFactor(context);
  }

  // Function to get responsive padding
  static EdgeInsetsGeometry padding(
      double horizontal, double vertical, BuildContext context) {
    final scale = _scaleFactor(context);
    return EdgeInsets.symmetric(
        horizontal: horizontal * scale, vertical: vertical * scale);
  }

  // Function to get responsive margin
  static EdgeInsetsGeometry margin(double all, BuildContext context) {
    final scale = _scaleFactor(context);
    return EdgeInsets.all(all * scale);
  }

  // Function to get responsive text size
  static double textSize(double baseSize, BuildContext context) {
    return scale(baseSize, context);
  }

  // Function to get responsive button size
  static Size buttonSize(double width, double height, BuildContext context) {
    final scale = _scaleFactor(context);
    return Size(width * scale, height * scale);
  }
}
