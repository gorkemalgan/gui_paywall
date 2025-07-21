// ignore: unused_import
import 'package:intl/intl.dart' as intl;
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
  String get bestValue => '최고 가치';

  @override
  String get cancelAtAnyTime => '언제든지 취소';

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
  String get chooseYourPlan => '요금제를 선택하세요';

  @override
  String get continueBtn => '계속';

  @override
  String daysFreeTrial(int days) {
    String _temp0 = intl.Intl.pluralLogic(days, locale: localeName, other: '$days일 무료 체험', one: '1일 무료 체험');
    return '$_temp0';
  }

  @override
  String get enableFreeTrial => '무료 체험 활성화';

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
  String monthlyPrice(String price) {
    return '$price/월';
  }

  @override
  String get notSureYet => '아직 확신이 없으신가요?';

  @override
  String get otherPlans => '다른 요금제';

  @override
  String get paymentAgreement =>
      '구독은 현재 기간이 끝나기 최소 24시간 전에 자동 갱신이 꺼지지 않으면 자동으로 갱신됩니다. 계정은 현재 기간이 끝나기 24시간 전에 갱신을 위해 귀하의 플랜에 따라 청구됩니다. 구매 후 언제든지 계정 설정에서 자동 갱신을 관리하거나 끌 수 있습니다.';

  @override
  String get paymentAgreementFreeTrial => '무료 체험 기간이 끝나면 계정에 청구됩니다. 무료 체험 기간 동안 언제든지 취소할 수 있으며 요금이 부과되지 않습니다.';

  @override
  String get paymentFailed => '결제 실패';

  @override
  String get paymentInfoPending => '결제가 보류 중입니다. 문제가 발생하면 contact@everpixel.org로 문의하세요.';

  @override
  String get paymentInfoTitle => '결제 정보';

  @override
  String get perWeek => ' / 주';

  @override
  String percentOff(int percent) {
    return '$percent% 할인';
  }

  @override
  String get popular => '인기';

  @override
  String get privacyPolicy => '개인정보 처리방침';

  @override
  String get restore => '복원';

  @override
  String get restorePurchases => '구매 복원';

  @override
  String peopleUsed7DayTrial(String count) {
    return '$count people have used the 7-day Trial in the last 24 hours!';
  }

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
  String get termsOfUse => '이용 약관';

  @override
  String thenPerWeek(String price) {
    return '그 후 주당 $price';
  }

  @override
  String trialDays(int days) {
    return '$days일 체험';
  }

  @override
  String get unlimitedDownload => '무제한 다운로드';

  @override
  String get unlockFullPower => '모든 기능을 잠금 해제하세요';

  @override
  String unlockFullPowerDescription(String appName) {
    return '$appName의 모든 기능을 잠금 해제하여 최고의 AI 편집 앱을 경험해보세요.';
  }

  @override
  String get upgradeNow => '지금 업그레이드';

  @override
  String get userReviews => '사용자 리뷰';

  @override
  String get week => '주';

  @override
  String get weekly => '주간';

  @override
  String weeklyPrice(String price) {
    return '$price/주';
  }

  @override
  String weeksFreeTrial(int weeks) {
    String _temp0 = intl.Intl.pluralLogic(weeks, locale: localeName, other: '$weeks주 무료 체험', one: '1주 무료 체험');
    return '$_temp0';
  }

  @override
  String get yearly => '연간';

  @override
  String yearlyPrice(String price) {
    return '$price/년';
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
