// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'messages.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class PaywallLocalizationsVi extends PaywallLocalizations {
  PaywallLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get adFree => 'Quảng cáo miễn phí';

  @override
  String get appOverview => 'Tổng quan về ứng dụng';

  @override
  String appPro(String appName) {
    return '$appName Pro';
  }

  @override
  String get bestOffer => 'ƯU ĐÃI TỐT NHẤT';

  @override
  String get bestValue => 'GIÁ TRỊ TỐT NHẤT';

  @override
  String get cancelAtAnyTime => 'Hủy bỏ bất cứ lúc nào';

  @override
  String chargingInfoFreeTrial(String price, String freeTrialDay, String invoiceDuration) {
    return 'Bạn sẽ phải trả $price sau $freeTrialDay ngày $invoiceDuration cho đến khi hủy.';
  }

  @override
  String chargingInfoLifeTime(String price) {
    return 'Thanh toán $price một lần để truy cập trọn đời. Không có chi phí hoặc đăng ký bổ sung.';
  }

  @override
  String chargingInfoStandart(String price, String invoiceDuration) {
    return 'Tự động gia hạn với giá $price mỗi $invoiceDuration cho đến khi huỷ.';
  }

  @override
  String get chooseYourPlan => 'Chọn gói của bạn';

  @override
  String get continueBtn => 'Tiếp tục';

  @override
  String daysFreeTrial(int days) {
    String _temp0 = intl.Intl.pluralLogic(days, locale: localeName, other: '$days ngày dùng thử miễn phí', one: '1 ngày dùng thử miễn phí');
    return '$_temp0';
  }

  @override
  String get enableFreeTrial => 'Bật dùng thử miễn phí';

  @override
  String get exclusiveFeatures => 'Tính năng độc quyền';

  @override
  String get free => 'Miễn phí';

  @override
  String freeTrialDaysFree(String numDays) {
    return '$numDays ngày MIỄN PHÍ';
  }

  @override
  String get freeTrialDesc => 'Nâng cao khả năng sáng tạo của bạn và nhận quyền truy cập không giới hạn với tư cách thành viên cao cấp';

  @override
  String freeTrialPriceInfoText(String freeTrialDays, String priceString, String periodInvoiceStr) {
    return '$freeTrialDays ngày miễn phí sau đó $priceString/$periodInvoiceStr';
  }

  @override
  String get freeTrialProperty1Big => 'Sử dụng thời gian dùng thử miễn phí của bạn';

  @override
  String get freeTrialProperty1Small => 'Dễ dàng kích hoạt chỉ bằng một cú nhấp chuột';

  @override
  String get freeTrialProperty2Big => 'Hôm nay: Mở khóa ngay lập tức mọi tính năng';

  @override
  String get freeTrialProperty2Small => 'Truy cập tất cả các tính năng ngay bây giờ';

  @override
  String get freeTrialProperty3Big => 'Nhắc nhở kết thúc thời gian dùng thử';

  @override
  String get freeTrialProperty3Small => 'Chúng tôi sẽ gửi cho bạn thông báo khi thời gian dùng thử của bạn kết thúc';

  @override
  String get freeTrialProperty4Big => 'Tận hưởng tải xuống không giới hạn';

  @override
  String get freeTrialProperty4Small => 'Dễ dàng sử dụng và tùy chỉnh';

  @override
  String get freeTrialReminder => 'Nhắc tôi trước khi hết thời gian dùng thử miễn phí';

  @override
  String get getUnlimitedAccess => 'Truy cập không giới hạn tất cả tính năng!';

  @override
  String get hdQuality => 'Chất lượng HD';

  @override
  String get lifetime => 'Trọn đời';

  @override
  String get monthly => 'Hàng tháng';

  @override
  String monthlyPrice(String price) {
    return '$price/tháng';
  }

  @override
  String get notSureYet => 'Chưa chắc chắn?';

  @override
  String get otherPlans => 'Gói khác';

  @override
  String get paymentAgreement =>
      'Đăng ký sẽ tự động gia hạn trừ khi tự động gia hạn bị tắt ít nhất 24 giờ trước khi kết thúc giai đoạn hiện tại.Tài khoản của bạn sẽ được tính theo kế hoạch gia hạn của bạn trong vòng 24 giờ trước khi kết thúc giai đoạn hiện tại.Bạn có thể quản lý hoặc tắt tự động gia hạn trong cài đặt tài khoản của mình bất cứ lúc nào sau khi mua.';

  @override
  String get paymentAgreementFreeTrial =>
      'Thanh toán sẽ được tính vào tài khoản của bạn vào cuối thời gian dùng thử miễn phí.Bạn có thể hủy bỏ bất cứ lúc nào trong thời gian dùng thử miễn phí và không có khoản phí nào được áp dụng.';

  @override
  String get paymentFailed => 'Thanh toán thất bại';

  @override
  String get paymentInfoPending =>
      'Thanh toán của bạn đang trong quá trình xử lý, vui lòng chờ. Nếu có vấn đề, vui lòng liên hệ với chúng tôi tại contact@everpixel.org.';

  @override
  String get paymentInfoTitle => 'Thông tin Thanh toán';

  @override
  String get perWeek => ' / tuần';

  @override
  String percentOff(int percent) {
    return 'Giảm $percent%';
  }

  @override
  String get popular => 'Phổ biến';

  @override
  String get privacyPolicy => 'Chính sách bảo mật';

  @override
  String get restore => 'Khôi phục';

  @override
  String get restorePurchases => 'Khôi phục mua hàng';

  @override
  String get save => 'Cứu';

  @override
  String get seeAllOptions => 'Xem tất cả các tùy chọn';

  @override
  String get seeOtherOptions => 'Xem các tùy chọn khác';

  @override
  String get shortTerm => 'NGẮN HẠN';

  @override
  String get startFreeTrial => 'Bắt đầu dùng thử miễn phí';

  @override
  String get termsOfUse => 'Điều khoản sử dụng';

  @override
  String thenPerWeek(String price) {
    return 'sau đó $price/tuần';
  }

  @override
  String trialDays(int days) {
    return 'Dùng thử $days ngày';
  }

  @override
  String get unlimitedDownload => 'Tải xuống không giới hạn';

  @override
  String get unlockFullPower => 'Mở khóa toàn bộ tính năng';

  @override
  String unlockFullPowerDescription(String appName) {
    return 'Mở khóa toàn bộ sức mạnh của $appName – Ứng dụng chỉnh sửa AI hàng đầu.';
  }

  @override
  String get upgradeNow => 'Nâng cấp ngay';

  @override
  String get userReviews => 'Đánh giá của người dùng';

  @override
  String get week => 'Tuần';

  @override
  String get weekly => 'Hàng tuần';

  @override
  String weeklyPrice(String price) {
    return '$price/tuần';
  }

  @override
  String weeksFreeTrial(int weeks) {
    String _temp0 = intl.Intl.pluralLogic(weeks, locale: localeName, other: '$weeks tuần dùng thử miễn phí', one: '1 tuần dùng thử miễn phí');
    return '$_temp0';
  }

  @override
  String get yearly => 'Hàng năm';

  @override
  String yearlyPrice(String price) {
    return '$price/năm';
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
