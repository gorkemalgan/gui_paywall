// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'messages.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class PaywallLocalizationsZh extends PaywallLocalizations {
  PaywallLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get adFree => '无广告';

  @override
  String get appOverview => '应用程序概述';

  @override
  String appPro(String appName) {
    return '$appName Pro';
  }

  @override
  String get bestOffer => '最佳报价';

  @override
  String get cancelAtAnyTime => '随时取消';

  @override
  String get chooseYourPlan => 'Choose Your Plan';

  @override
  String chargingInfoFreeTrial(
    String price,
    String freeTrialDay,
    String invoiceDuration,
  ) {
    return '$freeTrialDay天后收取$price，$invoiceDuration内自动续订，直到取消为止。';
  }

  @override
  String chargingInfoLifeTime(String price) {
    return '一次支付 $price，终身访问。无需额外费用或订阅。';
  }

  @override
  String chargingInfoStandart(String price, String invoiceDuration) {
    return '$price续订，$invoiceDuration内自动续订，直到取消。';
  }

  @override
  String get continueBtn => 'Continue';

  @override
  String get enableFreeTrial => 'Enable Free Trial';

  @override
  String get exclusiveFeatures => '独家特色';

  @override
  String get free => '免費';

  @override
  String freeTrialDaysFree(String numDays) {
    return '$numDays 天免费';
  }

  @override
  String get freeTrialDesc => '增强您的创造力并通过高级会员资格获得无限制的访问权限';

  @override
  String freeTrialPriceInfoText(
    String freeTrialDays,
    String priceString,
    String periodInvoiceStr,
  ) {
    return '免费试用$freeTrialDays天，然后$priceString/$periodInvoiceStr';
  }

  @override
  String get freeTrialProperty1Big => '使用免费试用期';

  @override
  String get freeTrialProperty1Small => '一键轻松激活';

  @override
  String get freeTrialProperty2Big => '今天：立即解锁所有功能';

  @override
  String get freeTrialProperty2Small => '立即访问所有功能';

  @override
  String get freeTrialProperty3Big => '试用结束提醒';

  @override
  String get freeTrialProperty3Small => '当您的试用期结束时，我们会向您发送通知';

  @override
  String get freeTrialProperty4Big => '享受无限下载';

  @override
  String get freeTrialProperty4Small => '易于使用和定制';

  @override
  String get freeTrialReminder => '免费试用期满前提醒我';

  @override
  String get getUnlimitedAccess => '獲得所有功能的無限存取權！';

  @override
  String get hdQuality => '高清画质';

  @override
  String get lifetime => '终身';

  @override
  String get monthly => '每月';

  @override
  String get notSureYet => 'Not Sure Yet?';

  @override
  String weekFreeTrial(int weeks) {
    String _temp0 = intl.Intl.pluralLogic(
      weeks,
      locale: localeName,
      other: '$weeks weeks free trial',
      one: '1 week free trial',
    );
    return '$_temp0';
  }

  @override
  String get otherPlans => 'Other plans';

  @override
  String get perWeek => ' / 週';

  @override
  String percentOff(int percent) {
    return '$percent% 折扣';
  }

  @override
  String get popular => '受欢迎的';

  @override
  String get restorePurchases => 'Restore Purchases';

  @override
  String get save => '节省';

  @override
  String get seeAllOptions => '查看所有选项';

  @override
  String get seeOtherOptions => '查看其他選項';

  @override
  String get shortTerm => '短期';

  @override
  String get startFreeTrial => '开启免费体验';

  @override
  String thenPerWeek(String price) {
    return 'then \$$price/week';
  }

  @override
  String trialDays(int days) {
    return '$days天試用';
  }

  @override
  String get unlimitedDownload => '无限下载';

  @override
  String get unlockFullPower => 'Unlock Full Power';

  @override
  String get upgradeNow => '立即升级';

  @override
  String get userReviews => '用户评论';

  @override
  String get week => '星期';

  @override
  String get weekly => '每周';

  @override
  String get yearly => '每年';

  @override
  String yearlyPrice(String price) {
    return '\$$price/year';
  }
}

/// The translations for Chinese, using the Han script (`zh_Hans`).
class PaywallLocalizationsZhHans extends PaywallLocalizationsZh {
  PaywallLocalizationsZhHans() : super('zh_Hans');

  @override
  String get adFree => '无广告';

  @override
  String get appOverview => '应用程序概述';

  @override
  String appPro(String appName) {
    return '$appName 专业版';
  }

  @override
  String get bestOffer => '最佳报价';

  @override
  String get cancelAtAnyTime => '随时取消';

  @override
  String chargingInfoFreeTrial(
    String price,
    String freeTrialDay,
    String invoiceDuration,
  ) {
    return '$freeTrialDay天后收取$price，$invoiceDuration内自动续订，直到取消为止。';
  }

  @override
  String chargingInfoLifeTime(String price) {
    return '一次支付 $price，终身访问。无需额外费用或订阅。';
  }

  @override
  String chargingInfoStandart(String price, String invoiceDuration) {
    return '$price续订，$invoiceDuration自动续订，直到取消。';
  }

  @override
  String get exclusiveFeatures => '独家特色';

  @override
  String get free => '免费';

  @override
  String freeTrialDaysFree(String numDays) {
    return '$numDays 天免费';
  }

  @override
  String get freeTrialDesc => '增强您的创造力并通过高级会员资格获得无限制的访问权限';

  @override
  String freeTrialPriceInfoText(
    String freeTrialDays,
    String priceString,
    String periodInvoiceStr,
  ) {
    return '免费试用$freeTrialDays天，然后$priceString/$periodInvoiceStr';
  }

  @override
  String get freeTrialProperty1Big => '使用免费试用期';

  @override
  String get freeTrialProperty1Small => '一键轻松激活';

  @override
  String get freeTrialProperty2Big => '今天：立即解锁所有功能';

  @override
  String get freeTrialProperty2Small => '立即访问所有功能';

  @override
  String get freeTrialProperty3Big => '试用结束提醒';

  @override
  String get freeTrialProperty3Small => '当您的试用期结束时，我们会向您发送通知';

  @override
  String get freeTrialProperty4Big => '享受无限下载';

  @override
  String get freeTrialProperty4Small => '易于使用和定制';

  @override
  String get freeTrialReminder => '免费试用期满前提醒我';

  @override
  String get getUnlimitedAccess => '畅享所有功能！';

  @override
  String get hdQuality => '高清画质';

  @override
  String get lifetime => '终身';

  @override
  String get monthly => '每月';

  @override
  String get perWeek => ' / 周';

  @override
  String percentOff(int percent) {
    return '立减$percent%';
  }

  @override
  String get popular => '受欢迎的';

  @override
  String get save => '节省';

  @override
  String get seeAllOptions => '查看所有选项';

  @override
  String get seeOtherOptions => '查看其他选项';

  @override
  String get shortTerm => '短期';

  @override
  String get startFreeTrial => '开启免费体验';

  @override
  String trialDays(int days) {
    return '$days天试用';
  }

  @override
  String get unlimitedDownload => '无限下载';

  @override
  String get upgradeNow => '立即升级';

  @override
  String get userReviews => '用户评论';

  @override
  String get week => '星期';

  @override
  String get weekly => '每周';

  @override
  String get yearly => '每年';
}

/// The translations for Chinese, using the Han script (`zh_Hant`).
class PaywallLocalizationsZhHant extends PaywallLocalizationsZh {
  PaywallLocalizationsZhHant() : super('zh_Hant');

  @override
  String get adFree => '無廣告';

  @override
  String get appOverview => '應用程式概述';

  @override
  String appPro(String appName) {
    return '$appName 專業版';
  }

  @override
  String get bestOffer => '最佳報價';

  @override
  String get cancelAtAnyTime => '隨時取消';

  @override
  String chargingInfoFreeTrial(
    String price,
    String freeTrialDay,
    String invoiceDuration,
  ) {
    return '$freeTrialDay天後將收取$price，$invoiceDuration內自動續訂，直到取消為止。';
  }

  @override
  String chargingInfoLifeTime(String price) {
    return '一次支付 $price，終身訪問。無需額外費用或訂閱。';
  }

  @override
  String chargingInfoStandart(String price, String invoiceDuration) {
    return '$price續訂，$invoiceDuration內自動續訂，直到取消。';
  }

  @override
  String get exclusiveFeatures => '獨家特色';

  @override
  String get free => '免費';

  @override
  String freeTrialDaysFree(String numDays) {
    return '$numDays 天免費';
  }

  @override
  String get freeTrialDesc => '增強您的創造力並透過高級會員資格獲得無限的存取權限';

  @override
  String freeTrialPriceInfoText(
    String freeTrialDays,
    String priceString,
    String periodInvoiceStr,
  ) {
    return '免費試用$freeTrialDays天，然後$priceString/$periodInvoiceStr';
  }

  @override
  String get freeTrialProperty1Big => '使用免費試用期';

  @override
  String get freeTrialProperty1Small => '一鍵輕鬆激活';

  @override
  String get freeTrialProperty2Big => '今天：立即解鎖所有功能';

  @override
  String get freeTrialProperty2Small => '立即存取所有功能';

  @override
  String get freeTrialProperty3Big => '試用結束提醒';

  @override
  String get freeTrialProperty3Small => '當您的試用期結束時，我們會向您發送通知';

  @override
  String get freeTrialProperty4Big => '享受無限下載';

  @override
  String get freeTrialProperty4Small => '易於使用和定制';

  @override
  String get freeTrialReminder => '免費試用期滿前提醒我';

  @override
  String get getUnlimitedAccess => '享受所有功能的無限存取權！';

  @override
  String get hdQuality => '高清畫質';

  @override
  String get lifetime => '終身';

  @override
  String get monthly => '每月';

  @override
  String get perWeek => ' / 週';

  @override
  String percentOff(int percent) {
    return '折扣 $percent%';
  }

  @override
  String get popular => '受歡迎的';

  @override
  String get save => '節省';

  @override
  String get seeAllOptions => '查看所有選項';

  @override
  String get seeOtherOptions => '查看其他選項';

  @override
  String get shortTerm => '短期';

  @override
  String get startFreeTrial => '開始免費試用';

  @override
  String trialDays(int days) {
    return '$days天試用';
  }

  @override
  String get unlimitedDownload => '無限下載';

  @override
  String get upgradeNow => '立即升級';

  @override
  String get userReviews => '用戶評論';

  @override
  String get week => '星期';

  @override
  String get weekly => '每週';

  @override
  String get yearly => '每年';
}
