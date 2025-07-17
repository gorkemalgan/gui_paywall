// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'messages.dart';

// ignore_for_file: type=lint

/// The translations for Dutch Flemish (`nl`).
class PaywallLocalizationsNl extends PaywallLocalizations {
  PaywallLocalizationsNl([String locale = 'nl']) : super(locale);

  @override
  String get adFree => 'Advertentie gratis';

  @override
  String get appOverview => 'App-overzicht';

  @override
  String appPro(String appName) {
    return '$appName Pro';
  }

  @override
  String get bestOffer => 'BESTE AANBIEDING';

  @override
  String get cancelAtAnyTime => 'Annuleer op elk gewenst moment';

  @override
  String get chooseYourPlan => 'Choose Your Plan';

  @override
  String chargingInfoFreeTrial(
    String price,
    String freeTrialDay,
    String invoiceDuration,
  ) {
    return 'Je betaalt $price na $freeTrialDay dagen $invoiceDuration tot annulering.';
  }

  @override
  String chargingInfoLifeTime(String price) {
    return 'Betaal $price één keer voor levenslange toegang. Geen extra kosten of abonnementen.';
  }

  @override
  String chargingInfoStandart(String price, String invoiceDuration) {
    return 'Automatisch verlengen voor $price elke $invoiceDuration tot het geannuleerd wordt.';
  }

  @override
  String get continueBtn => 'Continue';

  @override
  String get enableFreeTrial => 'Enable Free Trial';

  @override
  String get exclusiveFeatures => 'Exclusieve kenmerken';

  @override
  String get free => 'Gratis';

  @override
  String freeTrialDaysFree(String numDays) {
    return '$numDays dagen GRATIS';
  }

  @override
  String get freeTrialDesc =>
      'Verbeter uw creativiteit en krijg onbeperkte toegang met een premium lidmaatschap';

  @override
  String freeTrialPriceInfoText(
    String freeTrialDays,
    String priceString,
    String periodInvoiceStr,
  ) {
    return '$freeTrialDays dagen gratis, daarna $priceString/$periodInvoiceStr';
  }

  @override
  String get freeTrialProperty1Big => 'Gebruik uw gratis proefperiode';

  @override
  String get freeTrialProperty1Small => 'Activeer eenvoudig met één klik';

  @override
  String get freeTrialProperty2Big =>
      'Vandaag: ontgrendel direct alle functies';

  @override
  String get freeTrialProperty2Small => 'Krijg nu toegang tot alle functies';

  @override
  String get freeTrialProperty3Big => 'Herinnering einde proefperiode';

  @override
  String get freeTrialProperty3Small =>
      'We sturen u een melding wanneer uw proefperiode eindigt';

  @override
  String get freeTrialProperty4Big => 'Geniet van onbeperkte downloads';

  @override
  String get freeTrialProperty4Small =>
      'Gemakkelijk te gebruiken en aan te passen';

  @override
  String get freeTrialReminder =>
      'Herinner mij eraan voordat de gratis proefperiode afloopt';

  @override
  String get getUnlimitedAccess => 'Krijg onbeperkt toegang tot alle functies!';

  @override
  String get hdQuality => 'HD-kwaliteit';

  @override
  String get lifetime => 'Levenslang';

  @override
  String get monthly => 'Maandelijks';

  @override
  String get notSureYet => 'Not Sure Yet?';

  @override
  String weekFreeTrial(int weeks) {
    String _temp0 = intl.Intl.pluralLogic(
      weeks,
      locale: localeName,
      other: '$weeks weeks free trial',
      one: '1 week free trial',
    );
    return '$_temp0';
  }

  @override
  String get otherPlans => 'Other plans';

  @override
  String get perWeek => ' / week';

  @override
  String percentOff(int percent) {
    return '$percent% KORTING';
  }

  @override
  String get popular => 'Populair';

  @override
  String get restorePurchases => 'Restore Purchases';

  @override
  String get save => 'Redden';

  @override
  String get seeAllOptions => 'Zie alle opties';

  @override
  String get seeOtherOptions => 'Bekijk andere opties';

  @override
  String get shortTerm => 'KORTE TERMIJN';

  @override
  String get startFreeTrial => 'Start gratis proef';

  @override
  String thenPerWeek(String price) {
    return 'then \$$price/week';
  }

  @override
  String trialDays(int days) {
    return '$days dagen proef';
  }

  @override
  String get unlimitedDownload => 'Onbeperkt downloaden';

  @override
  String get unlockFullPower => 'Unlock Full Power';

  @override
  String get upgradeNow => 'Nu upgraden';

  @override
  String get userReviews => 'Gebruikersrecensies';

  @override
  String get week => 'Week';

  @override
  String get weekly => 'Wekelijks';

  @override
  String get yearly => 'Jaarlijks';

  @override
  String yearlyPrice(String price) {
    return '\$$price/year';
  }
}
