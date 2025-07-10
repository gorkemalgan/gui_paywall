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
  String get cancelAtAnyTime => 'Avbryt når som helst';

  @override
  String chargingInfoFreeTrial(
    String price,
    String freeTrialDay,
    String invoiceDuration,
  ) {
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
  String get exclusiveFeatures => 'Eksklusive funksjoner';

  @override
  String get free => 'Gratis';

  @override
  String freeTrialDaysFree(String numDays) {
    return '$numDays dager GRATIS';
  }

  @override
  String get freeTrialDesc =>
      'Forbedre kreativiteten din og få ubegrenset tilgang med et premium-medlemskap';

  @override
  String freeTrialPriceInfoText(
    String freeTrialDays,
    String priceString,
    String periodInvoiceStr,
  ) {
    return '$freeTrialDays dager gratis, deretter $priceString/$periodInvoiceStr';
  }

  @override
  String get freeTrialProperty1Big => 'Bruk din gratis prøveperiode';

  @override
  String get freeTrialProperty1Small => 'Aktiver enkelt med ett klikk';

  @override
  String get freeTrialProperty2Big =>
      'I dag: Lås opp alle funksjoner umiddelbart';

  @override
  String get freeTrialProperty2Small => 'Få tilgang til alle funksjoner nå';

  @override
  String get freeTrialProperty3Big => 'Påminnelse om slutten av prøveperioden';

  @override
  String get freeTrialProperty3Small =>
      'Vi sender deg et varsel når prøveperioden din avsluttes';

  @override
  String get freeTrialProperty4Big => 'Nyt ubegrensede nedlastinger';

  @override
  String get freeTrialProperty4Small => 'Enkel å bruke og tilpasse';

  @override
  String get freeTrialReminder =>
      'Minn meg på før den gratis prøveperioden utløper';

  @override
  String get getUnlimitedAccess => 'Få ubegrenset tilgang til alle funksjoner!';

  @override
  String get hdQuality => 'HD-kvalitet';

  @override
  String get lifetime => 'Livstid';

  @override
  String get monthly => 'Månedlig';

  @override
  String get perWeek => ' / uke';

  @override
  String percentOff(int percent) {
    return '$percent% RABATT';
  }

  @override
  String get popular => 'Populær';

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
  String trialDays(int days) {
    return '$days dagers prøve';
  }

  @override
  String get unlimitedDownload => 'Ubegrenset nedlasting';

  @override
  String get upgradeNow => 'Oppgrader nå';

  @override
  String get userReviews => 'Brukeranmeldelser';

  @override
  String get week => 'Uke';

  @override
  String get weekly => 'Ukentlig';

  @override
  String get yearly => 'Årlig';
}
