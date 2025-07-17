// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../generated/intl/messages.dart';

/// Extensions on BuildContext to easily access theme colors
extension ThemeExtensions on BuildContext {
  void pop<T extends Object?>([T? result]) => Navigator.of(this).pop(result);
  PaywallLocalizations get localizations => PaywallLocalizations.of(this)!;

  /// The primary theme data
  ThemeData get theme => Theme.of(this);

  /// Color scheme of the current theme
  ColorScheme get colorScheme => theme.colorScheme;

  /// Text theme of the current theme
  TextTheme get textTheme => theme.textTheme;

  /// Primary color - equivalent to colorScheme.primary
  Color get colorActiveItem => colorScheme.primary;

  /// Background color - equivalent to colorScheme.surface
  Color get colorBackground => colorScheme.surface;
}
