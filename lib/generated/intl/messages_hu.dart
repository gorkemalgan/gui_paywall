// ignore: unused_import

// Package imports:
import 'package:intl/intl.dart' as intl;

// Project imports:
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
  String get cancelAtAnyTime => 'Bármikor lemondhatja';

  @override
  String get chooseYourPlan => 'Choose Your Plan';

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
  String get continueBtn => 'Continue';

  @override
  String get enableFreeTrial => 'Enable Free Trial';

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
  String get notSureYet => 'Not Sure Yet?';

  @override
  String weekFreeTrial(int weeks) {
    String _temp0 = intl.Intl.pluralLogic(weeks, locale: localeName, other: '$weeks weeks free trial', one: '1 week free trial');
    return '$_temp0';
  }

  @override
  String get otherPlans => 'Other plans';

  @override
  String get perWeek => ' / hét';

  @override
  String percentOff(int percent) {
    return '$percent% KEDVEZMÉNY';
  }

  @override
  String get popular => 'Népszerű';

  @override
  String get restorePurchases => 'Restore Purchases';

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
  String thenPerWeek(String price) {
    return 'then \$$price/week';
  }

  @override
  String trialDays(int days) {
    return '$days napos próba';
  }

  @override
  String get unlimitedDownload => 'Korlátlan letöltés';

  @override
  String get unlockFullPower => 'Unlock Full Power';

  @override
  String get upgradeNow => 'Frissítés most';

  @override
  String get userReviews => 'Felhasználói vélemények';

  @override
  String get week => 'Hét';

  @override
  String get weekly => 'Heti';

  @override
  String get yearly => 'Éves';

  @override
  String yearlyPrice(String price) {
    return '\$$price/year';
  }
}
