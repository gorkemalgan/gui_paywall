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
  String get cancelAtAnyTime => 'Batal pada bila-bila masa';

  @override
  String chargingInfoFreeTrial(
    String price,
    String freeTrialDay,
    String invoiceDuration,
  ) {
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
  String get exclusiveFeatures => 'Ciri Eksklusif';

  @override
  String get free => 'Percuma';

  @override
  String freeTrialDaysFree(String numDays) {
    return '$numDays hari PERCUMA';
  }

  @override
  String get freeTrialDesc =>
      'Tingkatkan kreativiti anda dan dapatkan akses tanpa had dengan keahlian premium';

  @override
  String freeTrialPriceInfoText(
    String freeTrialDays,
    String priceString,
    String periodInvoiceStr,
  ) {
    return '$freeTrialDays hari percuma, kemudian $priceString/$periodInvoiceStr';
  }

  @override
  String get freeTrialProperty1Big => 'Gunakan Tempoh Percubaan Percuma Anda';

  @override
  String get freeTrialProperty1Small =>
      'Aktifkan dengan mudah dengan satu klik';

  @override
  String get freeTrialProperty2Big => 'Hari ini: Segera buka semua ciri';

  @override
  String get freeTrialProperty2Small => 'Akses semua ciri sekarang';

  @override
  String get freeTrialProperty3Big => 'Peringatan tamat percubaan';

  @override
  String get freeTrialProperty3Small =>
      'Kami akan menghantar notifikasi apabila percubaan anda tamat';

  @override
  String get freeTrialProperty4Big => 'Nikmati muat turun tanpa had';

  @override
  String get freeTrialProperty4Small => 'Mudah digunakan dan disesuaikan';

  @override
  String get freeTrialReminder =>
      'Ingatkan saya sebelum percubaan percuma tamat';

  @override
  String get getUnlimitedAccess =>
      'Dapatkan akses tanpa had kepada semua ciri!';

  @override
  String get hdQuality => 'Kualiti HD';

  @override
  String get lifetime => 'Seumur hidup';

  @override
  String get monthly => 'Bulanan';

  @override
  String get perWeek => ' / minggu';

  @override
  String percentOff(int percent) {
    return 'Diskaun $percent%';
  }

  @override
  String get popular => 'Popular';

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
  String trialDays(int days) {
    return 'Percubaan $days hari';
  }

  @override
  String get unlimitedDownload => 'Muat Turun Tanpa Had';

  @override
  String get upgradeNow => 'Naik taraf Sekarang';

  @override
  String get userReviews => 'Ulasan Pengguna';

  @override
  String get week => 'Minggu';

  @override
  String get weekly => 'Mingguan';

  @override
  String get yearly => 'Tahunan';
}
