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
  String get bestValue => 'NAJLEPŠIA HODNOTA';

  @override
  String get cancelAtAnyTime => 'Zrušiť kedykoľvek';

  @override
  String chargingInfoFreeTrial(String price, String freeTrialDay, String invoiceDuration) {
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
  String get chooseYourPlan => 'Vyberte si plán';

  @override
  String get continueBtn => 'Pokračovať';

  @override
  String daysFreeTrial(int days) {
    String _temp0 = intl.Intl.pluralLogic(days, locale: localeName, other: '$days dní skúšobnej verzie zdarma', one: '1 deň skúšobnej verzie zdarma');
    return '$_temp0';
  }

  @override
  String get enableFreeTrial => 'Aktivovať bezplatnú skúšobnú verziu';

  @override
  String get exclusiveFeatures => 'Exkluzívne funkcie';

  @override
  String get free => 'Zadarmo';

  @override
  String freeTrialDaysFree(String numDays) {
    return '$numDays dní ZADARMO';
  }

  @override
  String get freeTrialDesc => 'Zvýšte svoju kreativitu a získajte neobmedzený prístup s prémiovým členstvom';

  @override
  String freeTrialPriceInfoText(String freeTrialDays, String priceString, String periodInvoiceStr) {
    return '$freeTrialDays dní zdarma, potom $priceString/$periodInvoiceStr';
  }

  @override
  String get freeTrialProperty1Big => 'Využite bezplatné skúšobné obdobie';

  @override
  String get freeTrialProperty1Small => 'Jednoducho aktivujte jedným kliknutím';

  @override
  String get freeTrialProperty2Big => 'Dnes: Okamžite odomknite všetky funkcie';

  @override
  String get freeTrialProperty2Small => 'Získajte prístup ku všetkým funkciám teraz';

  @override
  String get freeTrialProperty3Big => 'Pripomenutie konca skúšobného obdobia';

  @override
  String get freeTrialProperty3Small => 'Po skončení skúšobného obdobia vám pošleme upozornenie';

  @override
  String get freeTrialProperty4Big => 'Užite si neobmedzené sťahovanie';

  @override
  String get freeTrialProperty4Small => 'Jednoduché použitie a prispôsobenie';

  @override
  String get freeTrialReminder => 'Pripomeňte mi pred vypršaním platnosti bezplatnej skúšobnej verzie';

  @override
  String get getUnlimitedAccess => 'Získajte neobmedzený prístup ku všetkým funkciám!';

  @override
  String get hdQuality => 'HD kvalita';

  @override
  String get lifetime => 'Doživotné';

  @override
  String get monthly => 'Mesačné';

  @override
  String monthlyPrice(String price) {
    return '$price/mesiac';
  }

  @override
  String get notSureYet => 'Stále si nie ste istí?';

  @override
  String get otherPlans => 'Iné plány';

  @override
  String get paymentAgreement =>
      'Predplatné sa automaticky obnovia, pokiaľ automatické obnovenie nie je vypnuté najmenej 24 hodín pred koncom aktuálneho obdobia.Váš účet bude účtovaný podľa vášho plánu obnovy do 24 hodín pred koncom bežného obdobia.V nastaveniach účtu môžete spravovať alebo vypnúť automatické obnovenie kedykoľvek po zakúpení.';

  @override
  String get paymentAgreementFreeTrial =>
      'Platba bude účtovaná na váš účet na konci bezplatného skúšobného obdobia.Počas bezplatného skúšobného obdobia môžete kedykoľvek zrušiť a nebudú sa uplatňovať žiadne poplatky.';

  @override
  String get paymentFailed => 'Platba zlyhala';

  @override
  String get paymentInfoPending => 'Vaša platba je čakajúca, prosím, počkajte. Ak máte problémy, kontaktujte nás na contact@everpixel.org.';

  @override
  String get paymentInfoTitle => 'Platobné informácie';

  @override
  String get perWeek => ' / týždeň';

  @override
  String percentOff(int percent) {
    return 'ZĽAVA $percent%';
  }

  @override
  String get popular => 'Populárne';

  @override
  String get privacyPolicy => 'Zásady ochrany osobných údajov';

  @override
  String get restore => 'Obnoviť';

  @override
  String get restorePurchases => 'Obnoviť nákupy';

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
  String get termsOfUse => 'Podmienky používania';

  @override
  String thenPerWeek(String price) {
    return 'potom $price/týždeň';
  }

  @override
  String trialDays(int days) {
    return '$days-dňová skúšobná verzia';
  }

  @override
  String get unlimitedDownload => 'Neobmedzené sťahovanie';

  @override
  String get unlockFullPower => 'Odomknite všetky funkcie';

  @override
  String unlockFullPowerDescription(String appName) {
    return 'Odomkni plnú silu $appName – najlepší AI editor aplikácia.';
  }

  @override
  String get upgradeNow => 'Inovovať teraz';

  @override
  String get userReviews => 'Užívateľské recenzie';

  @override
  String get week => 'Týždeň';

  @override
  String get weekly => 'Týždenné';

  @override
  String weeklyPrice(String price) {
    return '$price/týždeň';
  }

  @override
  String weeksFreeTrial(int weeks) {
    String _temp0 = intl.Intl.pluralLogic(
      weeks,
      locale: localeName,
      other: '$weeks týždňov skúšobnej verzie zdarma',
      one: '1 týždeň skúšobnej verzie zdarma',
    );
    return '$_temp0';
  }

  @override
  String get yearly => 'Ročné';

  @override
  String yearlyPrice(String price) {
    return '$price/rok';
  }

  @override
  String trialUserCount(Object count) {
    return '$count people started a trial';
  }

  @override
  String trialUsedInLastHours(Object count) {
    return '$count people used trial in last 24 hours';
  }
}
