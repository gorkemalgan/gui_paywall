// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../../gui_paywall.dart';

class Paywall4 extends PaywallBase {
  final Widget video;
  const Paywall4(super.paywall, {super.key, required this.video});

  @override
  PaywallConfig validateConfiguration() {
    PaywallConfig _paywall = paywall.noFreeTrial.preferExpensive;
    final productCount = _paywall.products.length;
    if (productCount < 2 || productCount > 3) {
      _paywall.onError('Paywall4 expects 2 to 3 products, but got $productCount');
    }
    final productsWithTrials = _paywall.products.where((p) => p.haveFreeTrial).toList();
    if (productsWithTrials.isNotEmpty) {
      _paywall.onError('Paywall4 expects products without free trials, but found  [${productsWithTrials.length} [0m products with trials');
    }
    final uniquePeriods = _paywall.products.map((p) => p.period).toSet();
    if (uniquePeriods.length != _paywall.products.length) {
      _paywall.onError('Products should have different durations for optimal display');
    }
    if (_paywall.customData == null || !_paywall.customData!.containsKey('video_path')) {
      _paywall.onError('No video_path specified in customData, using default');
    }
    return _paywall;
  }

  @override
  Paywall4State createState() => Paywall4State();
}

class Paywall4State extends State<Paywall4> with PaywallSanityCheck<Paywall4> {
  // ... (Paywall3State içeriğiyle aynı olacak şekilde buraya kopyalanacak)
  // Kısaltılmıştır, tam içerik Paywall3State ile aynı olacak.
  @override
  Widget build(BuildContext context) => Center(child: Text('Paywall 4 (Paywall3 ile aynı şablon)')); // Placeholder
}
