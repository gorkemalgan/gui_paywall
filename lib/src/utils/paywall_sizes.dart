// Flutter imports:
import 'package:flutter/material.dart';

/// Utility class to replace MySizes
/// Provides screen size calculations based on MediaQuery
class PaywallSizes {
  static double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;
  static double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;

  static double get heightBottomBar => 20.0;

  static EdgeInsets safeAreaPadding(BuildContext context) => MediaQuery.of(context).padding;
}
