// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../extensions.dart';
import '../my_localizations.dart';
import 'package:gui_paywall/generated/intl/messages.dart';

enum ProductPeriod {
  weekly(7, 'Weekly', 'per week'),
  monthly(30, 'Monthly', 'per month'),
  yearly(365, 'Yearly', 'per year'),
  lifetime(999999, 'Lifetime', null);

  final int durationDays;
  final String displayName;
  final String? periodInvoiceStr;

  const ProductPeriod(this.durationDays, this.displayName, this.periodInvoiceStr);

  String localizedName(BuildContext context) {
    switch (this) {
      case ProductPeriod.weekly:
        return context.localizations.weekly;
      case ProductPeriod.monthly:
        return context.localizations.monthly;
      case ProductPeriod.yearly:
        return context.localizations.yearly;
      case ProductPeriod.lifetime:
        return context.localizations.lifetime;
    }
  }
}

class PaywallProduct {
  final String storeId;
  final double price;
  final String currency;
  final String? priceString;
  final ProductPeriod period;
  final int? freeTrialDays;
  final Map<String, dynamic>? title;
  final Map<String, dynamic>? description;

  const PaywallProduct({
    required this.storeId,
    required this.price,
    required this.currency,
    this.priceString,
    required this.period,
    this.freeTrialDays,
    this.title,
    this.description,
  });

  bool get haveFreeTrial => freeTrialDays != null && freeTrialDays! > 0;

  String get currency_ {
    if (priceString != null) {
      // Remove numbers, decimal points, and whitespace to extract currency
      return priceString!.replaceAll(RegExp(r'[\d.,\s]+'), '').toUpperCase();
    }
    return currency.toUpperCase();
  }

  String get priceString_ {
    if (priceString != null) return priceString!;
    if (currency_.toUpperCase() == 'USD') {
      return "\$${price.toStringAsFixed(2)}";
    }
    return "${currency_.toUpperCase()} ${price.toStringAsFixed(2)}";
  }

  double priceForDays(int days) {
    if (period == ProductPeriod.lifetime) return price;
    return (price / period.durationDays) * days;
  }

  String priceStringPerPeriod(BuildContext context) {
    switch (period) {
      case ProductPeriod.yearly:
        return context.localizations.yearlyPrice(priceString_);
      case ProductPeriod.monthly:
        return context.localizations.monthlyPrice(priceString_);
      case ProductPeriod.weekly:
        return context.localizations.weeklyPrice(priceString_);
      default:
        return priceString_;
    }
  }

  double saveRatio(PaywallProduct shortestProduct) {
    if (period == ProductPeriod.lifetime || period.durationDays <= shortestProduct.period.durationDays) {
      return 0;
    }
    double thisWeeklyPrice = priceForDays(7);
    double shortestWeeklyPrice = shortestProduct.priceForDays(7);
    if (shortestWeeklyPrice <= 0) return 0;
    return (shortestWeeklyPrice - thisWeeklyPrice) / shortestWeeklyPrice;
  }
}

extension PaywallProductLocalization on PaywallProduct {
  String getLocalizedTitle() => title != null ? parseLocalized(title!) : '';
  String getLocalizedDescription() => description != null ? parseLocalized(description!) : '';
}

// Extension methods are used for ProductPeriod to provide localized UI strings.
// This is the recommended way in Dart, since enums cannot contain methods that depend on BuildContext or localization.
extension ProductPeriodExtension on ProductPeriod {
  String localizedGetPremiumAccessFor(BuildContext context, int days) {
    switch (this) {
      case ProductPeriod.weekly:
        return context.localizations.getPremiumAccessFor(days, context.localizations.weekly);
      case ProductPeriod.monthly:
        return context.localizations.getPremiumAccessFor(days, context.localizations.monthly);
      case ProductPeriod.yearly:
        return context.localizations.getPremiumAccessFor(days, context.localizations.yearly);
      case ProductPeriod.lifetime:
        return context.localizations.getPremiumAccessFor(days, context.localizations.lifetime);
    }
  }
}

extension ProductPeriodTitleDescriptionExtension on ProductPeriod {
  String getTitle(BuildContext context) {
    switch (this) {
      case ProductPeriod.weekly:
        return PaywallLocalizations.of(context)!.weeklyPremiumTitle;
      case ProductPeriod.monthly:
        return PaywallLocalizations.of(context)!.monthlyPremiumTitle;
      case ProductPeriod.yearly:
        return PaywallLocalizations.of(context)!.yearlyPremiumTitle;
      case ProductPeriod.lifetime:
        // Eğer lifetime için bir başlık yoksa boş dönebiliriz veya bir string dönebiliriz.
        return '';
    }
  }

  String getDescription(BuildContext context) {
    switch (this) {
      case ProductPeriod.weekly:
        return PaywallLocalizations.of(context)!.weeklyPremiumDescription;
      case ProductPeriod.monthly:
        return PaywallLocalizations.of(context)!.monthlyPremiumDescription;
      case ProductPeriod.yearly:
        return PaywallLocalizations.of(context)!.yearlyPremiumDescription;
      case ProductPeriod.lifetime:
        // Eğer lifetime için bir açıklama yoksa boş dönebiliriz veya bir string dönebiliriz.
        return '';
    }
  }
}
