// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'messages.dart';

// ignore_for_file: type=lint

/// The translations for Slovak (`sk`).
class PaywallLocalizationsSk extends PaywallLocalizations {
  PaywallLocalizationsSk([String locale = 'sk']) : super(locale);

  @override
  String get adFree => 'Bez reklamy';

  @override
  String get appOverview => 'Prehľad aplikácie';

  @override
  String appPro(String appName) {
    return '$appName Pro';
  }

  @override
  String get bestOffer => 'NAJLEPŠIA PONUKA';

  @override
  String get cancelAtAnyTime => 'Zrušiť kedykoľvek';

  @override
  String chargingInfoFreeTrial(
    String price,
    String freeTrialDay,
    String invoiceDuration,
  ) {
    return 'Bude vám účtované $price po $freeTrialDay dňoch $invoiceDuration až do zrušenia.';
  }

  @override
  String chargingInfoLifeTime(String price) {
    return 'Zaplaťte $price raz a získajte doživotný prístup. Žiadne ďalšie poplatky ani predplatné.';
  }

  @override
  String chargingInfoStandart(String price, String invoiceDuration) {
    return 'Automaticky sa obnovuje za $price každé $invoiceDuration až do zrušenia.';
  }

  @override
  String get exclusiveFeatures => 'Exkluzívne funkcie';

  @override
  String get free => 'Zadarmo';

  @override
  String freeTrialDaysFree(String numDays) {
    return '$numDays dní ZADARMO';
  }

  @override
  String get freeTrialDesc =>
      'Zvýšte svoju kreativitu a získajte neobmedzený prístup s prémiovým členstvom';

  @override
  String freeTrialPriceInfoText(
    String freeTrialDays,
    String priceString,
    String periodInvoiceStr,
  ) {
    return '$freeTrialDays dní zdarma, potom $priceString/$periodInvoiceStr';
  }

  @override
  String get freeTrialProperty1Big => 'Využite bezplatné skúšobné obdobie';

  @override
  String get freeTrialProperty1Small => 'Jednoducho aktivujte jedným kliknutím';

  @override
  String get freeTrialProperty2Big => 'Dnes: Okamžite odomknite všetky funkcie';

  @override
  String get freeTrialProperty2Small =>
      'Získajte prístup ku všetkým funkciám teraz';

  @override
  String get freeTrialProperty3Big => 'Pripomenutie konca skúšobného obdobia';

  @override
  String get freeTrialProperty3Small =>
      'Po skončení skúšobného obdobia vám pošleme upozornenie';

  @override
  String get freeTrialProperty4Big => 'Užite si neobmedzené sťahovanie';

  @override
  String get freeTrialProperty4Small => 'Jednoduché použitie a prispôsobenie';

  @override
  String get freeTrialReminder =>
      'Pripomeňte mi pred vypršaním platnosti bezplatnej skúšobnej verzie';

  @override
  String get getUnlimitedAccess =>
      'Získajte neobmedzený prístup ku všetkým funkciám!';

  @override
  String get hdQuality => 'HD kvalita';

  @override
  String get lifetime => 'Doživotné';

  @override
  String get monthly => 'Mesačné';

  @override
  String get perWeek => ' / týždeň';

  @override
  String percentOff(int percent) {
    return 'ZĽAVA $percent%';
  }

  @override
  String get popular => 'Populárne';

  @override
  String get save => 'Uložiť';

  @override
  String get seeAllOptions => 'Pozri všetky možnosti';

  @override
  String get seeOtherOptions => 'Zobraziť ďalšie možnosti';

  @override
  String get shortTerm => 'KRÁTKODOBÝ';

  @override
  String get startFreeTrial => 'Začnite bezplatnú skúšobnú verziu';

  @override
  String trialDays(int days) {
    return '$days-dňová skúšobná verzia';
  }

  @override
  String get unlimitedDownload => 'Neobmedzené sťahovanie';

  @override
  String get upgradeNow => 'Inovovať teraz';

  @override
  String get userReviews => 'Užívateľské recenzie';

  @override
  String get week => 'Týždeň';

  @override
  String get weekly => 'Týždenné';

  @override
  String get yearly => 'Ročné';
}
