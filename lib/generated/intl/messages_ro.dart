// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'messages.dart';

// ignore_for_file: type=lint

/// The translations for Romanian Moldavian Moldovan (`ro`).
class PaywallLocalizationsRo extends PaywallLocalizations {
  PaywallLocalizationsRo([String locale = 'ro']) : super(locale);

  @override
  String get adFree => 'Fără reclame';

  @override
  String get appOverview => 'Prezentare generală a aplicației';

  @override
  String appPro(String appName) {
    return '$appName Pro';
  }

  @override
  String get bestOffer => 'Cea mai bună ofertă';

  @override
  String get bestValue => 'CEA MAI BUNĂ VALOARE';

  @override
  String get cancelAtAnyTime => 'Anulați în orice moment';

  @override
  String chargingInfoFreeTrial(String price, String freeTrialDay, String invoiceDuration) {
    return 'Vei plăti $price după $freeTrialDay zile $invoiceDuration până la anulare.';
  }

  @override
  String chargingInfoLifeTime(String price) {
    return 'Plătește $price o singură dată pentru acces pe viață. Fără costuri sau abonamente suplimentare.';
  }

  @override
  String chargingInfoStandart(String price, String invoiceDuration) {
    return 'Se reînnoiește automat pentru $price pe $invoiceDuration până la anulare.';
  }

  @override
  String get chooseYourPlan => 'Alegeți planul';

  @override
  String get continueBtn => 'Continuă';

  @override
  String daysFreeTrial(int days) {
    String _temp0 = intl.Intl.pluralLogic(days, locale: localeName, other: '$days zile de probă gratuită', one: '1 zi de probă gratuită');
    return '$_temp0';
  }

  @override
  String get enableFreeTrial => 'Activează perioada de probă gratuită';

  @override
  String get exclusiveFeatures => 'Caracteristici exclusive';

  @override
  String get free => 'Gratuit';

  @override
  String freeTrialDaysFree(String numDays) {
    return '$numDays zile GRATUIT';
  }

  @override
  String get freeTrialDesc => 'Îmbunătățiți-vă creativitatea și obțineți acces nelimitat cu un abonament premium';

  @override
  String freeTrialPriceInfoText(String freeTrialDays, String priceString, String periodInvoiceStr) {
    return '$freeTrialDays zile gratuite, apoi $priceString/$periodInvoiceStr';
  }

  @override
  String get freeTrialProperty1Big => 'Utilizați perioada de probă gratuită';

  @override
  String get freeTrialProperty1Small => 'Activați ușor cu un singur clic';

  @override
  String get freeTrialProperty2Big => 'Astăzi: deblochează instantaneu toate funcțiile';

  @override
  String get freeTrialProperty2Small => 'Accesați toate funcțiile acum';

  @override
  String get freeTrialProperty3Big => 'Memento la sfârșitul procesului';

  @override
  String get freeTrialProperty3Small => 'Vă vom trimite o notificare când se termină perioada de încercare';

  @override
  String get freeTrialProperty4Big => 'Bucurați-vă de descărcări nelimitate';

  @override
  String get freeTrialProperty4Small => 'Ușor de utilizat și de personalizat';

  @override
  String get freeTrialReminder => 'Amintește-mi înainte ca perioada de încercare gratuită să expire';

  @override
  String get getUnlimitedAccess => 'Obține acces nelimitat la toate funcțiile!';

  @override
  String get hdQuality => 'Calitate HD';

  @override
  String get lifetime => 'Pe viață';

  @override
  String get monthly => 'Lunar';

  @override
  String monthlyPrice(String price) {
    return '$price/lună';
  }

  @override
  String get notSureYet => 'Încă nu ești sigur?';

  @override
  String get otherPlans => 'Alte planuri';

  @override
  String get paymentAgreement =>
      'Abonamentele se vor reînnoi automat, cu excepția cazului în care reînnoirea automată este dezactivată cu cel puțin 24 de ore înainte de sfârșitul perioadei curente.Contul dvs. va fi perceput conform planului dvs. de reînnoire în termen de 24 de ore înainte de sfârșitul perioadei curente.Puteți gestiona sau dezactiva reînnoirea automată în setările contului dvs. în orice moment după cumpărare.';

  @override
  String get paymentAgreementFreeTrial =>
      'Plata va fi percepută în contul dvs. la sfârșitul perioadei de încercare gratuită.Puteți anula oricând în perioada de încercare gratuită și nu se vor aplica taxe.';

  @override
  String get paymentFailed => 'Plata a eșuat';

  @override
  String get paymentInfoPending =>
      'Plata ta este în așteptare, te rugăm să aștepți. Dacă întâmpini probleme, contactează-ne la contact@everpixel.org.';

  @override
  String get paymentInfoTitle => 'Informații de plată';

  @override
  String get perWeek => ' / săptămână';

  @override
  String percentOff(int percent) {
    return '$percent% REDUCERE';
  }

  @override
  String get popular => 'Popular';

  @override
  String get privacyPolicy => 'Politica de confidențialitate';

  @override
  String get restore => 'Restabili';

  @override
  String get restorePurchases => 'Restaurează achizițiile';

  @override
  String get save => 'Salvați';

  @override
  String get seeAllOptions => 'Consultați toate opțiunile';

  @override
  String get seeOtherOptions => 'Vezi alte opțiuni';

  @override
  String get shortTerm => 'PE TERMEN SCURT';

  @override
  String get startFreeTrial => 'Incepe o probă gratuită';

  @override
  String get termsOfUse => 'Termeni de utilizare';

  @override
  String thenPerWeek(String price) {
    return 'apoi $price/săptămână';
  }

  @override
  String trialDays(int days) {
    return 'Perioadă de probă $days zile';
  }

  @override
  String get unlimitedDownload => 'Descărcare nelimitată';

  @override
  String get unlockFullPower => 'Deblochează toate funcționalitățile';

  @override
  String unlockFullPowerDescription(String appName) {
    return 'Dezvăluie întreaga putere a $appName – aplicația supremă de editare cu AI.';
  }

  @override
  String get upgradeNow => 'Upgrade acum';

  @override
  String get userReviews => 'Recenzii utilizatori';

  @override
  String get week => 'Săptămână';

  @override
  String get weekly => 'Săptămânal';

  @override
  String weeklyPrice(String price) {
    return '$price/săptămână';
  }

  @override
  String weeksFreeTrial(int weeks) {
    String _temp0 = intl.Intl.pluralLogic(
      weeks,
      locale: localeName,
      other: '$weeks săptămâni de probă gratuită',
      one: '1 săptămână de probă gratuită',
    );
    return '$_temp0';
  }

  @override
  String get yearly => 'Anual';

  @override
  String yearlyPrice(String price) {
    return '$price/an';
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
