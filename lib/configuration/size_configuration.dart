import 'package:flutter/material.dart';

class SizeConfiguration {
  static double screenHeight;
  static double screenWidth;
  static double defaultSize;
  static MediaQueryData _mediaQueryData;
  static Orientation orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
    defaultSize = (orientation == Orientation.landscape)
        ? screenWidth * 0.0169
        : screenHeight * 0.0169;
  }
}
