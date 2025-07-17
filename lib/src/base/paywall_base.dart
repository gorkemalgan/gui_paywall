// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../models/paywall_config.dart';

/// Abstract base class for all paywall implementations
abstract class PaywallBase extends StatefulWidget {
  final PaywallConfig paywall;

  const PaywallBase(this.paywall, {super.key});

  /// Validates the paywall configuration for this specific paywall type
  /// Should be called in initState and return appropriate errors/warnings
  PaywallConfig validateConfiguration();
}

/// Mixin that provides common validation utilities for paywalls
mixin PaywallSanityCheck<T extends PaywallBase> on State<T> {
  late final PaywallConfig paywall;

  @override
  void initState() {
    super.initState();
    paywall = widget.validateConfiguration();
  }
}
