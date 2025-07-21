// ignore: unused_import
import 'package:intl/intl.dart' as intl;
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
  String get bestValue => 'NAJBOLJA VRIJEDNOST';

  @override
  String get cancelAtAnyTime => 'Otkažite u bilo kojem trenutku';

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
  String get chooseYourPlan => 'Odaberite svoj plan';

  @override
  String get continueBtn => 'Nastavi';

  @override
  String daysFreeTrial(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days dana besplatne probne verzije',
      one: '1 dan besplatne probne verzije',
    );
    return '$_temp0';
  }

  @override
  String get enableFreeTrial => 'Omogući besplatno probno razdoblje';

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
  String monthlyPrice(String price) {
    return '$price/mj';
  }

  @override
  String get notSureYet => 'Niste sigurni?';

  @override
  String get otherPlans => 'Ostali planovi';

  @override
  String get paymentAgreement =>
      'Pretplate će se automatski obnavljati osim ako automatska obnova nije isključena najmanje 24 sata prije kraja trenutnog razdoblja. Vaš račun će biti naplaćen u skladu s vašim planom za obnovu unutar 24 sata prije kraja trenutnog razdoblja. Možete upravljati ili isključiti automatsku obnovu u postavkama računa u bilo kojem trenutku nakon kupnje.';

  @override
  String get paymentAgreementFreeTrial =>
      'Plaćanje će biti naplaćeno s vašeg računa na kraju besplatnog probnog razdoblja. Možete otkazati u bilo kojem trenutku tijekom besplatnog probnog razdoblja i neće se naplaćivati nikakve naknade.';

  @override
  String get paymentFailed => 'Plaćanje nije uspjelo';

  @override
  String get paymentInfoPending => 'Vaša uplata je na čekanju, molimo pričekajte. Ako imate problema, obratite nam se na contact@everpixel.org.';

  @override
  String get paymentInfoTitle => 'Podaci o plaćanju';

  @override
  String get perWeek => ' / tjedan';

  @override
  String percentOff(int percent) {
    return '$percent% POPUST';
  }

  @override
  String get popular => 'Popularno';

  @override
  String get privacyPolicy => 'Pravila privatnosti';

  @override
  String get restore => 'Obnovi';

  @override
  String get restorePurchases => 'Vrati kupnje';

  @override
  String peopleUsed7DayTrial(String count) {
    return '$count people have used the 7-day Trial in the last 24 hours!';
  }

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
  String get termsOfUse => 'Uvjeti korištenja';

  @override
  String thenPerWeek(String price) {
    return 'zatim $price/tjedan';
  }

  @override
  String trialDays(int days) {
    return '$days dana probno';
  }

  @override
  String get unlimitedDownload => 'Neograničeno preuzimanje';

  @override
  String get unlockFullPower => 'Otključaj sve funkcije';

  @override
  String unlockFullPowerDescription(String appName) {
    return 'Otključaj puni potencijal $appName – ultimativna AI aplikacija za uređivanje.';
  }

  @override
  String get upgradeNow => 'Nadogradi sada';

  @override
  String get userReviews => 'Recenzije korisnika';

  @override
  String get week => 'Tjedan';

  @override
  String get weekly => 'Tjedno';

  @override
  String weeklyPrice(String price) {
    return '$price/tjedan';
  }

  @override
  String weeksFreeTrial(int weeks) {
    String _temp0 = intl.Intl.pluralLogic(
      weeks,
      locale: localeName,
      other: '$weeks tjedana besplatne probne verzije',
      one: '1 tjedan besplatne probne verzije',
    );
    return '$_temp0';
  }

  @override
  String get yearly => 'Godišnje';

  @override
  String yearlyPrice(String price) {
    return '$price/godina';
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
