// ignore: unused_import

// Package imports:
import 'package:intl/intl.dart' as intl;

// Project imports:
import 'messages.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class PaywallLocalizationsKo extends PaywallLocalizations {
  PaywallLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get adFree => '광고 없음';

  @override
  String get appOverview => '앱 개요';

  @override
  String appPro(String appName) {
    return '$appName 프로';
  }

  @override
  String get bestOffer => '최고의 제안';

  @override
  String get cancelAtAnyTime => '언제든지 취소';

  @override
  String get chooseYourPlan => 'Choose Your Plan';

  @override
  String chargingInfoFreeTrial(String price, String freeTrialDay, String invoiceDuration) {
    return '$freeTrialDay일 후 $price 결제 $invoiceDuration까지 자동 갱신됩니다.';
  }

  @override
  String chargingInfoLifeTime(String price) {
    return '평생 액세스를 위해 $price를 한 번 결제하세요. 추가 요금이나 구독은 없습니다.';
  }

  @override
  String chargingInfoStandart(String price, String invoiceDuration) {
    return '$price $invoiceDuration마다 자동 갱신됩니다.';
  }

  @override
  String get continueBtn => 'Continue';

  @override
  String get enableFreeTrial => 'Enable Free Trial';

  @override
  String get exclusiveFeatures => '독점 기능';

  @override
  String get free => '무료';

  @override
  String freeTrialDaysFree(String numDays) {
    return '$numDays일 무료';
  }

  @override
  String get freeTrialDesc => '창의력을 향상시키고 프리미엄 멤버십으로 무제한 액세스하세요';

  @override
  String freeTrialPriceInfoText(String freeTrialDays, String priceString, String periodInvoiceStr) {
    return '무료 $freeTrialDays일 후 $priceString/$periodInvoiceStr';
  }

  @override
  String get freeTrialProperty1Big => '무료 체험 기간을 사용하세요';

  @override
  String get freeTrialProperty1Small => '한 번의 클릭으로 쉽게 활성화';

  @override
  String get freeTrialProperty2Big => '오늘: 모든 기능 즉시 잠금 해제';

  @override
  String get freeTrialProperty2Small => '지금 모든 기능에 액세스';

  @override
  String get freeTrialProperty3Big => '체험 종료 알림';

  @override
  String get freeTrialProperty3Small => '체험이 종료되면 알림을 보내드립니다';

  @override
  String get freeTrialProperty4Big => '무제한 다운로드 즐기기';

  @override
  String get freeTrialProperty4Small => '사용하기 쉽고 사용자 정의 가능';

  @override
  String get freeTrialReminder => '무료 체험이 만료되기 전에 알려주세요';

  @override
  String get getUnlimitedAccess => '모든 기능에 무제한 액세스!';

  @override
  String get hdQuality => 'HD 품질';

  @override
  String get lifetime => '평생';

  @override
  String get monthly => '월간';

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
  String get perWeek => ' / 주';

  @override
  String percentOff(int percent) {
    return '$percent% 할인';
  }

  @override
  String get popular => '인기';

  @override
  String get restorePurchases => 'Restore Purchases';

  @override
  String get save => '저장';

  @override
  String get seeAllOptions => '모든 옵션 보기';

  @override
  String get seeOtherOptions => '다른 옵션 보기';

  @override
  String get shortTerm => '단기';

  @override
  String get startFreeTrial => '무료 체험 시작';

  @override
  String thenPerWeek(String price) {
    return 'then \$$price/week';
  }

  @override
  String trialDays(int days) {
    return '$days일 체험';
  }

  @override
  String get unlimitedDownload => '무제한 다운로드';

  @override
  String get unlockFullPower => 'Unlock Full Power';

  @override
  String get upgradeNow => '지금 업그레이드';

  @override
  String get userReviews => '사용자 리뷰';

  @override
  String get week => '주';

  @override
  String get weekly => '주간';

  @override
  String get yearly => '연간';

  @override
  String yearlyPrice(String price) {
    return '\$$price/year';
  }
}
