// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'messages.dart';

// ignore_for_file: type=lint

/// The translations for Malay (`ms`).
class PaywallLocalizationsMs extends PaywallLocalizations {
  PaywallLocalizationsMs([String locale = 'ms']) : super(locale);

  @override
  String get adFree => 'Tanpa Iklan';

  @override
  String get appOverview => 'Gambaran Keseluruhan Aplikasi';

  @override
  String appPro(String appName) {
    return '$appName Pro';
  }

  @override
  String get bestOffer => 'TAWARAN TERBAIK';

  @override
  String get bestValue => 'NILAI TERBAIK';

  @override
  String get cancelAtAnyTime => 'Batal pada bila-bila masa';

  @override
  String chargingInfoFreeTrial(String price, String freeTrialDay, String invoiceDuration) {
    return 'Anda akan dikenakan $price selepas $freeTrialDay hari $invoiceDuration sehingga dibatalkan.';
  }

  @override
  String chargingInfoLifeTime(String price) {
    return 'Bayar $price sekali untuk akses seumur hidup. Tiada caj tambahan atau langganan.';
  }

  @override
  String chargingInfoStandart(String price, String invoiceDuration) {
    return 'Diperbaharui secara automatik untuk $price setiap $invoiceDuration sehingga dibatalkan.';
  }

  @override
  String get chooseYourPlan => 'Pilih Pelan Anda';

  @override
  String get continueBtn => 'Teruskan';

  @override
  String daysFreeTrial(int days) {
    String _temp0 = intl.Intl.pluralLogic(days, locale: localeName, other: 'Cuba percuma $days hari', one: 'Cuba percuma 1 hari');
    return '$_temp0';
  }

  @override
  String get enableFreeTrial => 'Aktifkan Percubaan Percuma';

  @override
  String get exclusiveFeatures => 'Ciri Eksklusif';

  @override
  String get free => 'Percuma';

  @override
  String freeTrialDaysFree(String numDays) {
    return '$numDays hari PERCUMA';
  }

  @override
  String get freeTrialDesc => 'Tingkatkan kreativiti anda dan dapatkan akses tanpa had dengan keahlian premium';

  @override
  String freeTrialPriceInfoText(String freeTrialDays, String priceString, String periodInvoiceStr) {
    return '$freeTrialDays hari percuma, kemudian $priceString/$periodInvoiceStr';
  }

  @override
  String get freeTrialProperty1Big => 'Gunakan Tempoh Percubaan Percuma Anda';

  @override
  String get freeTrialProperty1Small => 'Aktifkan dengan mudah dengan satu klik';

  @override
  String get freeTrialProperty2Big => 'Hari ini: Segera buka semua ciri';

  @override
  String get freeTrialProperty2Small => 'Akses semua ciri sekarang';

  @override
  String get freeTrialProperty3Big => 'Peringatan tamat percubaan';

  @override
  String get freeTrialProperty3Small => 'Kami akan menghantar notifikasi apabila percubaan anda tamat';

  @override
  String get freeTrialProperty4Big => 'Nikmati muat turun tanpa had';

  @override
  String get freeTrialProperty4Small => 'Mudah digunakan dan disesuaikan';

  @override
  String get freeTrialReminder => 'Ingatkan saya sebelum percubaan percuma tamat';

  @override
  String get getUnlimitedAccess => 'Dapatkan akses tanpa had kepada semua ciri!';

  @override
  String get hdQuality => 'Kualiti HD';

  @override
  String get lifetime => 'Seumur hidup';

  @override
  String get monthly => 'Bulanan';

  @override
  String monthlyPrice(String price) {
    return '$price/bulan';
  }

  @override
  String get notSureYet => 'Belum pasti?';

  @override
  String get otherPlans => 'Pelan lain';

  @override
  String get paymentAgreement =>
      'Langganan akan diperbaharui secara automatik melainkan pembaharuan automatik dimatikan sekurang-kurangnya 24 jam sebelum akhir tempoh semasa. Akaun anda akan dicaj mengikut pelan anda untuk pembaharuan dalam masa 24 jam sebelum akhir tempoh semasa. Anda boleh mengurus atau mematikan pembaharuan automatik dalam tetapan akaun anda pada bila-bila masa selepas pembelian.';

  @override
  String get paymentAgreementFreeTrial =>
      'Bayaran akan dicaj ke akaun anda pada akhir tempoh percubaan percuma. Anda boleh membatalkan bila-bila masa semasa tempoh percubaan percuma dan tiada caj akan dikenakan.';

  @override
  String get paymentFailed => 'Pembayaran gagal';

  @override
  String get paymentInfoPending => 'Pembayaran anda sedang diproses, sila tunggu. Jika menghadapi masalah, hubungi kami di contact@everpixel.org.';

  @override
  String get paymentInfoTitle => 'Maklumat Pembayaran';

  @override
  String get perWeek => ' / minggu';

  @override
  String percentOff(int percent) {
    return 'Diskaun $percent%';
  }

  @override
  String get popular => 'Popular';

  @override
  String get privacyPolicy => 'Dasar Privasi';

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
  String get seeAllOptions => 'Lihat Semua Pilihan';

  @override
  String get seeOtherOptions => 'Lihat pilihan lain';

  @override
  String get shortTerm => 'JANGKA PENDEK';

  @override
  String get startFreeTrial => 'Mulakan Percubaan Percuma';

  @override
  String get termsOfUse => 'Terma Penggunaan';

  @override
  String thenPerWeek(String price) {
    return 'kemudian $price/minggu';
  }

  @override
  String trialDays(int days) {
    return 'Percubaan $days hari';
  }

  @override
  String get unlimitedDownload => 'Muat Turun Tanpa Had';

  @override
  String get unlockFullPower => 'Buka Kuasa Penuh';

  @override
  String unlockFullPowerDescription(String appName) {
    return 'Buka sepenuhnya kehebatan $appName – Aplikasi Editor AI terbaik.';
  }

  @override
  String get upgradeNow => 'Naik taraf Sekarang';

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
    String _temp0 = intl.Intl.pluralLogic(weeks, locale: localeName, other: 'Cuba percuma $weeks minggu', one: 'Cuba percuma 1 minggu');
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

  @override
  String get paywallExamples => 'Paywall Examples';

  @override
  String reviewSummary(String starCount, String totalDownload) {
    return '$starCount ($totalDownload)';
  }
}
