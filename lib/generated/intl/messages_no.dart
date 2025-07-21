// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'messages.dart';

// ignore_for_file: type=lint

/// The translations for Norwegian (`no`).
class PaywallLocalizationsNo extends PaywallLocalizations {
  PaywallLocalizationsNo([String locale = 'no']) : super(locale);

  @override
  String get adFree => 'Annonsefri';

  @override
  String get appOverview => 'App Oversikt';

  @override
  String appPro(String appName) {
    return '$appName Pro';
  }

  @override
  String get bestOffer => 'BESTE TILBUD';

  @override
  String get bestValue => 'BESTE VERDI';

  @override
  String get cancelAtAnyTime => 'Avbryt når som helst';

  @override
  String chargingInfoFreeTrial(String price, String freeTrialDay, String invoiceDuration) {
    return 'Du vil bli belastet $price etter $freeTrialDay dager $invoiceDuration, inntil det blir kansellert.';
  }

  @override
  String chargingInfoLifeTime(String price) {
    return 'Betal $price én gang for livstids tilgang. Ingen ekstra kostnader eller abonnement.';
  }

  @override
  String chargingInfoStandart(String price, String invoiceDuration) {
    return 'Auto-fornyes for $price hver $invoiceDuration inntil det blir kansellert.';
  }

  @override
  String get chooseYourPlan => 'Velg din plan';

  @override
  String get continueBtn => 'Fortsett';

  @override
  String daysFreeTrial(int days) {
    String _temp0 = intl.Intl.pluralLogic(days, locale: localeName, other: '$days dager gratis prøveperiode', one: '1 dag gratis prøveperiode');
    return '$_temp0';
  }

  @override
  String get enableFreeTrial => 'Aktiver gratis prøveperiode';

  @override
  String get exclusiveFeatures => 'Eksklusive funksjoner';

  @override
  String get free => 'Gratis';

  @override
  String freeTrialDaysFree(String numDays) {
    return '$numDays dager GRATIS';
  }

  @override
  String get freeTrialDesc => 'Forbedre kreativiteten din og få ubegrenset tilgang med et premium-medlemskap';

  @override
  String freeTrialPriceInfoText(String freeTrialDays, String priceString, String periodInvoiceStr) {
    return '$freeTrialDays dager gratis, deretter $priceString/$periodInvoiceStr';
  }

  @override
  String get freeTrialProperty1Big => 'Bruk din gratis prøveperiode';

  @override
  String get freeTrialProperty1Small => 'Aktiver enkelt med ett klikk';

  @override
  String get freeTrialProperty2Big => 'I dag: Lås opp alle funksjoner umiddelbart';

  @override
  String get freeTrialProperty2Small => 'Få tilgang til alle funksjoner nå';

  @override
  String get freeTrialProperty3Big => 'Påminnelse om slutten av prøveperioden';

  @override
  String get freeTrialProperty3Small => 'Vi sender deg et varsel når prøveperioden din avsluttes';

  @override
  String get freeTrialProperty4Big => 'Nyt ubegrensede nedlastinger';

  @override
  String get freeTrialProperty4Small => 'Enkel å bruke og tilpasse';

  @override
  String get freeTrialReminder => 'Minn meg på før den gratis prøveperioden utløper';

  @override
  String get getUnlimitedAccess => 'Få ubegrenset tilgang til alle funksjoner!';

  @override
  String get hdQuality => 'HD-kvalitet';

  @override
  String get lifetime => 'Livstid';

  @override
  String get monthly => 'Månedlig';

  @override
  String monthlyPrice(String price) {
    return '$price/mnd';
  }

  @override
  String get notSureYet => 'Ikke sikker ennå?';

  @override
  String get otherPlans => 'Andre planer';

  @override
  String get paymentAgreement =>
      'Abonnement vil automatisk fornye med mindre Auto-Renew er slått av minst 24 timer før slutten av inneværende periode.Kontoen din blir belastet i henhold til planen din for fornyelse innen 24 timer før slutten av inneværende periode.Du kan administrere eller slå av Auto-Renew i kontoinnstillingene når som helst etter kjøpet.';

  @override
  String get paymentAgreementFreeTrial =>
      'Betaling belastes kontoen din på slutten av den gratis prøveperioden.Du kan kansellere når som helst i løpet av gratis prøveperiode, og ingen kostnader vil bli brukt.';

  @override
  String get paymentFailed => 'Betaling mislyktes';

  @override
  String get paymentInfoPending => 'Betalingen din er under behandling, vennligst vent. Hvis du har problemer, kontakt oss på contact@everpixel.org.';

  @override
  String get paymentInfoTitle => 'Betalingsinformasjon';

  @override
  String get perWeek => ' / uke';

  @override
  String percentOff(int percent) {
    return '$percent% RABATT';
  }

  @override
  String get popular => 'Populær';

  @override
  String get privacyPolicy => 'Personvernerklæring';

  @override
  String get restore => 'Restaurere';

  @override
  String get restorePurchases => 'Gjenopprett kjøp';

  @override
  String peopleUsed7DayTrial(String count) {
    return '$count people have used the 7-day Trial in the last 24 hours!';
  }

  @override
  String get save => 'Lagre';

  @override
  String get seeAllOptions => 'Se alle alternativer';

  @override
  String get seeOtherOptions => 'Se andre alternativer';

  @override
  String get shortTerm => 'KORTSIKTIG';

  @override
  String get startFreeTrial => 'Start gratis prøveperiode';

  @override
  String get termsOfUse => 'Vilkår for bruk';

  @override
  String thenPerWeek(String price) {
    return 'deretter $price/uke';
  }

  @override
  String trialDays(int days) {
    return '$days dagers prøve';
  }

  @override
  String get unlimitedDownload => 'Ubegrenset nedlasting';

  @override
  String get unlockFullPower => 'Lås opp full tilgang';

  @override
  String unlockFullPowerDescription(String appName) {
    return 'Lås opp hele kraften til $appName – den ultimate AI-redigeringsappen.';
  }

  @override
  String get upgradeNow => 'Oppgrader nå';

  @override
  String get userReviews => 'Brukeranmeldelser';

  @override
  String get week => 'Uke';

  @override
  String get weekly => 'Ukentlig';

  @override
  String weeklyPrice(String price) {
    return '$price/uke';
  }

  @override
  String weeksFreeTrial(int weeks) {
    String _temp0 = intl.Intl.pluralLogic(weeks, locale: localeName, other: '$weeks uker gratis prøveperiode', one: '1 uke gratis prøveperiode');
    return '$_temp0';
  }

  @override
  String get yearly => 'Årlig';

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
