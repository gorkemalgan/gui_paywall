// ignore: unused_import

// Package imports:
import 'package:intl/intl.dart' as intl;

// Project imports:
import 'messages.dart';

// ignore_for_file: type=lint

/// The translations for Croatian (`hr`).
class PaywallLocalizationsHr extends PaywallLocalizations {
  PaywallLocalizationsHr([String locale = 'hr']) : super(locale);

  @override
  String get adFree => 'Bez oglasa';

  @override
  String get appOverview => 'Pregled aplikacije';

  @override
  String appPro(String appName) {
    return '$appName Pro';
  }

  @override
  String get bestOffer => 'NAJBOLJA PONUDA';

  @override
  String get cancelAtAnyTime => 'Otkažite u bilo kojem trenutku';

  @override
  String get chooseYourPlan => 'Choose Your Plan';

  @override
  String chargingInfoFreeTrial(String price, String freeTrialDay, String invoiceDuration) {
    return 'Naknadit će vam se $price nakon $freeTrialDay dana $invoiceDuration dok ne otkažete.';
  }

  @override
  String chargingInfoLifeTime(String price) {
    return 'Platite $price jednom za doživotni pristup. Nema dodatnih troškova ili pretplata.';
  }

  @override
  String chargingInfoStandart(String price, String invoiceDuration) {
    return 'Automatski se obnavlja za $price svakih $invoiceDuration dok se ne otkaže.';
  }

  @override
  String get continueBtn => 'Continue';

  @override
  String get enableFreeTrial => 'Enable Free Trial';

  @override
  String get exclusiveFeatures => 'Ekskluzivne značajke';

  @override
  String get free => 'Besplatno';

  @override
  String freeTrialDaysFree(String numDays) {
    return '$numDays dana BESPLATNO';
  }

  @override
  String get freeTrialDesc => 'Povećajte svoju kreativnost i ostvarite neograničen pristup s premium članstvom';

  @override
  String freeTrialPriceInfoText(String freeTrialDays, String priceString, String periodInvoiceStr) {
    return '$freeTrialDays dana besplatno, zatim $priceString/$periodInvoiceStr';
  }

  @override
  String get freeTrialProperty1Big => 'Iskoristite svoj besplatni probni period';

  @override
  String get freeTrialProperty1Small => 'Jednostavno aktivirajte jednim klikom';

  @override
  String get freeTrialProperty2Big => 'Danas: Odmah otključajte sve značajke';

  @override
  String get freeTrialProperty2Small => 'Pristupite svim značajkama sada';

  @override
  String get freeTrialProperty3Big => 'Podsjetnik na kraj probe';

  @override
  String get freeTrialProperty3Small => 'Poslat ćemo vam obavijest kada vaša proba završi';

  @override
  String get freeTrialProperty4Big => 'Uživajte u neograničenim preuzimanjima';

  @override
  String get freeTrialProperty4Small => 'Jednostavno za korištenje i prilagodbu';

  @override
  String get freeTrialReminder => 'Podsjeti me prije isteka besplatne probe';

  @override
  String get getUnlimitedAccess => 'Ostvarite neograničen pristup svim značajkama!';

  @override
  String get hdQuality => 'HD kvaliteta';

  @override
  String get lifetime => 'Doživotno';

  @override
  String get monthly => 'Mjesečno';

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
  String get perWeek => ' / tjedan';

  @override
  String percentOff(int percent) {
    return '$percent% POPUST';
  }

  @override
  String get popular => 'Popularno';

  @override
  String get restorePurchases => 'Restore Purchases';

  @override
  String get save => 'Spremi';

  @override
  String get seeAllOptions => 'Pogledaj sve opcije';

  @override
  String get seeOtherOptions => 'Pogledajte druge opcije';

  @override
  String get shortTerm => 'KRATKOROČNO';

  @override
  String get startFreeTrial => 'Započnite besplatno probno razdoblje';

  @override
  String thenPerWeek(String price) {
    return 'then \$$price/week';
  }

  @override
  String trialDays(int days) {
    return '$days dana probno';
  }

  @override
  String get unlimitedDownload => 'Neograničeno preuzimanje';

  @override
  String get unlockFullPower => 'Unlock Full Power';

  @override
  String get upgradeNow => 'Nadogradi sada';

  @override
  String get userReviews => 'Recenzije korisnika';

  @override
  String get week => 'Tjedan';

  @override
  String get weekly => 'Tjedno';

  @override
  String get yearly => 'Godišnje';

  @override
  String yearlyPrice(String price) {
    return '\$$price/year';
  }
}
