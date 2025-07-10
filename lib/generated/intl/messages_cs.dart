// ignore: unused_import

// Package imports:
import 'package:intl/intl.dart' as intl;

// Project imports:
import 'messages.dart';

// ignore_for_file: type=lint

/// The translations for Czech (`cs`).
class PaywallLocalizationsCs extends PaywallLocalizations {
  PaywallLocalizationsCs([String locale = 'cs']) : super(locale);

  @override
  String get adFree => 'Bez reklam';

  @override
  String get appOverview => 'Přehled aplikace';

  @override
  String appPro(String appName) {
    return '$appName Pro';
  }

  @override
  String get bestOffer => 'NEJLEPŠÍ NABÍDKA';

  @override
  String get cancelAtAnyTime => 'Kdykoli můžete zrušit';

  @override
  String get chooseYourPlan => 'Choose Your Plan';

  @override
  String chargingInfoFreeTrial(String price, String freeTrialDay, String invoiceDuration) {
    return 'Bude vám účtováno $price po $freeTrialDay dnech $invoiceDuration než zrušíte.';
  }

  @override
  String chargingInfoLifeTime(String price) {
    return 'Zaplaťte $price jednou pro doživotní přístup. Žádné další poplatky ani předplatné.';
  }

  @override
  String chargingInfoStandart(String price, String invoiceDuration) {
    return 'Automaticky obnovováno za $price každé $invoiceDuration dokud nezrušíte.';
  }

  @override
  String get continueBtn => 'Continue';

  @override
  String get enableFreeTrial => 'Enable Free Trial';

  @override
  String get exclusiveFeatures => 'Exkluzivní funkce';

  @override
  String get free => 'Zdarma';

  @override
  String freeTrialDaysFree(String numDays) {
    return '$numDays dní ZDARMA';
  }

  @override
  String get freeTrialDesc => 'Zvyšte svou kreativitu a získejte neomezený přístup s prémiovým členstvím';

  @override
  String freeTrialPriceInfoText(String freeTrialDays, String priceString, String periodInvoiceStr) {
    return 'Zdarma $freeTrialDays dní, poté $priceString/$periodInvoiceStr';
  }

  @override
  String get freeTrialProperty1Big => 'Využijte své zkušební období zdarma';

  @override
  String get freeTrialProperty1Small => 'Snadno aktivujte jedním kliknutím';

  @override
  String get freeTrialProperty2Big => 'Dnes: Okamžitě odemkněte všechny funkce';

  @override
  String get freeTrialProperty2Small => 'Získejte přístup ke všem funkcím nyní';

  @override
  String get freeTrialProperty3Big => 'Připomenutí konce zkušebního období';

  @override
  String get freeTrialProperty3Small => 'Pošleme vám upozornění, až vaše zkušební období skončí';

  @override
  String get freeTrialProperty4Big => 'Užijte si neomezené stahování';

  @override
  String get freeTrialProperty4Small => 'Snadné použití a přizpůsobení';

  @override
  String get freeTrialReminder => 'Připomeňte mi před vypršením zkušební doby zdarma';

  @override
  String get getUnlimitedAccess => 'Získejte neomezený přístup ke všem funkcím!';

  @override
  String get hdQuality => 'HD kvalita';

  @override
  String get lifetime => 'Doživotní';

  @override
  String get monthly => 'Měsíčně';

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
  String get perWeek => ' / týden';

  @override
  String percentOff(int percent) {
    return 'SLEVA $percent%';
  }

  @override
  String get popular => 'Populární';

  @override
  String get restorePurchases => 'Restore Purchases';

  @override
  String get save => 'Uložit';

  @override
  String get seeAllOptions => 'Zobrazit všechny možnosti';

  @override
  String get seeOtherOptions => 'Zobrazit další možnosti';

  @override
  String get shortTerm => 'KRÁTKODOBÉ';

  @override
  String get startFreeTrial => 'Začít bezplatnou zkušební verzi';

  @override
  String thenPerWeek(String price) {
    return 'then \$$price/week';
  }

  @override
  String trialDays(int days) {
    return '$days denní zkušební verze';
  }

  @override
  String get unlimitedDownload => 'Neomezené stahování';

  @override
  String get unlockFullPower => 'Unlock Full Power';

  @override
  String get upgradeNow => 'Upgradovat nyní';

  @override
  String get userReviews => 'Recenze uživatelů';

  @override
  String get week => 'Týden';

  @override
  String get weekly => 'Týdně';

  @override
  String get yearly => 'Ročně';

  @override
  String yearlyPrice(String price) {
    return '\$$price/year';
  }
}
