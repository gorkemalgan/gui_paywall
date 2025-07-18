// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'messages.dart';

// ignore_for_file: type=lint

/// The translations for Thai (`th`).
class PaywallLocalizationsTh extends PaywallLocalizations {
  PaywallLocalizationsTh([String locale = 'th']) : super(locale);

  @override
  String get adFree => 'โฆษณาฟรี';

  @override
  String get appOverview => 'ภาพรวมแอป';

  @override
  String appPro(String appName) {
    return '$appName โปร';
  }

  @override
  String get bestOffer => 'ข้อเสนอที่ดีที่สุด';

  @override
  String get bestValue => 'ความคุ้มค่าสูงสุด';

  @override
  String get cancelAtAnyTime => 'ยกเลิกได้ตลอดเวลา';

  @override
  String chargingInfoFreeTrial(String price, String freeTrialDay, String invoiceDuration) {
    return 'คุณจะถูกเรียกเก็บเงิน $price หลังจาก $freeTrialDay วัน $invoiceDuration จนกว่าจะยกเลิก';
  }

  @override
  String chargingInfoLifeTime(String price) {
    return 'จ่าย $price ครั้งเดียวเพื่อการเข้าถึงตลอดชีวิต ไม่มีค่าใช้จ่ายเพิ่มเติมหรือการสมัครสมาชิก';
  }

  @override
  String chargingInfoStandart(String price, String invoiceDuration) {
    return 'ยืนยันการต่ออายุอัตโนมัติสำหรับ $price ทุก $invoiceDuration จนกว่าจะถูกยกเลิก';
  }

  @override
  String get chooseYourPlan => 'เลือกแผนของคุณ';

  @override
  String get continueBtn => 'ดำเนินการต่อ';

  @override
  String daysFreeTrial(int days) {
    String _temp0 = intl.Intl.pluralLogic(days, locale: localeName, other: 'ทดลองใช้ฟรี $days วัน', one: 'ทดลองใช้ฟรี 1 วัน');
    return '$_temp0';
  }

  @override
  String get enableFreeTrial => 'เปิดใช้งานทดลองใช้ฟรี';

  @override
  String get exclusiveFeatures => 'คุณสมบัติพิเศษ';

  @override
  String get free => 'ฟรี';

  @override
  String freeTrialDaysFree(String numDays) {
    return 'ทดลองใช้ฟรี $numDays วัน';
  }

  @override
  String get freeTrialDesc => 'เพิ่มความคิดสร้างสรรค์ของคุณและเข้าถึงได้ไม่จำกัดด้วยสมาชิกระดับพรีเมียม';

  @override
  String freeTrialPriceInfoText(String freeTrialDays, String priceString, String periodInvoiceStr) {
    return 'ฟรี $freeTrialDays วัน แล้ว $priceString/$periodInvoiceStr';
  }

  @override
  String get freeTrialProperty1Big => 'ใช้ช่วงทดลองใช้ฟรีของคุณ';

  @override
  String get freeTrialProperty1Small => 'เปิดใช้งานได้อย่างง่ายดายเพียงคลิกเดียว';

  @override
  String get freeTrialProperty2Big => 'วันนี้: ปลดล็อคคุณสมบัติทั้งหมดทันที';

  @override
  String get freeTrialProperty2Small => 'เข้าถึงคุณสมบัติทั้งหมดทันที';

  @override
  String get freeTrialProperty3Big => 'การแจ้งเตือนสิ้นสุดช่วงทดลองใช้';

  @override
  String get freeTrialProperty3Small => 'เราจะส่งการแจ้งเตือนให้คุณเมื่อการทดลองใช้ของคุณสิ้นสุดลง';

  @override
  String get freeTrialProperty4Big => 'เพลิดเพลินกับการดาวน์โหลดไม่จำกัด';

  @override
  String get freeTrialProperty4Small => 'ใช้งานง่ายและปรับแต่ง';

  @override
  String get freeTrialReminder => 'เตือนฉันก่อนที่ช่วงทดลองใช้ฟรีจะหมดอายุ';

  @override
  String get getUnlimitedAccess => 'เข้าถึงคุณลักษณะทั้งหมดแบบไม่จำกัด!';

  @override
  String get hdQuality => 'คุณภาพระดับ HD';

  @override
  String get lifetime => 'ตลอดชีพ';

  @override
  String get monthly => 'รายเดือน';

  @override
  String monthlyPrice(String price) {
    return '$price/เดือน';
  }

  @override
  String get notSureYet => 'ยังไม่แน่ใจ?';

  @override
  String get otherPlans => 'แผนอื่น ๆ';

  @override
  String get paymentAgreement =>
      'การสมัครสมาชิกจะต่ออายุโดยอัตโนมัติเว้นแต่ว่าจะปิดการต่ออายุอัตโนมัติอย่างน้อย 24 ชั่วโมงก่อนสิ้นสุดระยะเวลาปัจจุบันบัญชีของคุณจะถูกเรียกเก็บเงินตามแผนของคุณสำหรับการต่ออายุภายใน 24 ชั่วโมงก่อนสิ้นสุดระยะเวลาปัจจุบันคุณสามารถจัดการหรือปิดการต่ออายุอัตโนมัติในการตั้งค่าบัญชีของคุณได้ตลอดเวลาหลังจากซื้อ';

  @override
  String get paymentAgreementFreeTrial =>
      'การชำระเงินจะถูกเรียกเก็บเงินไปยังบัญชีของคุณเมื่อสิ้นสุดระยะเวลาทดลองใช้ฟรีคุณสามารถยกเลิกได้ตลอดเวลาในช่วงระยะเวลาทดลองใช้ฟรีและจะไม่มีการเรียกเก็บเงิน';

  @override
  String get paymentFailed => 'การชำระเงินล้มเหลว';

  @override
  String get paymentInfoPending => 'การชำระเงินของคุณอยู่ระหว่างดำเนินการ กรุณารอสักครู่ หากคุณพบปัญหา โปรดติดต่อเราได้ที่ contact@everpixel.org';

  @override
  String get paymentInfoTitle => 'ข้อมูลการชำระเงิน';

  @override
  String get perWeek => ' / สัปดาห์';

  @override
  String percentOff(int percent) {
    return '$percent% ส่วนลด';
  }

  @override
  String get popular => 'เป็นที่นิยม';

  @override
  String get privacyPolicy => 'นโยบายความเป็นส่วนตัว';

  @override
  String get restore => 'คืนค่า';

  @override
  String get restorePurchases => 'กู้คืนการซื้อ';

  @override
  String get save => 'บันทึก';

  @override
  String get seeAllOptions => 'ดูตัวเลือกทั้งหมด';

  @override
  String get seeOtherOptions => 'ดูตัวเลือกอื่น ๆ';

  @override
  String get shortTerm => 'ระยะสั้น';

  @override
  String get startFreeTrial => 'เริ่มทดลองใช้ฟรี';

  @override
  String get termsOfUse => 'เงื่อนไขการใช้บริการ';

  @override
  String thenPerWeek(String price) {
    return 'จากนั้น $price/สัปดาห์';
  }

  @override
  String trialDays(int days) {
    return 'ทดลองใช้ฟรี $days วัน';
  }

  @override
  String get unlimitedDownload => 'ดาวน์โหลดได้ไม่จำกัด';

  @override
  String get unlockFullPower => 'ปลดล็อกพลังทั้งหมด';

  @override
  String unlockFullPowerDescription(String appName) {
    return 'ปลดล็อกพลังเต็มรูปแบบของ $appName แอป AI Editor ที่ดีที่สุด';
  }

  @override
  String get upgradeNow => 'อัปเกรดตอนนี้';

  @override
  String get userReviews => 'รีวิวจากผู้ใช้';

  @override
  String get week => 'สัปดาห์';

  @override
  String get weekly => 'รายสัปดาห์';

  @override
  String weeklyPrice(String price) {
    return '$price/สัปดาห์';
  }

  @override
  String weeksFreeTrial(int weeks) {
    String _temp0 = intl.Intl.pluralLogic(weeks, locale: localeName, other: 'ทดลองใช้ฟรี $weeks สัปดาห์', one: 'ทดลองใช้ฟรี 1 สัปดาห์');
    return '$_temp0';
  }

  @override
  String get yearly => 'รายปี';

  @override
  String yearlyPrice(String price) {
    return '$price/ปี';
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
