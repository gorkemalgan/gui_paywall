// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'messages.dart';

// ignore_for_file: type=lint

/// The translations for Hungarian (`hu`).
class PaywallLocalizationsHu extends PaywallLocalizations {
  PaywallLocalizationsHu([String locale = 'hu']) : super(locale);

  @override
  String get adFree => 'Reklámmentes';

  @override
  String get appOverview => 'Alkalmazás áttekintés';

  @override
  String appPro(String appName) {
    return '$appName Pro';
  }

  @override
  String get bestOffer => 'LEGJOBB AJÁNLAT';

  @override
  String get bestValue => 'LEGJOBB ÉRTÉK';

  @override
  String get cancelAtAnyTime => 'Bármikor lemondhatja';

  @override
  String chargingInfoFreeTrial(String price, String freeTrialDay, String invoiceDuration) {
    return '$freeTrialDay nap után számlázunk $price összeget $invoiceDuration-ig, amíg le nem mondod.';
  }

  @override
  String chargingInfoLifeTime(String price) {
    return 'Fizessen egyszer $price-t az élethosszig tartó hozzáférésért. Nincsenek további díjak vagy előfizetések.';
  }

  @override
  String chargingInfoStandart(String price, String invoiceDuration) {
    return '$price-ért automatikusan megújul $invoiceDuration-onként, amíg le nem mondod.';
  }

  @override
  String get chooseYourPlan => 'Válassza ki a csomagot';

  @override
  String get continueBtn => 'Folytatás';

  @override
  String daysFreeTrial(int days) {
    String _temp0 = intl.Intl.pluralLogic(days, locale: localeName, other: '$days napos ingyenes próba', one: '1 napos ingyenes próba');
    return '$_temp0';
  }

  @override
  String get enableFreeTrial => 'Ingyenes próba engedélyezése';

  @override
  String get exclusiveFeatures => 'Exkluzív funkciók';

  @override
  String get free => 'Ingyenes';

  @override
  String freeTrialDaysFree(String numDays) {
    return '$numDays nap INGYEN';
  }

  @override
  String get freeTrialDesc => 'Növelje kreativitását, és kapjon korlátlan hozzáférést prémium tagsággal';

  @override
  String freeTrialPriceInfoText(String freeTrialDays, String priceString, String periodInvoiceStr) {
    return '$freeTrialDays napig ingyenes, utána $priceString/$periodInvoiceStr';
  }

  @override
  String get freeTrialProperty1Big => 'Használja ki ingyenes próbaidőszakát';

  @override
  String get freeTrialProperty1Small => 'Egyszerűen aktiválhatja egy kattintással';

  @override
  String get freeTrialProperty2Big => 'Ma: Azonnal oldja fel az összes funkciót';

  @override
  String get freeTrialProperty2Small => 'Férjen hozzá az összes funkcióhoz most';

  @override
  String get freeTrialProperty3Big => 'Próbaidőszak végi emlékeztető';

  @override
  String get freeTrialProperty3Small => 'Értesítést küldünk, amikor a próbaidőszak lejár';

  @override
  String get freeTrialProperty4Big => 'Élvezze a korlátlan letöltéseket';

  @override
  String get freeTrialProperty4Small => 'Könnyen használható és testreszabható';

  @override
  String get freeTrialReminder => 'Emlékeztessen a próbaidőszak lejárta előtt';

  @override
  String get getUnlimitedAccess => 'Korlátlan hozzáférés minden funkcióhoz!';

  @override
  String get hdQuality => 'HD minőség';

  @override
  String get lifetime => 'Élethosszig';

  @override
  String get monthly => 'Havi';

  @override
  String monthlyPrice(String price) {
    return '$price/hónap';
  }

  @override
  String get notSureYet => 'Még nem biztos?';

  @override
  String get otherPlans => 'További csomagok';

  @override
  String get paymentAgreement =>
      'Az előfizetések automatikusan megújulnak, kivéve, ha az automatikus megújítás ki van kapcsolva legalább 24 órával a jelenlegi időszak vége előtt. Fiókját a tervének megfelelően számlázzuk ki a jelenlegi időszak vége előtti 24 órán belül a megújításért. A vásárlás után bármikor kezelheti vagy kikapcsolhatja az automatikus megújítást a fiók beállításaiban.';

  @override
  String get paymentAgreementFreeTrial =>
      'A fizetést a fiókjára terheljük a próbaidőszak végén. A próbaidőszak alatt bármikor lemondhatja, és nem kerül felszámításra díj.';

  @override
  String get paymentFailed => 'Fizetés sikertelen';

  @override
  String get paymentInfoPending =>
      'A fizetés folyamatban van, kérjük, várjon. Ha problémája van a tranzakcióval, kérjük, írjon a contact@everpixel.org címre.';

  @override
  String get paymentInfoTitle => 'Fizetési információ';

  @override
  String get perWeek => ' / hét';

  @override
  String percentOff(int percent) {
    return '$percent% KEDVEZMÉNY';
  }

  @override
  String get popular => 'Népszerű';

  @override
  String get privacyPolicy => 'Adatvédelmi irányelvek';

  @override
  String get restore => 'Visszaállítás';

  @override
  String get restorePurchases => 'Vásárlások visszaállítása';

  @override
  String get save => 'Mentés';

  @override
  String get seeAllOptions => 'Az összes opció megtekintése';

  @override
  String get seeOtherOptions => 'További lehetőségek';

  @override
  String get shortTerm => 'RÖVID TÁV';

  @override
  String get startFreeTrial => 'Ingyenes próba indítása';

  @override
  String get termsOfUse => 'Felhasználási feltételek';

  @override
  String thenPerWeek(String price) {
    return 'azután $price/hét';
  }

  @override
  String trialDays(int days) {
    return '$days napos próba';
  }

  @override
  String get unlimitedDownload => 'Korlátlan letöltés';

  @override
  String get unlockFullPower => 'Minden funkció feloldása';

  @override
  String unlockFullPowerDescription(String appName) {
    return 'Oldd fel a $appName teljes erejét – a végső AI szerkesztő alkalmazás.';
  }

  @override
  String get upgradeNow => 'Frissítés most';

  @override
  String get userReviews => 'Felhasználói vélemények';

  @override
  String get week => 'Hét';

  @override
  String get weekly => 'Heti';

  @override
  String weeklyPrice(String price) {
    return '$price/hét';
  }

  @override
  String weeksFreeTrial(int weeks) {
    String _temp0 = intl.Intl.pluralLogic(weeks, locale: localeName, other: '$weeks hetes ingyenes próba', one: '1 hetes ingyenes próba');
    return '$_temp0';
  }

  @override
  String get yearly => 'Éves';

  @override
  String yearlyPrice(String price) {
    return '$price/év';
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
