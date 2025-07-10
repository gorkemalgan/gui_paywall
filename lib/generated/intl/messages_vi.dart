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
  String get cancelAtAnyTime => 'Hủy bỏ bất cứ lúc nào';

  @override
  String chargingInfoFreeTrial(
    String price,
    String freeTrialDay,
    String invoiceDuration,
  ) {
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
  String get exclusiveFeatures => 'Tính năng độc quyền';

  @override
  String get free => 'Miễn phí';

  @override
  String freeTrialDaysFree(String numDays) {
    return '$numDays ngày MIỄN PHÍ';
  }

  @override
  String get freeTrialDesc =>
      'Nâng cao khả năng sáng tạo của bạn và nhận quyền truy cập không giới hạn với tư cách thành viên cao cấp';

  @override
  String freeTrialPriceInfoText(
    String freeTrialDays,
    String priceString,
    String periodInvoiceStr,
  ) {
    return '$freeTrialDays ngày miễn phí sau đó $priceString/$periodInvoiceStr';
  }

  @override
  String get freeTrialProperty1Big =>
      'Sử dụng thời gian dùng thử miễn phí của bạn';

  @override
  String get freeTrialProperty1Small =>
      'Dễ dàng kích hoạt chỉ bằng một cú nhấp chuột';

  @override
  String get freeTrialProperty2Big =>
      'Hôm nay: Mở khóa ngay lập tức mọi tính năng';

  @override
  String get freeTrialProperty2Small =>
      'Truy cập tất cả các tính năng ngay bây giờ';

  @override
  String get freeTrialProperty3Big => 'Nhắc nhở kết thúc thời gian dùng thử';

  @override
  String get freeTrialProperty3Small =>
      'Chúng tôi sẽ gửi cho bạn thông báo khi thời gian dùng thử của bạn kết thúc';

  @override
  String get freeTrialProperty4Big => 'Tận hưởng tải xuống không giới hạn';

  @override
  String get freeTrialProperty4Small => 'Dễ dàng sử dụng và tùy chỉnh';

  @override
  String get freeTrialReminder =>
      'Nhắc tôi trước khi hết thời gian dùng thử miễn phí';

  @override
  String get getUnlimitedAccess => 'Truy cập không giới hạn tất cả tính năng!';

  @override
  String get hdQuality => 'Chất lượng HD';

  @override
  String get lifetime => 'Trọn đời';

  @override
  String get monthly => 'Hàng tháng';

  @override
  String get perWeek => ' / tuần';

  @override
  String percentOff(int percent) {
    return 'Giảm $percent%';
  }

  @override
  String get popular => 'Phổ biến';

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
  String trialDays(int days) {
    return 'Dùng thử $days ngày';
  }

  @override
  String get unlimitedDownload => 'Tải xuống không giới hạn';

  @override
  String get upgradeNow => 'Nâng cấp ngay';

  @override
  String get userReviews => 'Đánh giá của người dùng';

  @override
  String get week => 'Tuần';

  @override
  String get weekly => 'Hàng tuần';

  @override
  String get yearly => 'Hàng năm';
}
