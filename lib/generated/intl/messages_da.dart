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
  String get bestValue => 'BEDSTE VÆRDI';

  @override
  String get cancelAtAnyTime => 'Annuller når som helst';

  @override
  String chargingInfoFreeTrial(String price, String freeTrialDay, String invoiceDuration) {
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
  String get chooseYourPlan => 'Vælg din plan';

  @override
  String get continueBtn => 'Fortsæt';

  @override
  String daysFreeTrial(int days) {
    String _temp0 = intl.Intl.pluralLogic(days, locale: localeName, other: '$days dages gratis prøveperiode', one: '1 dags gratis prøveperiode');
    return '$_temp0';
  }

  @override
  String get enableFreeTrial => 'Aktivér gratis prøveperiode';

  @override
  String get exclusiveFeatures => 'Eksklusive funktioner';

  @override
  String get free => 'Gratis';

  @override
  String freeTrialDaysFree(String numDays) {
    return '$numDays dage GRATIS';
  }

  @override
  String get freeTrialDesc => 'Forøg din kreativitet og få ubegrænset adgang med et premium-medlemskab';

  @override
  String freeTrialPriceInfoText(String freeTrialDays, String priceString, String periodInvoiceStr) {
    return 'Gratis $freeTrialDays dage, derefter $priceString/$periodInvoiceStr';
  }

  @override
  String get freeTrialProperty1Big => 'Brug din gratis prøveperiode';

  @override
  String get freeTrialProperty1Small => 'Aktivér nemt med ét klik';

  @override
  String get freeTrialProperty2Big => 'I dag: Lås straks op for alle funktioner';

  @override
  String get freeTrialProperty2Small => 'Få adgang til alle funktioner nu';

  @override
  String get freeTrialProperty3Big => 'Påmindelse om prøveperiode afslutning';

  @override
  String get freeTrialProperty3Small => 'Vi sender dig en meddelelse, når din prøveperiode slutter';

  @override
  String get freeTrialProperty4Big => 'Nyd ubegrænsede downloads';

  @override
  String get freeTrialProperty4Small => 'Nem at bruge og tilpasse';

  @override
  String get freeTrialReminder => 'Mind mig om det, før den gratis prøveperiode udløber';

  @override
  String get getUnlimitedAccess => 'Få ubegrænset adgang til alle funktioner!';

  @override
  String get hdQuality => 'HD Kvalitet';

  @override
  String get lifetime => 'Livstid';

  @override
  String get monthly => 'Månedlig';

  @override
  String monthlyPrice(String price) {
    return '$price/md';
  }

  @override
  String get notSureYet => 'Ikke sikker endnu?';

  @override
  String get otherPlans => 'Andre planer';

  @override
  String get paymentAgreement =>
      'Abonnementer fornyes automatisk, medmindre automatisk fornyelse slås fra mindst 24 timer før udløbet af den aktuelle periode. Din konto vil blive debiteret i henhold til din plan for fornyelse inden for 24 timer før udløbet af den aktuelle periode. Du kan administrere eller slå automatisk fornyelse fra i dine kontoindstillinger når som helst efter købet.';

  @override
  String get paymentAgreementFreeTrial =>
      'Betaling vil blive debiteret på din konto ved slutningen af den gratis prøveperiode. Du kan annullere når som helst under den gratis prøveperiode, og der vil ikke blive opkrævet noget.';

  @override
  String get paymentFailed => 'Betaling mislykkedes';

  @override
  String get paymentInfoPending =>
      'Din betaling er under behandling, vent venligst. Hvis du oplever problemer, kan du kontakte os på contact@everpixel.org.';

  @override
  String get paymentInfoTitle => 'Betalingsoplysninger';

  @override
  String get perWeek => ' / uge';

  @override
  String percentOff(int percent) {
    return '$percent% RABAT';
  }

  @override
  String get popular => 'Populær';

  @override
  String get privacyPolicy => 'Privatlivspolitik';

  @override
  String get restore => 'Gendan';

  @override
  String get restorePurchases => 'Gendan køb';

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
  String get termsOfUse => 'Brugsbetingelser';

  @override
  String thenPerWeek(String price) {
    return 'derefter $price/uge';
  }

  @override
  String trialDays(int days) {
    return '$days dages prøve';
  }

  @override
  String get unlimitedDownload => 'Ubegrænset download';

  @override
  String get unlockFullPower => 'Lås op for fuld funktionalitet';

  @override
  String unlockFullPowerDescription(String appName) {
    return 'Lås op for den fulde kraft af $appName – den ultimative AI-redigeringsapp.';
  }

  @override
  String get upgradeNow => 'Opgrader nu';

  @override
  String get userReviews => 'Brugeranmeldelser';

  @override
  String get week => 'Uge';

  @override
  String get weekly => 'Ugentlig';

  @override
  String weeklyPrice(String price) {
    return '$price/uge';
  }

  @override
  String weeksFreeTrial(int weeks) {
    String _temp0 = intl.Intl.pluralLogic(weeks, locale: localeName, other: '$weeks ugers gratis prøveperiode', one: '1 uges gratis prøveperiode');
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
}
