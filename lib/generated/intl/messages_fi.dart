// ignore: unused_import

// Package imports:
import 'package:intl/intl.dart' as intl;

// Project imports:
import 'messages.dart';

// ignore_for_file: type=lint

/// The translations for Finnish (`fi`).
class PaywallLocalizationsFi extends PaywallLocalizations {
  PaywallLocalizationsFi([String locale = 'fi']) : super(locale);

  @override
  String get adFree => 'Ei mainoksia';

  @override
  String get appOverview => 'Sovelluksen Yleiskatsaus';

  @override
  String appPro(String appName) {
    return '$appName Pro';
  }

  @override
  String get bestOffer => 'PARAS TARJOUS';

  @override
  String get cancelAtAnyTime => 'Peruuta milloin tahansa';

  @override
  String get chooseYourPlan => 'Choose Your Plan';

  @override
  String chargingInfoFreeTrial(String price, String freeTrialDay, String invoiceDuration) {
    return 'Sinulta veloitetaan $price $freeTrialDay päivän jälkeen $invoiceDuration, kunnes peruutat.';
  }

  @override
  String chargingInfoLifeTime(String price) {
    return 'Maksa kerran $price ja saat elinikäisen käyttöoikeuden. Ei lisämaksuja tai tilauksia.';
  }

  @override
  String chargingInfoStandart(String price, String invoiceDuration) {
    return 'Uusitaan automaattisesti $price $invoiceDuration välein, kunnes peruutetaan.';
  }

  @override
  String get continueBtn => 'Continue';

  @override
  String get enableFreeTrial => 'Enable Free Trial';

  @override
  String get exclusiveFeatures => 'Eksklusiiviset Ominaisuudet';

  @override
  String get free => 'Ilmainen';

  @override
  String freeTrialDaysFree(String numDays) {
    return '$numDays päivää ILMAISEKSI';
  }

  @override
  String get freeTrialDesc => 'Lisää luovuuttasi ja saa rajoittamaton pääsy premium-jäsenyydellä';

  @override
  String freeTrialPriceInfoText(String freeTrialDays, String priceString, String periodInvoiceStr) {
    return 'Ilmaiset $freeTrialDays päivää, sitten $priceString/$periodInvoiceStr';
  }

  @override
  String get freeTrialProperty1Big => 'Käytä Ilmaista Kokeilujaksoasi';

  @override
  String get freeTrialProperty1Small => 'Aktivoi helposti yhdellä napsautuksella';

  @override
  String get freeTrialProperty2Big => 'Tänään: Avaa kaikki ominaisuudet heti';

  @override
  String get freeTrialProperty2Small => 'Pääsy kaikkiin ominaisuuksiin nyt';

  @override
  String get freeTrialProperty3Big => 'Muistutus kokeilun päättymisestä';

  @override
  String get freeTrialProperty3Small => 'Lähetämme sinulle ilmoituksen, kun kokeilusi päättyy';

  @override
  String get freeTrialProperty4Big => 'Nauti rajoittamattomista latauksista';

  @override
  String get freeTrialProperty4Small => 'Helppo käyttää ja mukauttaa';

  @override
  String get freeTrialReminder => 'Muistuta minua ennen ilmaisen kokeilun päättymistä';

  @override
  String get getUnlimitedAccess => 'Saat rajoittamattoman pääsyn kaikkiin ominaisuuksiin!';

  @override
  String get hdQuality => 'HD Laatu';

  @override
  String get lifetime => 'Elinikäinen';

  @override
  String get monthly => 'Kuukausittain';

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
  String get perWeek => ' / viikko';

  @override
  String percentOff(int percent) {
    return '$percent% ALENNUS';
  }

  @override
  String get popular => 'Suosittu';

  @override
  String get restorePurchases => 'Restore Purchases';

  @override
  String get save => 'Tallenna';

  @override
  String get seeAllOptions => 'Näytä kaikki vaihtoehdot';

  @override
  String get seeOtherOptions => 'Katso muita vaihtoehtoja';

  @override
  String get shortTerm => 'LYHYT AIKA';

  @override
  String get startFreeTrial => 'Aloita ilmainen kokeilu';

  @override
  String thenPerWeek(String price) {
    return 'then \$$price/week';
  }

  @override
  String trialDays(int days) {
    return '$days päivän kokeilu';
  }

  @override
  String get unlimitedDownload => 'Rajoittamattomat lataukset';

  @override
  String get unlockFullPower => 'Unlock Full Power';

  @override
  String get upgradeNow => 'Päivitä nyt';

  @override
  String get userReviews => 'Käyttäjäarvostelut';

  @override
  String get week => 'Viikko';

  @override
  String get weekly => 'Viikoittain';

  @override
  String get yearly => 'Vuosittain';

  @override
  String yearlyPrice(String price) {
    return '\$$price/year';
  }
}
