// ignore: unused_import
import 'package:intl/intl.dart' as intl;
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
  String get bestValue => 'EN İYİ TEKLİF';

  @override
  String get cancelAtAnyTime => 'İstediğiniz zaman iptal edin';

  @override
  String chargingInfoFreeTrial(String price, String freeTrialDay, String invoiceDuration) {
    return '$price/$invoiceDuration olarak faturalandırılır. $freeTrialDay gün sonra otomatik yenileme başlar. %100 memnun kalmazsanız iade talep edebilirsiniz.';
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
  String get chooseYourPlan => 'Planını Seç';

  @override
  String get continueBtn => 'Devam Et';

  @override
  String daysFreeTrial(int days) {
    String _temp0 = intl.Intl.pluralLogic(days, locale: localeName, other: '$days gün ücretsiz deneme', one: '1 gün ücretsiz deneme');
    return '$_temp0';
  }

  @override
  String get enableFreeTrial => 'Ücretsiz Deneme Etkinleştir';

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
  String monthlyPrice(String price) {
    return '$price/ay';
  }

  @override
  String get notSureYet => 'Henüz emin değil misiniz?';

  @override
  String get otherPlans => 'Diğer planlar';

  @override
  String get paymentAgreement =>
      'Abonelikler, mevcut dönemin bitiminden en az 24 saat önce otomatik yenileme kapatılmadığı sürece otomatik olarak yenilenir. Hesabınız, mevcut dönemin bitiminden önceki 24 saat içinde planınıza göre yenileme için ücretlendirilecektir. Satın alma işleminden sonra hesap ayarlarınızdan otomatik yenilemeyi istediğiniz zaman yönetebilir veya kapatabilirsiniz.';

  @override
  String get paymentAgreementFreeTrial =>
      'Ücretsiz deneme süresinin sonunda hesabınızdan ücret tahsil edilecektir. Ücretsiz deneme süresi boyunca istediğiniz zaman iptal edebilir ve herhangi bir ücret uygulanmaz.';

  @override
  String get paymentFailed => 'Ödeme başarısız oldu';

  @override
  String get paymentInfoPending =>
      'Ödemeniz beklemede, lütfen bekleyin. İşlemle ilgili bir sorunla karşılaşırsanız contact@everpixel.org üzerinden bize ulaşabilirsiniz.';

  @override
  String get paymentInfoTitle => 'Ödeme Bilgileri';

  @override
  String get perWeek => ' / hafta';

  @override
  String percentOff(int percent) {
    return '%$percent İNDİRİM';
  }

  @override
  String get popular => 'Popüler';

  @override
  String get privacyPolicy => 'Gizlilik Politikası';

  @override
  String get restore => 'Geri Yükle';

  @override
  String get restorePurchases => 'Satın Alımları Geri Yükle';

  @override
  String peopleUsed7DayTrial(String count) {
    return 'Son 24 saatte $count kişi 7 günlük denemeyi kullandı!';
  }

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
  String get termsOfUse => 'Kullanım Şartları';

  @override
  String thenPerWeek(String price) {
    return 'sonrasında $price/hafta';
  }

  @override
  String trialDays(int days) {
    return '$days günlük deneme';
  }

  @override
  String get unlimitedDownload => 'Sınırsız İndirme';

  @override
  String get unlockFullPower => 'Tüm Özelliklerin Kilidini Aç';

  @override
  String unlockFullPowerDescription(String appName) {
    return '$appName\'in tüm gücünün kilidini aç – nihai Yapay Zeka Düzenleme Uygulaması.';
  }

  @override
  String get upgradeNow => 'Şimdi Yükselt';

  @override
  String get userReviews => 'Kullanıcı Yorumları';

  @override
  String get week => 'Hafta';

  @override
  String get weekly => 'Haftalık';

  @override
  String weeklyPrice(String price) {
    return '$price/hafta';
  }

  @override
  String weeksFreeTrial(int weeks) {
    String _temp0 = intl.Intl.pluralLogic(weeks, locale: localeName, other: '$weeks hafta ücretsiz deneme', one: '1 hafta ücretsiz deneme');
    return '$_temp0';
  }

  @override
  String get yearly => 'Yıllık';

  @override
  String yearlyPrice(String price) {
    return '$price/yıl';
  }

  @override
  String trialUserCount(String count) {
    return '$count kişi deneme başlattı';
  }

  @override
  String trialUsedInLastHours(String count) {
    return 'Son 24 saatte $count kişi deneme kullandı';
  }

  @override
  String get startEditingSeeMagicHappen => 'Düzenlemeye Başla\nSihri Gör!';

  @override
  String get paywallExamples => 'Paywall Examples';

  @override
  String reviewSummary(String starCount, String totalDownload) {
    return '$starCount ($totalDownload)';
  }
}
