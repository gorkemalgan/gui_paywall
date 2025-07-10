// ignore: unused_import

// Package imports:
import 'package:intl/intl.dart' as intl;

// Project imports:
import 'messages.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class PaywallLocalizationsId extends PaywallLocalizations {
  PaywallLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get adFree => 'Bebas iklan';

  @override
  String get appOverview => 'Gambaran Aplikasi';

  @override
  String appPro(String appName) {
    return '$appName Pro';
  }

  @override
  String get bestOffer => 'PENAWARAN TERBAIK';

  @override
  String get cancelAtAnyTime => 'Batalkan kapan saja';

  @override
  String get chooseYourPlan => 'Choose Your Plan';

  @override
  String chargingInfoFreeTrial(String price, String freeTrialDay, String invoiceDuration) {
    return 'Anda akan dikenai biaya $price setelah $freeTrialDay hari $invoiceDuration sampai dibatalkan.';
  }

  @override
  String chargingInfoLifeTime(String price) {
    return 'Bayar $price sekali untuk akses seumur hidup. Tidak ada biaya tambahan atau langganan.';
  }

  @override
  String chargingInfoStandart(String price, String invoiceDuration) {
    return 'Otomatis diperpanjang sebesar $price setiap $invoiceDuration sampai dibatalkan.';
  }

  @override
  String get continueBtn => 'Continue';

  @override
  String get enableFreeTrial => 'Enable Free Trial';

  @override
  String get exclusiveFeatures => 'Fitur Eksklusif';

  @override
  String get free => 'Gratis';

  @override
  String freeTrialDaysFree(String numDays) {
    return '$numDays hari GRATIS';
  }

  @override
  String get freeTrialDesc => 'Tingkatkan kreativitas Anda dan dapatkan akses tanpa batas dengan langganan premium';

  @override
  String freeTrialPriceInfoText(String freeTrialDays, String priceString, String periodInvoiceStr) {
    return '$freeTrialDays hari gratis lalu $priceString/$periodInvoiceStr';
  }

  @override
  String get freeTrialProperty1Big => 'Gunakan periode percobaan gratis Anda';

  @override
  String get freeTrialProperty1Small => 'Aktifkan dengan mudah dalam satu klik';

  @override
  String get freeTrialProperty2Big => 'Hari ini: Buka semua fitur segera';

  @override
  String get freeTrialProperty2Small => 'Akses semua fitur sekarang';

  @override
  String get freeTrialProperty3Big => 'Pengingat akhir percobaan';

  @override
  String get freeTrialProperty3Small => 'Kami akan mengirimkan pemberitahuan saat percobaan Anda berakhir';

  @override
  String get freeTrialProperty4Big => 'Nikmati unduhan tanpa batas';

  @override
  String get freeTrialProperty4Small => 'Mudah digunakan dan disesuaikan';

  @override
  String get freeTrialReminder => 'Ingatkan saya sebelum percobaan gratis berakhir';

  @override
  String get getUnlimitedAccess => 'Dapatkan akses tak terbatas ke semua fitur!';

  @override
  String get hdQuality => 'Kualitas HD';

  @override
  String get lifetime => 'Seumur hidup';

  @override
  String get monthly => 'Bulanan';

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
  String get perWeek => ' / minggu';

  @override
  String percentOff(int percent) {
    return 'Diskon $percent%';
  }

  @override
  String get popular => 'Populer';

  @override
  String get restorePurchases => 'Restore Purchases';

  @override
  String get save => 'Simpan';

  @override
  String get seeAllOptions => 'Lihat semua opsi';

  @override
  String get seeOtherOptions => 'Lihat opsi lainnya';

  @override
  String get shortTerm => 'JANGKA PENDEK';

  @override
  String get startFreeTrial => 'Mulai Percobaan Gratis';

  @override
  String thenPerWeek(String price) {
    return 'then \$$price/week';
  }

  @override
  String trialDays(int days) {
    return 'Uji coba $days hari';
  }

  @override
  String get unlimitedDownload => 'Unduhan tanpa batas';

  @override
  String get unlockFullPower => 'Unlock Full Power';

  @override
  String get upgradeNow => 'Tingkatkan Sekarang';

  @override
  String get userReviews => 'Ulasan Pengguna';

  @override
  String get week => 'Minggu';

  @override
  String get weekly => 'Mingguan';

  @override
  String get yearly => 'Tahunan';

  @override
  String yearlyPrice(String price) {
    return '\$$price/year';
  }
}
