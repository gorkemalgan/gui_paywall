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
  String get bestValue => 'BÄSTA VÄRDE';

  @override
  String get cancelAtAnyTime => 'Avbryt när som helst';

  @override
  String chargingInfoFreeTrial(String price, String freeTrialDay, String invoiceDuration) {
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
  String get chooseYourPlan => 'Välj din plan';

  @override
  String get continueBtn => 'Fortsätt';

  @override
  String daysFreeTrial(int days) {
    String _temp0 = intl.Intl.pluralLogic(days, locale: localeName, other: '$days dagar gratis provperiod', one: '1 dag gratis provperiod');
    return '$_temp0';
  }

  @override
  String get enableFreeTrial => 'Aktivera gratis provperiod';

  @override
  String get exclusiveFeatures => 'Exklusiva funktioner';

  @override
  String get free => 'Gratis';

  @override
  String freeTrialDaysFree(String numDays) {
    return '$numDays dagar GRATIS';
  }

  @override
  String get freeTrialDesc => 'Förbättra din kreativitet och få obegränsad tillgång med ett premiummedlemskap';

  @override
  String freeTrialPriceInfoText(String freeTrialDays, String priceString, String periodInvoiceStr) {
    return '$freeTrialDays dagar gratis, sedan $priceString/$periodInvoiceStr';
  }

  @override
  String get freeTrialProperty1Big => 'Använd din kostnadsfria provperiod';

  @override
  String get freeTrialProperty1Small => 'Aktivera enkelt med ett klick';

  @override
  String get freeTrialProperty2Big => 'Idag: Lås upp alla funktioner omedelbart';

  @override
  String get freeTrialProperty2Small => 'Få tillgång till alla funktioner nu';

  @override
  String get freeTrialProperty3Big => 'Påminnelse om slut på provperioden';

  @override
  String get freeTrialProperty3Small => 'Vi kommer att skicka ett meddelande till dig när din provperiod slutar';

  @override
  String get freeTrialProperty4Big => 'Njut av obegränsade nedladdningar';

  @override
  String get freeTrialProperty4Small => 'Lätt att använda och anpassa';

  @override
  String get freeTrialReminder => 'Påminn mig innan den kostnadsfria provperioden går ut';

  @override
  String get getUnlimitedAccess => 'Få obegränsad tillgång till alla funktioner!';

  @override
  String get hdQuality => 'HD-kvalitet';

  @override
  String get lifetime => 'Livstid';

  @override
  String get monthly => 'Månadsvis';

  @override
  String monthlyPrice(String price) {
    return '$price/månad';
  }

  @override
  String get notSureYet => 'Inte säker än?';

  @override
  String get otherPlans => 'Andra planer';

  @override
  String get paymentAgreement =>
      'Prenumerationer förnyas automatiskt om inte automatisk förnyelse stängs av minst 24 timmar före slutet av den aktuella perioden.Ditt konto debiteras enligt din plan för förnyelse inom 24 timmar före slutet av den aktuella perioden.Du kan hantera eller stänga av auto-förnyas i dina kontoinställningar när som helst efter köpet.';

  @override
  String get paymentAgreementFreeTrial =>
      'Betalning debiteras ditt konto i slutet av den kostnadsfria provperioden.Du kan avbryta när som helst under den kostnadsfria provperioden och inga avgifter kommer att tillämpas.';

  @override
  String get paymentFailed => 'Betalning misslyckades';

  @override
  String get paymentInfoPending => 'Din betalning behandlas, vänta vänligen. Om du stöter på problem, kontakta oss på contact@everpixel.org.';

  @override
  String get paymentInfoTitle => 'Betalningsinformation';

  @override
  String get perWeek => ' / vecka';

  @override
  String percentOff(int percent) {
    return '$percent% RABATT';
  }

  @override
  String get popular => 'Populär';

  @override
  String get privacyPolicy => 'Integritetspolicy';

  @override
  String get restore => 'Återställ';

  @override
  String get restorePurchases => 'Återställ köp';

  @override
  String peopleUsed7DayTrial(String count) {
    return '$count people have used the 7-day Trial in the last 24 hours!';
  }

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
  String get termsOfUse => 'Villkor';

  @override
  String thenPerWeek(String price) {
    return 'därefter $price/vecka';
  }

  @override
  String trialDays(int days) {
    return '$days dagars testversion';
  }

  @override
  String get unlimitedDownload => 'Obegränsad nedladdning';

  @override
  String get unlockFullPower => 'Lås upp all funktionalitet';

  @override
  String unlockFullPowerDescription(String appName) {
    return 'Lås upp hela kraften hos $appName – den ultimata AI-redigeringsappen.';
  }

  @override
  String get upgradeNow => 'Uppgradera nu';

  @override
  String get userReviews => 'Användarrecensioner';

  @override
  String get week => 'Vecka';

  @override
  String get weekly => 'Veckovis';

  @override
  String weeklyPrice(String price) {
    return '$price/vecka';
  }

  @override
  String weeksFreeTrial(int weeks) {
    String _temp0 = intl.Intl.pluralLogic(weeks, locale: localeName, other: '$weeks veckor gratis provperiod', one: '1 vecka gratis provperiod');
    return '$_temp0';
  }

  @override
  String get yearly => 'Årsvis';

  @override
  String yearlyPrice(String price) {
    return '$price/år';
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
