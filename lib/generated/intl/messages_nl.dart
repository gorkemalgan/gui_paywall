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
  String get bestValue => 'BESTE WAARDE';

  @override
  String get cancelAtAnyTime => 'Annuleer op elk gewenst moment';

  @override
  String chargingInfoFreeTrial(String price, String freeTrialDay, String invoiceDuration) {
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
  String get chooseYourPlan => 'Kies je abonnement';

  @override
  String get continueBtn => 'Doorgaan';

  @override
  String daysFreeTrial(int days) {
    String _temp0 = intl.Intl.pluralLogic(days, locale: localeName, other: '$days dagen gratis proefperiode', one: '1 dag gratis proefperiode');
    return '$_temp0';
  }

  @override
  String get enableFreeTrial => 'Gratis proefperiode starten';

  @override
  String get exclusiveFeatures => 'Exclusieve kenmerken';

  @override
  String get free => 'Gratis';

  @override
  String freeTrialDaysFree(String numDays) {
    return '$numDays dagen GRATIS';
  }

  @override
  String get freeTrialDesc => 'Verbeter uw creativiteit en krijg onbeperkte toegang met een premium lidmaatschap';

  @override
  String freeTrialPriceInfoText(String freeTrialDays, String priceString, String periodInvoiceStr) {
    return '$freeTrialDays dagen gratis, daarna $priceString/$periodInvoiceStr';
  }

  @override
  String get freeTrialProperty1Big => 'Gebruik uw gratis proefperiode';

  @override
  String get freeTrialProperty1Small => 'Activeer eenvoudig met één klik';

  @override
  String get freeTrialProperty2Big => 'Vandaag: ontgrendel direct alle functies';

  @override
  String get freeTrialProperty2Small => 'Krijg nu toegang tot alle functies';

  @override
  String get freeTrialProperty3Big => 'Herinnering einde proefperiode';

  @override
  String get freeTrialProperty3Small => 'We sturen u een melding wanneer uw proefperiode eindigt';

  @override
  String get freeTrialProperty4Big => 'Geniet van onbeperkte downloads';

  @override
  String get freeTrialProperty4Small => 'Gemakkelijk te gebruiken en aan te passen';

  @override
  String get freeTrialReminder => 'Herinner mij eraan voordat de gratis proefperiode afloopt';

  @override
  String get getUnlimitedAccess => 'Krijg onbeperkt toegang tot alle functies!';

  @override
  String get hdQuality => 'HD-kwaliteit';

  @override
  String get lifetime => 'Levenslang';

  @override
  String get monthly => 'Maandelijks';

  @override
  String monthlyPrice(String price) {
    return '$price/maand';
  }

  @override
  String get notSureYet => 'Nog niet zeker?';

  @override
  String get otherPlans => 'Andere abonnementen';

  @override
  String get paymentAgreement =>
      'Abonnementen worden automatisch verlengd, tenzij Auto-Renew ten minste 24 uur vóór het einde van de huidige periode wordt uitgeschakeld.Uw account wordt binnen 24 uur vóór het einde van de huidige periode in rekening gebracht volgens uw plan voor verlenging.U kunt op elk gewenst moment na aankoop automatisch vernieuwen of uitschakelen in uw accountinstellingen.';

  @override
  String get paymentAgreementFreeTrial =>
      'Betaling wordt aan het einde van de gratis proefperiode op uw account in rekening gebracht.U kunt op elk moment tijdens de gratis proefperiode annuleren en er worden geen kosten toegepast.';

  @override
  String get paymentFailed => 'Betaling mislukt';

  @override
  String get paymentInfoPending =>
      'Je betaling is in behandeling, wacht alstublieft. Als je problemen hebt, neem contact op via contact@everpixel.org.';

  @override
  String get paymentInfoTitle => 'Betaalinformatie';

  @override
  String get perWeek => ' / week';

  @override
  String percentOff(int percent) {
    return '$percent% KORTING';
  }

  @override
  String get popular => 'Populair';

  @override
  String get privacyPolicy => 'Privacybeleid';

  @override
  String get restore => 'Herstellen';

  @override
  String get restorePurchases => 'Aankopen herstellen';

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
  String get termsOfUse => 'Gebruiksvoorwaarden';

  @override
  String thenPerWeek(String price) {
    return 'daarna $price/week';
  }

  @override
  String trialDays(int days) {
    return '$days dagen proef';
  }

  @override
  String get unlimitedDownload => 'Onbeperkt downloaden';

  @override
  String get unlockFullPower => 'Ontgrendel alle functies';

  @override
  String unlockFullPowerDescription(String appName) {
    return 'Ontgrendel de volledige kracht van $appName – de ultieme AI-bewerkingsapp.';
  }

  @override
  String get upgradeNow => 'Nu upgraden';

  @override
  String get userReviews => 'Gebruikersrecensies';

  @override
  String get week => 'Week';

  @override
  String get weekly => 'Wekelijks';

  @override
  String weeklyPrice(String price) {
    return '$price/week';
  }

  @override
  String weeksFreeTrial(int weeks) {
    String _temp0 = intl.Intl.pluralLogic(weeks, locale: localeName, other: '$weeks weken gratis proefperiode', one: '1 week gratis proefperiode');
    return '$_temp0';
  }

  @override
  String get yearly => 'Jaarlijks';

  @override
  String yearlyPrice(String price) {
    return '$price/jaar';
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
