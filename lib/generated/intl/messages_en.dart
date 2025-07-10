// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'messages.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class PaywallLocalizationsEn extends PaywallLocalizations {
  PaywallLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get adFree => 'Ad Free';

  @override
  String get appOverview => 'App Overview';

  @override
  String appPro(String appName) {
    return '$appName Pro';
  }

  @override
  String get bestOffer => 'BEST OFFER';

  @override
  String get cancelAtAnyTime => 'Cancel at any time';

  @override
  String chargingInfoFreeTrial(
    String price,
    String freeTrialDay,
    String invoiceDuration,
  ) {
    return 'You will pay $price after $freeTrialDay days $invoiceDuration until it cancel';
  }

  @override
  String chargingInfoLifeTime(String price) {
    return 'Pay $price once for lifetime access. No extra charges or subscriptions.';
  }

  @override
  String chargingInfoStandart(String price, String invoiceDuration) {
    return 'Auto-renews for $price $invoiceDuration until cancelled';
  }

  @override
  String get exclusiveFeatures => 'Exclusive Features';

  @override
  String get free => 'Free';

  @override
  String freeTrialDaysFree(String numDays) {
    return '$numDays days FREE';
  }

  @override
  String get freeTrialDesc =>
      'Enhance your creativity and get unlimited access with a premium membership';

  @override
  String freeTrialPriceInfoText(
    String freeTrialDays,
    String priceString,
    String periodInvoiceStr,
  ) {
    return 'Free $freeTrialDays days then $priceString/$periodInvoiceStr';
  }

  @override
  String get freeTrialProperty1Big => 'Use Your Free Trial Period';

  @override
  String get freeTrialProperty1Small => 'Easily activate with one click';

  @override
  String get freeTrialProperty2Big => 'Today: Instantly unlock all features';

  @override
  String get freeTrialProperty2Small => 'Access all features now';

  @override
  String get freeTrialProperty3Big => 'Reminder end of trial';

  @override
  String get freeTrialProperty3Small =>
      'We will send you a notification when your trial ends';

  @override
  String get freeTrialProperty4Big => 'Enjoy unlimited downloads';

  @override
  String get freeTrialProperty4Small => 'Easy to use and customize';

  @override
  String get freeTrialReminder => 'Remind me before the free trial expires';

  @override
  String get getUnlimitedAccess => 'Get unlimited access to all features!';

  @override
  String get hdQuality => 'HD Quality';

  @override
  String get lifetime => 'Lifetime';

  @override
  String get monthly => 'Monthly';

  @override
  String get perWeek => ' / week';

  @override
  String percentOff(int percent) {
    return '$percent% OFF';
  }

  @override
  String get popular => 'Popular';

  @override
  String get save => 'Save';

  @override
  String get seeAllOptions => 'See All Options';

  @override
  String get seeOtherOptions => 'See other options';

  @override
  String get shortTerm => 'SHORT TERM';

  @override
  String get startFreeTrial => 'Start Free Trial';

  @override
  String trialDays(int days) {
    return '$days Day Trial';
  }

  @override
  String get unlimitedDownload => 'Unlimited Download';

  @override
  String get upgradeNow => 'Upgrade now!';

  @override
  String get userReviews => 'User Reviews';

  @override
  String get week => 'Week';

  @override
  String get weekly => 'Weekly';

  @override
  String get yearly => 'Yearly';
}
