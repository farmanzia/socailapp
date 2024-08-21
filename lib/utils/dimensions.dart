import 'package:flutter/material.dart';

class Dimensions {
  final BuildContext context;

  Dimensions(this.context);

  // Dynamic Height and Width
  double screenHeight() => MediaQuery.of(context).size.height;
  double screenWidth() => MediaQuery.of(context).size.width;

  // Example dimensions based on screen height
  double height(double ratio) => screenHeight() * ratio;
  double width(double ratio) => screenWidth() * ratio;

  // Predefined Spacing based on screen height
  double get paddingSmall => height(0.01); // 1% of screen height
  double get paddingMedium => height(0.02); // 2% of screen height
  double get paddingLarge => height(0.03); // 3% of screen height
  double get paddingXL => height(0.055); // 3% of screen height
  double get marginSmall => height(0.01); // 1% of screen height
  double get marginMedium => height(0.02); // 2% of screen height
  double get marginLarge => height(0.03); // 3% of screen height

}
