// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../extensions.dart';
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

  String getTitle(BuildContext context) {
    switch (this) {
      case ProductPeriod.weekly:
        return PaywallLocalizations.of(context)!.weeklyPremiumPlanTitle;
      case ProductPeriod.monthly:
        return PaywallLocalizations.of(context)!.monthlyPremiumPlanTitle;
      case ProductPeriod.yearly:
        return PaywallLocalizations.of(context)!.yearlyPremiumPlanTitle;
      case ProductPeriod.lifetime:
        return '';
    }
  }

  String getDescription(BuildContext context) {
    switch (this) {
      case ProductPeriod.weekly:
        return PaywallLocalizations.of(context)!.weeklyPremiumPlanDescription(1);
      case ProductPeriod.monthly:
        return PaywallLocalizations.of(context)!.monthlyPremiumPlanDescription(1);
      case ProductPeriod.yearly:
        return PaywallLocalizations.of(context)!.yearlyPremiumPlanDescription(58);
      case ProductPeriod.lifetime:
        return '';
    }
  }

  String localizedGetPremiumAccessFor(BuildContext context, int count) {
    switch (this) {
      case ProductPeriod.weekly:
        return PaywallLocalizations.of(context)!.weeklyPremiumPlanDescription(count);
      case ProductPeriod.monthly:
        return PaywallLocalizations.of(context)!.monthlyPremiumPlanDescription(count);
      case ProductPeriod.yearly:
        return PaywallLocalizations.of(context)!.yearlyPremiumPlanDescription(count);
      case ProductPeriod.lifetime:
        return context.localizations.lifetime;
    }
  }
}

class PaywallProduct {
  String getLocalizedTitle() => title ?? '';
  String getLocalizedDescription() => description ?? '';
  final String storeId;
  final double price;
  final String currency;
  final String? priceString;
  final ProductPeriod period;
  final int? freeTrialDays;
  final String? title;
  final String? description;

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

  String get priceString_ => priceString ?? "${currency_.toUpperCase()} ${price.toStringAsFixed(2)}";

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
