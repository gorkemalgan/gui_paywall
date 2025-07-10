// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'messages.dart';

// ignore_for_file: type=lint

/// The translations for Swedish (`sv`).
class PaywallLocalizationsSv extends PaywallLocalizations {
  PaywallLocalizationsSv([String locale = 'sv']) : super(locale);

  @override
  String get adFree => 'Annonsfri';

  @override
  String get appOverview => 'Appöversikt';

  @override
  String appPro(String appName) {
    return '$appName Pro';
  }

  @override
  String get bestOffer => 'BÄSTA ERBJUDANDE';

  @override
  String get cancelAtAnyTime => 'Avbryt när som helst';

  @override
  String chargingInfoFreeTrial(
    String price,
    String freeTrialDay,
    String invoiceDuration,
  ) {
    return 'Du debiteras $price efter $freeTrialDay dagar $invoiceDuration tills det avbryts.';
  }

  @override
  String chargingInfoLifeTime(String price) {
    return 'Betala $price en gång för livstidstillgång. Inga extra avgifter eller prenumerationer.';
  }

  @override
  String chargingInfoStandart(String price, String invoiceDuration) {
    return 'Förnyas automatiskt för $price varje $invoiceDuration tills dess att det avbryts.';
  }

  @override
  String get exclusiveFeatures => 'Exklusiva funktioner';

  @override
  String get free => 'Gratis';

  @override
  String freeTrialDaysFree(String numDays) {
    return '$numDays dagar GRATIS';
  }

  @override
  String get freeTrialDesc =>
      'Förbättra din kreativitet och få obegränsad tillgång med ett premiummedlemskap';

  @override
  String freeTrialPriceInfoText(
    String freeTrialDays,
    String priceString,
    String periodInvoiceStr,
  ) {
    return '$freeTrialDays dagar gratis, sedan $priceString/$periodInvoiceStr';
  }

  @override
  String get freeTrialProperty1Big => 'Använd din kostnadsfria provperiod';

  @override
  String get freeTrialProperty1Small => 'Aktivera enkelt med ett klick';

  @override
  String get freeTrialProperty2Big =>
      'Idag: Lås upp alla funktioner omedelbart';

  @override
  String get freeTrialProperty2Small => 'Få tillgång till alla funktioner nu';

  @override
  String get freeTrialProperty3Big => 'Påminnelse om slut på provperioden';

  @override
  String get freeTrialProperty3Small =>
      'Vi kommer att skicka ett meddelande till dig när din provperiod slutar';

  @override
  String get freeTrialProperty4Big => 'Njut av obegränsade nedladdningar';

  @override
  String get freeTrialProperty4Small => 'Lätt att använda och anpassa';

  @override
  String get freeTrialReminder =>
      'Påminn mig innan den kostnadsfria provperioden går ut';

  @override
  String get getUnlimitedAccess =>
      'Få obegränsad tillgång till alla funktioner!';

  @override
  String get hdQuality => 'HD-kvalitet';

  @override
  String get lifetime => 'Livstid';

  @override
  String get monthly => 'Månadsvis';

  @override
  String get perWeek => ' / vecka';

  @override
  String percentOff(int percent) {
    return '$percent% RABATT';
  }

  @override
  String get popular => 'Populär';

  @override
  String get save => 'Spara';

  @override
  String get seeAllOptions => 'Se alla alternativ';

  @override
  String get seeOtherOptions => 'Se andra alternativ';

  @override
  String get shortTerm => 'KORTSIKTIGT';

  @override
  String get startFreeTrial => 'Påbörja gratis försöksperiod';

  @override
  String trialDays(int days) {
    return '$days dagars testversion';
  }

  @override
  String get unlimitedDownload => 'Obegränsad nedladdning';

  @override
  String get upgradeNow => 'Uppgradera nu';

  @override
  String get userReviews => 'Användarrecensioner';

  @override
  String get week => 'Vecka';

  @override
  String get weekly => 'Veckovis';

  @override
  String get yearly => 'Årsvis';
}
