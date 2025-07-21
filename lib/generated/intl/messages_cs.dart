// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'messages.dart';

// ignore_for_file: type=lint

/// The translations for Czech (`cs`).
class PaywallLocalizationsCs extends PaywallLocalizations {
  PaywallLocalizationsCs([String locale = 'cs']) : super(locale);

  @override
  String get adFree => 'Bez reklam';

  @override
  String get appOverview => 'Přehled aplikace';

  @override
  String appPro(String appName) {
    return '$appName Pro';
  }

  @override
  String get bestOffer => 'NEJLEPŠÍ NABÍDKA';

  @override
  String get bestValue => 'NEJLEPŠÍ HODNOTA';

  @override
  String get cancelAtAnyTime => 'Kdykoli můžete zrušit';

  @override
  String chargingInfoFreeTrial(String price, String freeTrialDay, String invoiceDuration) {
    return 'Bude vám účtováno $price po $freeTrialDay dnech $invoiceDuration než zrušíte.';
  }

  @override
  String chargingInfoLifeTime(String price) {
    return 'Zaplaťte $price jednou pro doživotní přístup. Žádné další poplatky ani předplatné.';
  }

  @override
  String chargingInfoStandart(String price, String invoiceDuration) {
    return 'Automaticky obnovováno za $price každé $invoiceDuration dokud nezrušíte.';
  }

  @override
  String get chooseYourPlan => 'Vyberte si plán';

  @override
  String get continueBtn => 'Pokračovat';

  @override
  String daysFreeTrial(int days) {
    String _temp0 = intl.Intl.pluralLogic(days, locale: localeName, other: '$days dní zkušební verze zdarma', one: '1den zkušební verze zdarma');
    return '$_temp0';
  }

  @override
  String get enableFreeTrial => 'Povolit bezplatnou zkušební verzi';

  @override
  String get exclusiveFeatures => 'Exkluzivní funkce';

  @override
  String get free => 'Zdarma';

  @override
  String freeTrialDaysFree(String numDays) {
    return '$numDays dní ZDARMA';
  }

  @override
  String get freeTrialDesc => 'Zvyšte svou kreativitu a získejte neomezený přístup s prémiovým členstvím';

  @override
  String freeTrialPriceInfoText(String freeTrialDays, String priceString, String periodInvoiceStr) {
    return 'Zdarma $freeTrialDays dní, poté $priceString/$periodInvoiceStr';
  }

  @override
  String get freeTrialProperty1Big => 'Využijte své zkušební období zdarma';

  @override
  String get freeTrialProperty1Small => 'Snadno aktivujte jedním kliknutím';

  @override
  String get freeTrialProperty2Big => 'Dnes: Okamžitě odemkněte všechny funkce';

  @override
  String get freeTrialProperty2Small => 'Získejte přístup ke všem funkcím nyní';

  @override
  String get freeTrialProperty3Big => 'Připomenutí konce zkušebního období';

  @override
  String get freeTrialProperty3Small => 'Pošleme vám upozornění, až vaše zkušební období skončí';

  @override
  String get freeTrialProperty4Big => 'Užijte si neomezené stahování';

  @override
  String get freeTrialProperty4Small => 'Snadné použití a přizpůsobení';

  @override
  String get freeTrialReminder => 'Připomeňte mi před vypršením zkušební doby zdarma';

  @override
  String get getUnlimitedAccess => 'Získejte neomezený přístup ke všem funkcím!';

  @override
  String get hdQuality => 'HD kvalita';

  @override
  String get lifetime => 'Doživotní';

  @override
  String get monthly => 'Měsíčně';

  @override
  String monthlyPrice(String price) {
    return '$price/měsíc';
  }

  @override
  String get notSureYet => 'Nejste si jisti?';

  @override
  String get otherPlans => 'Další plány';

  @override
  String get paymentAgreement =>
      'Předplatné se automaticky obnoví, pokud automatické obnovení nevypnete alespoň 24 hodin před koncem aktuálního období. Váš účet bude za obnovení účtován podle vašeho plánu do 24 hodin před koncem aktuálního období. Automatické obnovení můžete kdykoli po nákupu spravovat nebo vypnout v nastavení účtu.';

  @override
  String get paymentAgreementFreeTrial =>
      'Platba bude účtována na váš účet na konci bezplatného zkušebního období. Během bezplatného zkušebního období můžete kdykoli zrušit a nebudou účtovány žádné poplatky.';

  @override
  String get paymentFailed => 'Platba selhala';

  @override
  String get paymentInfoPending => 'Vaše platba je v procesu, prosím, vyčkejte. Pokud narazíte na problém, kontaktujte nás na contact@everpixel.org.';

  @override
  String get paymentInfoTitle => 'Platební informace';

  @override
  String get perWeek => ' / týden';

  @override
  String percentOff(int percent) {
    return 'SLEVA $percent%';
  }

  @override
  String get popular => 'Populární';

  @override
  String get privacyPolicy => 'Zásady ochrany osobních údajů';

  @override
  String get restore => 'Obnovit';

  @override
  String get restorePurchases => 'Obnovit nákupy';

  @override
  String get save => 'Uložit';

  @override
  String get seeAllOptions => 'Zobrazit všechny možnosti';

  @override
  String get seeOtherOptions => 'Zobrazit další možnosti';

  @override
  String get shortTerm => 'KRÁTKODOBÉ';

  @override
  String get startFreeTrial => 'Začít bezplatnou zkušební verzi';

  @override
  String get termsOfUse => 'Podmínky použití';

  @override
  String thenPerWeek(String price) {
    return 'poté $price/týden';
  }

  @override
  String trialDays(int days) {
    return '$days denní zkušební verze';
  }

  @override
  String get unlimitedDownload => 'Neomezené stahování';

  @override
  String get unlockFullPower => 'Odemkněte plný výkon';

  @override
  String unlockFullPowerDescription(String appName) {
    return 'Odemkněte plný potenciál aplikace $appName – nejlepší AI editoru.';
  }

  @override
  String get upgradeNow => 'Upgradovat nyní';

  @override
  String get userReviews => 'Recenze uživatelů';

  @override
  String get week => 'Týden';

  @override
  String get weekly => 'Týdně';

  @override
  String weeklyPrice(String price) {
    return '$price/týden';
  }

  @override
  String weeksFreeTrial(int weeks) {
    String _temp0 = intl.Intl.pluralLogic(
      weeks,
      locale: localeName,
      other: '$weeks týdnů zkušební verze zdarma',
      one: '1 týden zkušební verze zdarma',
    );
    return '$_temp0';
  }

  @override
  String get yearly => 'Ročně';

  @override
  String yearlyPrice(String price) {
    return '$price/rok';
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
