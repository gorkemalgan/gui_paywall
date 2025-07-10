// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'messages.dart';

// ignore_for_file: type=lint

/// The translations for Danish (`da`).
class PaywallLocalizationsDa extends PaywallLocalizations {
  PaywallLocalizationsDa([String locale = 'da']) : super(locale);

  @override
  String get adFree => 'Ingen reklamer';

  @override
  String get appOverview => 'App Oversigt';

  @override
  String appPro(String appName) {
    return '$appName Pro';
  }

  @override
  String get bestOffer => 'BEDSTE TILBUD';

  @override
  String get cancelAtAnyTime => 'Annuller når som helst';

  @override
  String chargingInfoFreeTrial(
    String price,
    String freeTrialDay,
    String invoiceDuration,
  ) {
    return 'Du bliver opkrævet $price efter $freeTrialDay dage $invoiceDuration, indtil du aflyser.';
  }

  @override
  String chargingInfoLifeTime(String price) {
    return 'Betal $price én gang for livstidsadgang. Ingen ekstra gebyrer eller abonnementer.';
  }

  @override
  String chargingInfoStandart(String price, String invoiceDuration) {
    return 'Fornys automatisk for $price $invoiceDuration, indtil du aflyser.';
  }

  @override
  String get exclusiveFeatures => 'Eksklusive funktioner';

  @override
  String get free => 'Gratis';

  @override
  String freeTrialDaysFree(String numDays) {
    return '$numDays dage GRATIS';
  }

  @override
  String get freeTrialDesc =>
      'Forøg din kreativitet og få ubegrænset adgang med et premium-medlemskab';

  @override
  String freeTrialPriceInfoText(
    String freeTrialDays,
    String priceString,
    String periodInvoiceStr,
  ) {
    return 'Gratis $freeTrialDays dage, derefter $priceString/$periodInvoiceStr';
  }

  @override
  String get freeTrialProperty1Big => 'Brug din gratis prøveperiode';

  @override
  String get freeTrialProperty1Small => 'Aktivér nemt med ét klik';

  @override
  String get freeTrialProperty2Big =>
      'I dag: Lås straks op for alle funktioner';

  @override
  String get freeTrialProperty2Small => 'Få adgang til alle funktioner nu';

  @override
  String get freeTrialProperty3Big => 'Påmindelse om prøveperiode afslutning';

  @override
  String get freeTrialProperty3Small =>
      'Vi sender dig en meddelelse, når din prøveperiode slutter';

  @override
  String get freeTrialProperty4Big => 'Nyd ubegrænsede downloads';

  @override
  String get freeTrialProperty4Small => 'Nem at bruge og tilpasse';

  @override
  String get freeTrialReminder =>
      'Mind mig om det, før den gratis prøveperiode udløber';

  @override
  String get getUnlimitedAccess => 'Få ubegrænset adgang til alle funktioner!';

  @override
  String get hdQuality => 'HD Kvalitet';

  @override
  String get lifetime => 'Livstid';

  @override
  String get monthly => 'Månedlig';

  @override
  String get perWeek => ' / uge';

  @override
  String percentOff(int percent) {
    return '$percent% RABAT';
  }

  @override
  String get popular => 'Populær';

  @override
  String get save => 'Gem';

  @override
  String get seeAllOptions => 'Se alle muligheder';

  @override
  String get seeOtherOptions => 'Se andre muligheder';

  @override
  String get shortTerm => 'KORT SIGT';

  @override
  String get startFreeTrial => 'Start gratis prøveperiode';

  @override
  String trialDays(int days) {
    return '$days dages prøve';
  }

  @override
  String get unlimitedDownload => 'Ubegrænset download';

  @override
  String get upgradeNow => 'Opgrader nu';

  @override
  String get userReviews => 'Brugeranmeldelser';

  @override
  String get week => 'Uge';

  @override
  String get weekly => 'Ugentlig';

  @override
  String get yearly => 'Årlig';
}
