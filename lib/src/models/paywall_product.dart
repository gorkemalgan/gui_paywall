enum ProductPeriod {
  weekly(7, 'Weekly', 'per week'),
  monthly(30, 'Monthly', 'per month'),
  yearly(365, 'Yearly', 'per year'),
  lifetime(999999, 'Lifetime', null);

  final int durationDays;
  final String displayName;
  final String? periodInvoiceStr;

  const ProductPeriod(this.durationDays, this.displayName, this.periodInvoiceStr);
}

class PaywallProduct {
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

  double priceForDays(int days) {
    if (period == ProductPeriod.lifetime) return price;
    return (price / period.durationDays) * days;
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
