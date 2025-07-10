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
  String get cancelAtAnyTime => 'Anulați în orice moment';

  @override
  String chargingInfoFreeTrial(
    String price,
    String freeTrialDay,
    String invoiceDuration,
  ) {
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
  String get exclusiveFeatures => 'Caracteristici exclusive';

  @override
  String get free => 'Gratuit';

  @override
  String freeTrialDaysFree(String numDays) {
    return '$numDays zile GRATUIT';
  }

  @override
  String get freeTrialDesc =>
      'Îmbunătățiți-vă creativitatea și obțineți acces nelimitat cu un abonament premium';

  @override
  String freeTrialPriceInfoText(
    String freeTrialDays,
    String priceString,
    String periodInvoiceStr,
  ) {
    return '$freeTrialDays zile gratuite, apoi $priceString/$periodInvoiceStr';
  }

  @override
  String get freeTrialProperty1Big => 'Utilizați perioada de probă gratuită';

  @override
  String get freeTrialProperty1Small => 'Activați ușor cu un singur clic';

  @override
  String get freeTrialProperty2Big =>
      'Astăzi: deblochează instantaneu toate funcțiile';

  @override
  String get freeTrialProperty2Small => 'Accesați toate funcțiile acum';

  @override
  String get freeTrialProperty3Big => 'Memento la sfârșitul procesului';

  @override
  String get freeTrialProperty3Small =>
      'Vă vom trimite o notificare când se termină perioada de încercare';

  @override
  String get freeTrialProperty4Big => 'Bucurați-vă de descărcări nelimitate';

  @override
  String get freeTrialProperty4Small => 'Ușor de utilizat și de personalizat';

  @override
  String get freeTrialReminder =>
      'Amintește-mi înainte ca perioada de încercare gratuită să expire';

  @override
  String get getUnlimitedAccess => 'Obține acces nelimitat la toate funcțiile!';

  @override
  String get hdQuality => 'Calitate HD';

  @override
  String get lifetime => 'Pe viață';

  @override
  String get monthly => 'Lunar';

  @override
  String get perWeek => ' / săptămână';

  @override
  String percentOff(int percent) {
    return '$percent% REDUCERE';
  }

  @override
  String get popular => 'Popular';

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
  String trialDays(int days) {
    return 'Perioadă de probă $days zile';
  }

  @override
  String get unlimitedDownload => 'Descărcare nelimitată';

  @override
  String get upgradeNow => 'Upgrade acum';

  @override
  String get userReviews => 'Recenzii utilizatori';

  @override
  String get week => 'Săptămână';

  @override
  String get weekly => 'Săptămânal';

  @override
  String get yearly => 'Anual';
}
