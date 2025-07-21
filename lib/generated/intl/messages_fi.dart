// ignore: unused_import
import 'package:intl/intl.dart' as intl;
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
  String get bestValue => 'PARAS ARVO';

  @override
  String get cancelAtAnyTime => 'Peruuta milloin tahansa';

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
  String get chooseYourPlan => 'Valitse suunnitelmasi';

  @override
  String get continueBtn => 'Jatka';

  @override
  String daysFreeTrial(int days) {
    String _temp0 = intl.Intl.pluralLogic(days, locale: localeName, other: '$days päivän ilmainen kokeilu', one: '1 päivän ilmainen kokeilu');
    return '$_temp0';
  }

  @override
  String get enableFreeTrial => 'Ota ilmainen kokeilu käyttöön';

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
  String monthlyPrice(String price) {
    return '$price/kk';
  }

  @override
  String get notSureYet => 'Etkö ole vielä varma?';

  @override
  String get otherPlans => 'Muut suunnitelmat';

  @override
  String get paymentAgreement =>
      'Tilaukset uusiutuvat automaattisesti, ellei automaattista uusimista poisteta käytöstä vähintään 24 tuntia ennen nykyisen jakson päättymistä. Tililtäsi veloitetaan suunnitelmasi mukaisesti uusimisesta 24 tunnin sisällä ennen nykyisen jakson päättymistä. Voit hallita tai poistaa automaattisen uusimisen käytöstä tilisi asetuksissa milloin tahansa oston jälkeen.';

  @override
  String get paymentAgreementFreeTrial =>
      'Maksu veloitetaan tililtäsi ilmaisen kokeilujakson päättyessä. Voit peruuttaa milloin tahansa ilmaisen kokeilujakson aikana, eikä maksuja peritä.';

  @override
  String get paymentFailed => 'Maksu epäonnistui';

  @override
  String get paymentInfoPending => 'Maksusi on vireillä, odota hetki. Jos kohtaat ongelmia, ota yhteyttä osoitteeseen contact@everpixel.org.';

  @override
  String get paymentInfoTitle => 'Maksutiedot';

  @override
  String get perWeek => ' / viikko';

  @override
  String percentOff(int percent) {
    return '$percent% ALENNUS';
  }

  @override
  String get popular => 'Suosittu';

  @override
  String get privacyPolicy => 'Tietosuojakäytäntö';

  @override
  String get restore => 'Palauta';

  @override
  String get restorePurchases => 'Palauta ostokset';

  @override
  String peopleUsed7DayTrial(String count) {
    return '$count people have used the 7-day Trial in the last 24 hours!';
  }

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
  String get termsOfUse => 'Käyttöehdot';

  @override
  String thenPerWeek(String price) {
    return 'sen jälkeen $price/viikko';
  }

  @override
  String trialDays(int days) {
    return '$days päivän kokeilu';
  }

  @override
  String get unlimitedDownload => 'Rajoittamattomat lataukset';

  @override
  String get unlockFullPower => 'Avaa kaikki ominaisuudet';

  @override
  String unlockFullPowerDescription(String appName) {
    return 'Avaa $appName:n koko voima – paras tekoälyeditorisovellus.';
  }

  @override
  String get upgradeNow => 'Päivitä nyt';

  @override
  String get userReviews => 'Käyttäjäarvostelut';

  @override
  String get week => 'Viikko';

  @override
  String get weekly => 'Viikoittain';

  @override
  String weeklyPrice(String price) {
    return '$price/viikko';
  }

  @override
  String weeksFreeTrial(int weeks) {
    String _temp0 = intl.Intl.pluralLogic(weeks, locale: localeName, other: '$weeks viikon ilmainen kokeilu', one: '1 viikon ilmainen kokeilu');
    return '$_temp0';
  }

  @override
  String get yearly => 'Vuosittain';

  @override
  String yearlyPrice(String price) {
    return '$price/vuosi';
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
