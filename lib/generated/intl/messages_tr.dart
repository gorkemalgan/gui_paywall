// ignore: unused_import

// Package imports:
import 'package:intl/intl.dart' as intl;

// Project imports:
import 'messages.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class PaywallLocalizationsTr extends PaywallLocalizations {
  PaywallLocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String get adFree => 'Reklamsız';

  @override
  String get appOverview => 'Uygulama Genel Bakışı';

  @override
  String appPro(String appName) {
    return '$appName Pro';
  }

  @override
  String get bestOffer => 'EN İYİ TEKLİF';

  @override
  String get cancelAtAnyTime => 'İstediğiniz zaman iptal edin';

  @override
  String get chooseYourPlan => 'Choose Your Plan';

  @override
  String chargingInfoFreeTrial(String price, String freeTrialDay, String invoiceDuration) {
    return '$freeTrialDay gün sonra $price tahsil edilecektir $invoiceDuration kadar iptal edilene kadar.';
  }

  @override
  String chargingInfoLifeTime(String price) {
    return 'Ömür boyu erişim için yalnızca bir kez $price ödeyin. Ekstra ücret veya abonelik yok.';
  }

  @override
  String chargingInfoStandart(String price, String invoiceDuration) {
    return '$price için $invoiceDuration otomatik olarak yenilenecektir, iptal edilene kadar.';
  }

  @override
  String get continueBtn => 'Continue';

  @override
  String get enableFreeTrial => 'Enable Free Trial';

  @override
  String get exclusiveFeatures => 'Özel Özellikler';

  @override
  String get free => 'Ücretsiz';

  @override
  String freeTrialDaysFree(String numDays) {
    return '$numDays gün ÜCRETSİZ';
  }

  @override
  String get freeTrialDesc => 'Yaratıcılığınızı artırın ve premium üyelikle sınırsız erişim sağlayın';

  @override
  String freeTrialPriceInfoText(String freeTrialDays, String priceString, String periodInvoiceStr) {
    return '$freeTrialDays gün ücretsiz, ardından $priceString/$periodInvoiceStr';
  }

  @override
  String get freeTrialProperty1Big => 'Ücretsiz Deneme Sürenizi Kullanın';

  @override
  String get freeTrialProperty1Small => 'Tek tıklamayla kolayca etkinleştirin';

  @override
  String get freeTrialProperty2Big => 'Bugün: Tüm özelliklerin kilidini anında açın';

  @override
  String get freeTrialProperty2Small => 'Şimdi tüm özelliklere erişin';

  @override
  String get freeTrialProperty3Big => 'Deneme Sonu Hatırlatıcısı';

  @override
  String get freeTrialProperty3Small => 'Deneme süreniz bittiğinde size bir bildirim göndereceğiz';

  @override
  String get freeTrialProperty4Big => 'Sınırsız indirme keyfi';

  @override
  String get freeTrialProperty4Small => 'Kullanımı ve özelleştirmesi kolay';

  @override
  String get freeTrialReminder => 'Ücretsiz deneme süresi bitmeden bana hatırlat';

  @override
  String get getUnlimitedAccess => 'Tüm özelliklere sınırsız erişim elde edin!';

  @override
  String get hdQuality => 'HD Kalite';

  @override
  String get lifetime => 'Ömür boyu';

  @override
  String get monthly => 'Aylık';

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
  String get perWeek => ' / hafta';

  @override
  String percentOff(int percent) {
    return '%$percent İNDİRİM';
  }

  @override
  String get popular => 'Popüler';

  @override
  String get restorePurchases => 'Restore Purchases';

  @override
  String get save => 'Kaydet';

  @override
  String get seeAllOptions => 'Tüm Seçenekleri Gör';

  @override
  String get seeOtherOptions => 'Diğer seçenekleri gör';

  @override
  String get shortTerm => 'KISA DÖNEM';

  @override
  String get startFreeTrial => 'Ücretsiz Denemeyi Başlat';

  @override
  String thenPerWeek(String price) {
    return 'then \$$price/week';
  }

  @override
  String trialDays(int days) {
    return '$days günlük deneme';
  }

  @override
  String get unlimitedDownload => 'Sınırsız İndirme';

  @override
  String get unlockFullPower => 'Unlock Full Power';

  @override
  String get upgradeNow => 'Şimdi Yükselt';

  @override
  String get userReviews => 'Kullanıcı Yorumları';

  @override
  String get week => 'Hafta';

  @override
  String get weekly => 'Haftalık';

  @override
  String get yearly => 'Yıllık';

  @override
  String yearlyPrice(String price) {
    return '\$$price/year';
  }
}
