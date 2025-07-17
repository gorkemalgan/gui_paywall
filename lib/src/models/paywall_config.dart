// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../extensions.dart';
import 'notification_config.dart';
import 'paywall_product.dart';

typedef AnalyticsCallback = Future<void> Function(String event, {Map<String, Object>? parameters});
typedef PurchaseCallback = Future<bool> Function(PaywallProduct product);
typedef RestoreCallback = Future<bool> Function();
typedef NotificationCallback = Future<void> Function(NotificationConfig config);
typedef ProcessUICallback = Future<T?> Function<T>(Future<T> Function() action);
typedef LogCallback = void Function(String message);

class PaywallConfig {
  final String appName;
  final String name;
  final Map<String, dynamic>? customData;
  final bool debugMode;
  final bool Function() isPro;

  // Products configuration
  final List<PaywallProduct> products;
  final int singleDisplayProduct;
  final bool isSingleDisplay;
  final String? exitPlacementId;

  // Logging callbacks
  final AnalyticsCallback onAnalyticsEvent;
  final LogCallback onDebug;
  final LogCallback onLog;
  final LogCallback onWarning;
  final LogCallback onError;

  // Action callbacks
  final VoidCallback? onClose;
  final PurchaseCallback onPurchase;
  final RestoreCallback onRestore;
  final VoidCallback onTermsOfUse;
  final VoidCallback onPrivacyPolicy;
  final ProcessUICallback processUI;
  final ProcessUICallback processNoProgress;
  final NotificationCallback? onScheduleNotification;

  const PaywallConfig({
    required this.appName,
    required this.name,
    this.customData,
    required this.debugMode,
    required this.isPro,
    required this.products,
    this.singleDisplayProduct = 0,
    this.isSingleDisplay = false,
    this.exitPlacementId,
    required this.onAnalyticsEvent,
    required this.onDebug,
    required this.onLog,
    required this.onWarning,
    required this.onError,
    required this.onPurchase,
    required this.onRestore,
    required this.onTermsOfUse,
    required this.onPrivacyPolicy,
    this.onClose,
    required this.processUI,
    required this.processNoProgress,
    this.onScheduleNotification,
  });

  Future<void> close(BuildContext context) async {
    onClose?.call();
    context.pop(false);
  }

  Future<void> purchase(PaywallProduct product, BuildContext context) async {
    bool? isPurchased = await processUI(() async {
      if (debugMode) {
        return await processNoProgress(() async => await onPurchase(product)) ?? false;
      } else {
        return await onPurchase(product);
      }
    });
    if (isPro.call() || isPurchased == true) {
      context.pop(true);
    }
  }

  Future<void> restorePurchases(BuildContext context) async {
    bool? isRestored = await processUI(() async {
      if (debugMode) {
        return await processNoProgress(() async => await onRestore()) ?? false;
      } else {
        return await onRestore();
      }
    });
    if (isRestored == true) {
      context.pop(true);
    }
  }

  Future<void> logEvent(String event, {Map<String, Object>? parameters}) async => await onAnalyticsEvent.call(event, parameters: parameters);
  Future<void> logViewItemList() async => await logEvent("paywall_seeall", parameters: {'paywall': name});
  Future<void> logSelectProduct(String productId) async =>
      await logEvent("paywall_select_product", parameters: {"paywall": name, "productId": productId});

  // Product getters
  PaywallProduct get longestProduct => productsSorted.last;
  PaywallProduct get shortestProduct => productsSorted.first;
  List<PaywallProduct> get productsSorted =>
      List<PaywallProduct>.from(products)..sort((a, b) => a.period.durationDays.compareTo(b.period.durationDays));
  List<List<PaywallProduct>> get productsPaired {
    /// Groups products into pairs with same duration but different free trial status.
    /// Returns a list of pairs where each pair is [productWithoutTrial, productWithTrial].
    /// For each duration, selects the most expensive product with and without trial.
    // Group products by duration only
    final Map<int, List<PaywallProduct>> groupedProducts = {};
    for (final product in products) {
      final duration = product.period.durationDays;
      groupedProducts[duration] ??= [];
      groupedProducts[duration]!.add(product);
    }

    // Extract valid pairs
    final List<List<PaywallProduct>> pairs = [];
    for (final group in groupedProducts.values) {
      // Check if we have at least one with trial and one without
      final withTrialProducts = group.where((p) => p.haveFreeTrial).toList();
      final withoutTrialProducts = group.where((p) => !p.haveFreeTrial).toList();

      if (withTrialProducts.isNotEmpty && withoutTrialProducts.isNotEmpty) {
        // For each duration, pick the most expensive product with and without trial
        final mostExpensiveWithTrial = withTrialProducts.reduce((a, b) => a.price > b.price ? a : b);
        final mostExpensiveWithoutTrial = withoutTrialProducts.reduce((a, b) => a.price > b.price ? a : b);

        pairs.add([mostExpensiveWithoutTrial, mostExpensiveWithTrial]);
      }
    }

    // Sort pairs by duration (longest first)
    pairs.sort((a, b) => b[0].period.durationDays.compareTo(a[0].period.durationDays));

    return pairs;
  }

  // Copy constructors
  PaywallConfig copyWith({required List<PaywallProduct> products}) => PaywallConfig(
    appName: appName,
    name: name,
    customData: customData,
    debugMode: debugMode,
    isPro: isPro,
    products: products,
    singleDisplayProduct: singleDisplayProduct,
    isSingleDisplay: isSingleDisplay,
    exitPlacementId: exitPlacementId,
    onAnalyticsEvent: onAnalyticsEvent,
    onDebug: onDebug,
    onLog: onLog,
    onWarning: onWarning,
    onError: onError,
    onPurchase: onPurchase,
    onRestore: onRestore,
    onTermsOfUse: onTermsOfUse,
    onPrivacyPolicy: onPrivacyPolicy,
    processUI: processUI,
    processNoProgress: processNoProgress,
    onClose: onClose,
    onScheduleNotification: onScheduleNotification,
  );
  PaywallConfig get freeTrialOnly => copyWith(products: products.where((product) => product.haveFreeTrial).toList());
  PaywallConfig get noFreeTrial => copyWith(products: products.where((product) => !product.haveFreeTrial).toList());
  PaywallConfig get paired => copyWith(products: productsPaired.expand((p) => p).toList());
  PaywallConfig get preferExpensive {
    final Map<int, PaywallProduct> productsByDuration = {};
    for (final product in products) {
      final duration = product.period.durationDays;
      if (!productsByDuration.containsKey(duration) || product.price > productsByDuration[duration]!.price) {
        productsByDuration[duration] = product;
      }
    }
    return copyWith(products: productsByDuration.values.toList());
  }

  PaywallConfig get preferCheaper {
    final Map<int, PaywallProduct> productsByDuration = {};
    for (final product in products) {
      final duration = product.period.durationDays;
      if (!productsByDuration.containsKey(duration) || product.price < productsByDuration[duration]!.price) {
        productsByDuration[duration] = product;
      }
    }
    return copyWith(products: productsByDuration.values.toList());
  }
}
