// ignore: unused_import

// Package imports:
import 'package:intl/intl.dart' as intl;

// Project imports:
import 'messages.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class PaywallLocalizationsDe extends PaywallLocalizations {
  PaywallLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get adFree => 'Werbefrei';

  @override
  String get appOverview => 'App-Übersicht';

  @override
  String appPro(String appName) {
    return '$appName Pro';
  }

  @override
  String get bestOffer => 'BESTES ANGEBOT';

  @override
  String get cancelAtAnyTime => 'Jederzeit kündbar';

  @override
  String get chooseYourPlan => 'Choose Your Plan';

  @override
  String chargingInfoFreeTrial(String price, String freeTrialDay, String invoiceDuration) {
    return 'Du wirst mit $price nach $freeTrialDay Tagen $invoiceDuration bis zur Kündigung belastet.';
  }

  @override
  String chargingInfoLifeTime(String price) {
    return 'Bezahle einmal $price für lebenslangen Zugang. Keine zusätzlichen Kosten oder Abonnements.';
  }

  @override
  String chargingInfoStandart(String price, String invoiceDuration) {
    return 'Wird automatisch für $price $invoiceDuration verlängert, bis gekündigt wird.';
  }

  @override
  String get continueBtn => 'Continue';

  @override
  String get enableFreeTrial => 'Enable Free Trial';

  @override
  String get exclusiveFeatures => 'Exklusive Funktionen';

  @override
  String get free => 'Kostenlos';

  @override
  String freeTrialDaysFree(String numDays) {
    return '$numDays Tage KOSTENLOS';
  }

  @override
  String get freeTrialDesc => 'Steigern Sie Ihre Kreativität und erhalten Sie mit einer Premium-Mitgliedschaft unbegrenzten Zugriff';

  @override
  String freeTrialPriceInfoText(String freeTrialDays, String priceString, String periodInvoiceStr) {
    return '$freeTrialDays Tage kostenlos, dann $priceString/$periodInvoiceStr';
  }

  @override
  String get freeTrialProperty1Big => 'Nutzen Sie Ihre kostenlose Testphase';

  @override
  String get freeTrialProperty1Small => 'Einfach mit einem Klick aktivieren';

  @override
  String get freeTrialProperty2Big => 'Heute: Schalten Sie sofort alle Funktionen frei';

  @override
  String get freeTrialProperty2Small => 'Zugriff auf alle Funktionen jetzt';

  @override
  String get freeTrialProperty3Big => 'Erinnerung an das Ende der Testphase';

  @override
  String get freeTrialProperty3Small => 'Wir senden Ihnen eine Benachrichtigung, wenn Ihre Testversion endet';

  @override
  String get freeTrialProperty4Big => 'Genießen Sie unbegrenzte Downloads';

  @override
  String get freeTrialProperty4Small => 'Einfach zu bedienen und anzupassen';

  @override
  String get freeTrialReminder => 'Erinnern Sie mich vor Ablauf der kostenlosen Testversion';

  @override
  String get getUnlimitedAccess => 'Unbegrenzten Zugriff auf alle Funktionen erhalten!';

  @override
  String get hdQuality => 'HD-Qualität';

  @override
  String get lifetime => 'Lebenslang';

  @override
  String get monthly => 'Monatlich';

  @override
  String get notSureYet => 'Not Sure Yet?';

  @override
  String weekFreeTrial(int weeks) {
    String _temp0 = intl.Intl.pluralLogic(weeks, locale: localeName, other: '$weeks weeks free trial', one: '1 week free trial');
    return '$_temp0';
  }

  @override
  String get otherPlans => 'Other plans';

  @override
  String get perWeek => ' / Woche';

  @override
  String percentOff(int percent) {
    return '$percent% RABATT';
  }

  @override
  String get popular => 'Beliebt';

  @override
  String get restorePurchases => 'Restore Purchases';

  @override
  String get save => 'Speichern';

  @override
  String get seeAllOptions => 'Alle Optionen ansehen';

  @override
  String get seeOtherOptions => 'Weitere Optionen ansehen';

  @override
  String get shortTerm => 'KURZFRISTIG';

  @override
  String get startFreeTrial => 'Kostenlose Testversion starten';

  @override
  String thenPerWeek(String price) {
    return 'then \$$price/week';
  }

  @override
  String trialDays(int days) {
    return '$days-Tage-Testversion';
  }

  @override
  String get unlimitedDownload => 'Unbegrenzter Download';

  @override
  String get unlockFullPower => 'Unlock Full Power';

  @override
  String get upgradeNow => 'Jetzt upgraden';

  @override
  String get userReviews => 'Benutzerbewertungen';

  @override
  String get week => 'Woche';

  @override
  String get weekly => 'Wöchentlich';

  @override
  String get yearly => 'Jährlich';

  @override
  String yearlyPrice(String price) {
    return '\$$price/year';
  }
}
