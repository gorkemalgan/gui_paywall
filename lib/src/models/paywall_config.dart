// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../context_extensions.dart';
import 'notification_config.dart';
import 'paywall_product.dart';

typedef AnalyticsCallback = Future<void> Function(String event, {Map<String, Object>? parameters});
typedef PurchaseCallback = Future<bool> Function(PaywallProduct product);
typedef NotificationCallback = Future<void> Function(NotificationConfig config);
typedef ProcessUICallback = Future<T> Function<T>(Future<T> Function() action);

class PaywallConfig {
  // Products configuration
  final List<PaywallProduct> products;
  final int singleDisplayProduct;
  final bool isSingleDisplay;
  final String? exitPlacementId;

  // Action callbacks
  final VoidCallback? onClose;
  final PurchaseCallback onPurchase;
  final VoidCallback? onRestore;
  final AnalyticsCallback? onAnalyticsEvent;
  final ProcessUICallback processUI;

  // UI configuration
  final String assetPath;
  final Map<String, dynamic>? customData;

  // Navigation
  final bool Function() isPro;

  // Optional features
  final bool enableNotifications;
  final NotificationCallback? onScheduleNotification;

  // Remote config flags
  final bool commentAndOneFreeCredit;
  final bool isFirstPaywallShown;
  final Future<bool> Function(String?)? showExitPaywall;
  final Future<void> Function()? onCommentAndFreeCredit;

  const PaywallConfig({
    required this.products,
    this.singleDisplayProduct = 0,
    this.isSingleDisplay = false,
    this.exitPlacementId,
    required this.onPurchase,
    this.onRestore,
    this.onAnalyticsEvent,
    required this.processUI,
    this.assetPath = 'assets/paywall',
    this.customData,
    required this.isPro,
    this.onClose,
    this.enableNotifications = false,
    this.onScheduleNotification,
    this.commentAndOneFreeCredit = false,
    this.isFirstPaywallShown = false,
    this.showExitPaywall,
    this.onCommentAndFreeCredit,
  });

  PaywallProduct get longestProduct => products.reduce((a, b) => a.period.durationDays > b.period.durationDays ? a : b);

  PaywallProduct get shortestProduct => products.reduce((a, b) => a.period.durationDays < b.period.durationDays ? a : b);

  List<PaywallProduct> get productsSorted {
    final sorted = List<PaywallProduct>.from(products);
    sorted.sort((a, b) => a.period.durationDays.compareTo(b.period.durationDays));
    return sorted;
  }

  Future<void> close(BuildContext context) async {
    onClose?.call();
    context.pop(false);
  }

  Future<void> purchase(PaywallProduct product, BuildContext context) async {
    bool isPurchased = await processUI(() async => await onPurchase(product));
    if (isPurchased) {
      logFinishCheckout(product.storeId);
    }
    if (isPro.call() || isPurchased) {
      context.pop(true);
    }
  }

  Future<void> logEvent(String event, {Map<String, Object>? parameters}) async => await onAnalyticsEvent?.call(event, parameters: parameters);
  Future<void> logFinishCheckout(String productId) async => await logEvent("paywall_purchase_$productId");
}
