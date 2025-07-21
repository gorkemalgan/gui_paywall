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
  String get bestValue => 'BEST VALUE';

  @override
  String get cancelAtAnyTime => 'No commitments, cancel anytime';

  @override
  String chargingInfoFreeTrial(String price, String freeTrialDay, String invoiceDuration) {
    return 'Billed $price/$invoiceDuration. Auto-renewal after $freeTrialDay days. Request a refund if you\'re not 100% satisfied.';
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
  String get chooseYourPlan => 'Choose Your Plan';

  @override
  String get continueBtn => 'Continue';

  @override
  String daysFreeTrial(int days) {
    String _temp0 = intl.Intl.pluralLogic(days, locale: localeName, other: '$days days free trial', one: '1 day free trial');
    return '$_temp0';
  }

  @override
  String get enableFreeTrial => 'Enable Free Trial';

  @override
  String get exclusiveFeatures => 'Exclusive Features';

  @override
  String get free => 'Free';

  @override
  String freeTrialDaysFree(String numDays) {
    return '$numDays days FREE';
  }

  @override
  String get freeTrialDesc => 'Enhance your creativity and get unlimited access with a premium membership';

  @override
  String freeTrialPriceInfoText(String freeTrialDays, String priceString, String periodInvoiceStr) {
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
  String get freeTrialProperty3Small => 'We will send you a notification when your trial ends';

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
  String monthlyPrice(String price) {
    return '$price/month';
  }

  @override
  String get notSureYet => 'Not Sure Yet?';

  @override
  String get otherPlans => 'Other plans';

  @override
  String get paymentAgreement =>
      'Subscriptions will automatically renew unless auto-renew is turned off at least 24 hours before the end of the current period. Your account will be charged according to your plan for renewal within 24 hours prior to the end of the current period. You can manage or turn-off auto-renew in your account settings at any time after purchase.';

  @override
  String get paymentAgreementFreeTrial =>
      'Payment will be charged to your account at the end of the free trial period. You can cancel anytime during the free trial period and no charges will be applied.';

  @override
  String get paymentFailed => 'Payment failed check your payment method and try again later';

  @override
  String get paymentInfoPending =>
      'Your payment is pending, please wait if you encountered any problems with the transaction, you can contact us from contact@everpixel.org';

  @override
  String get paymentInfoTitle => 'Payment Info';

  @override
  String get perWeek => ' / week';

  @override
  String percentOff(int percent) {
    return '$percent% OFF';
  }

  @override
  String get popular => 'Popular';

  @override
  String get privacyPolicy => 'Privacy Policy';

  @override
  String get restore => 'Restore';

  @override
  String get restorePurchases => 'Restore Purchases';

  @override
  String peopleUsed7DayTrial(String count) {
    return '$count people have used the 7-day Trial in the last 24 hours!';
  }

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
  String get termsOfUse => 'Terms of Use';

  @override
  String thenPerWeek(String price) {
    return 'then $price/week';
  }

  @override
  String trialDays(int days) {
    return '$days Day Trial';
  }

  @override
  String get unlimitedDownload => 'Unlimited Download';

  @override
  String get unlockFullPower => 'Unlock Full Power';

  @override
  String unlockFullPowerDescription(String appName) {
    return 'Unlock the full power of $appName–the ultimate AI Editor App.';
  }

  @override
  String get upgradeNow => 'Upgrade now!';

  @override
  String get userReviews => 'User Reviews';

  @override
  String get week => 'Week';

  @override
  String get weekly => 'Weekly';

  @override
  String weeklyPrice(String price) {
    return '$price/week';
  }

  @override
  String weeksFreeTrial(int weeks) {
    String _temp0 = intl.Intl.pluralLogic(weeks, locale: localeName, other: '$weeks weeks free trial', one: '1 week free trial');
    return '$_temp0';
  }

  @override
  String get yearly => 'Yearly';

  @override
  String yearlyPrice(String price) {
    return '$price/year';
  }

  @override
  String trialUserCount(String count) {
    return '$count people started a trial';
  }

  @override
  String trialUsedInLastHours(String count) {
    return '$count people used trial in last 24 hours';
  }

  @override
  String get startEditingSeeMagicHappen => 'Start Editing\nSee Magic Happen!';

  @override
  String get paywallExamples => 'Paywall Examples';

  @override
  String reviewSummary(String starCount, String totalDownload) {
    return '$starCount ($totalDownload)';
  }
}
