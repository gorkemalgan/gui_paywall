// ignore: unused_import
import 'package:intl/intl.dart' as intl;
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
  String get bestValue => 'BESTER WERT';

  @override
  String get cancelAtAnyTime => 'Jederzeit kündbar';

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
  String get chooseYourPlan => 'Wählen Sie Ihren Plan';

  @override
  String get continueBtn => 'Weiter';

  @override
  String daysFreeTrial(int days) {
    String _temp0 = intl.Intl.pluralLogic(days, locale: localeName, other: '$days Tage kostenlos testen', one: '1 Tag kostenlos testen');
    return '$_temp0';
  }

  @override
  String get enableFreeTrial => 'Kostenlose Testversion aktivieren';

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
  String monthlyPrice(String price) {
    return '$price/Monat';
  }

  @override
  String get notSureYet => 'Noch nicht sicher?';

  @override
  String get otherPlans => 'Weitere Pläne';

  @override
  String get paymentAgreement =>
      'Abonnements werden automatisch erneuert, sofern die automatische Erneuerung nicht mindestens 24 Stunden vor Ende des aktuellen Zeitraums deaktiviert wird. Ihr Konto wird gemäß Ihrem Plan für die Verlängerung innerhalb von 24 Stunden vor Ende des aktuellen Zeitraums belastet. Sie können die automatische Erneuerung jederzeit nach dem Kauf in Ihren Kontoeinstellungen verwalten oder deaktivieren.';

  @override
  String get paymentAgreementFreeTrial =>
      'Die Zahlung wird am Ende der kostenlosen Testphase von Ihrem Konto abgebucht. Sie können jederzeit während der kostenlosen Testphase kündigen, und es fallen keine Gebühren an.';

  @override
  String get paymentFailed => 'Zahlung fehlgeschlagen';

  @override
  String get paymentInfoPending => 'Ihre Zahlung ist ausstehend, bitte warten Sie. Bei Problemen wenden Sie sich an contact@everpixel.org.';

  @override
  String get paymentInfoTitle => 'Zahlungsinformationen';

  @override
  String get perWeek => ' / Woche';

  @override
  String percentOff(int percent) {
    return '$percent% RABATT';
  }

  @override
  String get popular => 'Beliebt';

  @override
  String get privacyPolicy => 'Datenschutzrichtlinie';

  @override
  String get restore => 'Wiederherstellen';

  @override
  String get restorePurchases => 'Käufe wiederherstellen';

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
  String get termsOfUse => 'Nutzungsbedingungen';

  @override
  String thenPerWeek(String price) {
    return 'danach $price/Woche';
  }

  @override
  String trialDays(int days) {
    return '$days-Tage-Testversion';
  }

  @override
  String get unlimitedDownload => 'Unbegrenzter Download';

  @override
  String get unlockFullPower => 'Volle Leistung freischalten';

  @override
  String unlockFullPowerDescription(String appName) {
    return 'Entfessle die volle Power von $appName – der ultimativen KI-Editor-App.';
  }

  @override
  String get upgradeNow => 'Jetzt upgraden';

  @override
  String get userReviews => 'Benutzerbewertungen';

  @override
  String get week => 'Woche';

  @override
  String get weekly => 'Wöchentlich';

  @override
  String weeklyPrice(String price) {
    return '$price/Woche';
  }

  @override
  String weeksFreeTrial(int weeks) {
    String _temp0 = intl.Intl.pluralLogic(weeks, locale: localeName, other: '$weeks Wochen kostenlos testen', one: '1 Woche kostenlos testen');
    return '$_temp0';
  }

  @override
  String get yearly => 'Jährlich';

  @override
  String yearlyPrice(String price) {
    return '$price/Jahr';
  }

  @override
  String trialUserCountText(String userCount, String hours) {
    return '$userCount people started a trial in the last $hours hours!';
  }
}
