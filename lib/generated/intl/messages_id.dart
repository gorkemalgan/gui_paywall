// ignore: unused_import
import 'package:intl/intl.dart' as intl;
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
  String get bestValue => 'NILAI TERBAIK';

  @override
  String get cancelAtAnyTime => 'Batalkan kapan saja';

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
  String get chooseYourPlan => 'Pilih Paket Anda';

  @override
  String get continueBtn => 'Lanjutkan';

  @override
  String daysFreeTrial(int days) {
    String _temp0 = intl.Intl.pluralLogic(days, locale: localeName, other: 'Uji coba gratis $days hari', one: 'Uji coba gratis 1 hari');
    return '$_temp0';
  }

  @override
  String get enableFreeTrial => 'Aktifkan Uji Coba Gratis';

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
  String monthlyPrice(String price) {
    return '$price/bulan';
  }

  @override
  String get notSureYet => 'Masih ragu?';

  @override
  String get otherPlans => 'Paket lainnya';

  @override
  String get paymentAgreement =>
      'Langganan akan diperpanjang secara otomatis kecuali pembaruan otomatis dimatikan setidaknya 24 jam sebelum akhir periode berjalan. Akun Anda akan dikenakan biaya sesuai dengan paket Anda untuk pembaruan dalam 24 jam sebelum akhir periode berjalan. Anda dapat mengelola atau mematikan pembaruan otomatis di pengaturan akun Anda kapan saja setelah pembelian.';

  @override
  String get paymentAgreementFreeTrial =>
      'Pembayaran akan dikenakan ke akun Anda pada akhir periode percobaan gratis. Anda dapat membatalkan kapan saja selama periode percobaan gratis dan tidak ada biaya yang akan dikenakan.';

  @override
  String get paymentFailed => 'Pembayaran gagal';

  @override
  String get paymentInfoPending => 'Pembayaran Anda sedang diproses, harap tunggu. Jika ada masalah, silakan hubungi kami di contact@everpixel.org.';

  @override
  String get paymentInfoTitle => 'Informasi Pembayaran';

  @override
  String get perWeek => ' / minggu';

  @override
  String percentOff(int percent) {
    return 'Diskon $percent%';
  }

  @override
  String get popular => 'Populer';

  @override
  String get privacyPolicy => 'Kebijakan Privasi';

  @override
  String get restore => 'Pulihkan';

  @override
  String get restorePurchases => 'Pulihkan Pembelian';

  @override
  String peopleUsed7DayTrial(String count) {
    return '$count people have used the 7-day Trial in the last 24 hours!';
  }

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
  String get termsOfUse => 'Ketentuan Penggunaan';

  @override
  String thenPerWeek(String price) {
    return 'kemudian $price/minggu';
  }

  @override
  String trialDays(int days) {
    return 'Uji coba $days hari';
  }

  @override
  String get unlimitedDownload => 'Unduhan tanpa batas';

  @override
  String get unlockFullPower => 'Buka semua fitur';

  @override
  String unlockFullPowerDescription(String appName) {
    return 'Buka kekuatan penuh $appName – Aplikasi Editor AI terbaik.';
  }

  @override
  String get upgradeNow => 'Tingkatkan Sekarang';

  @override
  String get userReviews => 'Ulasan Pengguna';

  @override
  String get week => 'Minggu';

  @override
  String get weekly => 'Mingguan';

  @override
  String weeklyPrice(String price) {
    return '$price/minggu';
  }

  @override
  String weeksFreeTrial(int weeks) {
    String _temp0 = intl.Intl.pluralLogic(weeks, locale: localeName, other: 'Uji coba gratis $weeks minggu', one: 'Uji coba gratis 1 minggu');
    return '$_temp0';
  }

  @override
  String get yearly => 'Tahunan';

  @override
  String yearlyPrice(String price) {
    return '$price/tahun';
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
