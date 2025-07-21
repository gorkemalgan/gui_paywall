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
  String get bestValue => '超值優惠';

  @override
  String get cancelAtAnyTime => '随时取消';

  @override
  String chargingInfoFreeTrial(String price, String freeTrialDay, String invoiceDuration) {
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
  String get chooseYourPlan => '选择您的计划';

  @override
  String get continueBtn => '继续';

  @override
  String daysFreeTrial(int days) {
    String _temp0 = intl.Intl.pluralLogic(days, locale: localeName, other: '$days天免费试用', one: '1天免费试用');
    return '$_temp0';
  }

  @override
  String get enableFreeTrial => '启用免费试用';

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
  String freeTrialPriceInfoText(String freeTrialDays, String priceString, String periodInvoiceStr) {
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
  String monthlyPrice(String price) {
    return '$price/月';
  }

  @override
  String get notSureYet => '还不确定？';

  @override
  String get otherPlans => '其他计划';

  @override
  String get paymentAgreement => '除非自动续订至少在本期结束前24小时关闭，否则订阅将自动续订。您的帐户将根据您当前期限结束前24小时内续订计划收取费用。您可以在购买后的任何时候在帐户设置中管理或关闭自动续订。';

  @override
  String get paymentAgreementFreeTrial => '在免费试用期结束时，将向您的帐户收取付款。您可以在免费试用期内任何时间取消，并且不会收取任何费用。';

  @override
  String get paymentFailed => '支付失败';

  @override
  String get paymentInfoPending => '您的付款正在处理中，请稍候。如果遇到任何问题，请联系 contact@everpixel.org。';

  @override
  String get paymentInfoTitle => '付款信息';

  @override
  String get perWeek => ' / 週';

  @override
  String percentOff(int percent) {
    return '$percent% 折扣';
  }

  @override
  String get popular => '受欢迎的';

  @override
  String get privacyPolicy => '隐私政策';

  @override
  String get restore => '恢复';

  @override
  String get restorePurchases => '恢复购买';

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
  String get termsOfUse => '使用条款';

  @override
  String thenPerWeek(String price) {
    return '之后 $price/周';
  }

  @override
  String trialDays(int days) {
    return '$days天試用';
  }

  @override
  String get unlimitedDownload => '无限下载';

  @override
  String get unlockFullPower => '解锁全部功能';

  @override
  String unlockFullPowerDescription(String appName) {
    return '解鎖 $appName 的全部功能，體驗終極 AI 編輯應用程式。';
  }

  @override
  String get upgradeNow => '立即升级';

  @override
  String get userReviews => '用户评论';

  @override
  String get week => '星期';

  @override
  String get weekly => '每周';

  @override
  String weeklyPrice(String price) {
    return '$price/周';
  }

  @override
  String weeksFreeTrial(int weeks) {
    String _temp0 = intl.Intl.pluralLogic(weeks, locale: localeName, other: '$weeks周免费试用', one: '1周免费试用');
    return '$_temp0';
  }

  @override
  String get yearly => '每年';

  @override
  String yearlyPrice(String price) {
    return '$price/年';
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
  String get bestValue => '超值推荐';

  @override
  String get cancelAtAnyTime => '随时取消';

  @override
  String chargingInfoFreeTrial(String price, String freeTrialDay, String invoiceDuration) {
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
  String get chooseYourPlan => '选择您的计划';

  @override
  String get continueBtn => '继续';

  @override
  String daysFreeTrial(int days) {
    String _temp0 = intl.Intl.pluralLogic(days, locale: localeName, other: '$days天免费试用', one: '1天免费试用');
    return '$_temp0';
  }

  @override
  String get enableFreeTrial => '启用免费试用';

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
  String freeTrialPriceInfoText(String freeTrialDays, String priceString, String periodInvoiceStr) {
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
  String monthlyPrice(String price) {
    return '$price/月';
  }

  @override
  String get notSureYet => '还不确定？';

  @override
  String get otherPlans => '其他计划';

  @override
  String get paymentAgreement => '除非自动续订至少在本期结束前24小时关闭，否则订阅将自动续订。您的帐户将根据您当前期限结束前24小时内续订计划收取费用。您可以在购买后的任何时候在帐户设置中管理或关闭自动续订。';

  @override
  String get paymentAgreementFreeTrial => '在免费试用期结束时，将向您的帐户收取付款。您可以在免费试用期内任何时间取消，并且不会收取任何费用。';

  @override
  String get paymentFailed => '支付失败';

  @override
  String get paymentInfoPending => '您的付款正在处理中，请稍候。如果遇到任何问题，请通过 contact@everpixel.org 联系我们。';

  @override
  String get paymentInfoTitle => '付款信息';

  @override
  String get perWeek => ' / 周';

  @override
  String percentOff(int percent) {
    return '立减$percent%';
  }

  @override
  String get popular => '受欢迎的';

  @override
  String get privacyPolicy => '隐私政策';

  @override
  String get restore => '恢复';

  @override
  String get restorePurchases => '恢复购买';

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
  String get termsOfUse => '使用条款';

  @override
  String thenPerWeek(String price) {
    return '之后每周 $price';
  }

  @override
  String trialDays(int days) {
    return '$days天试用';
  }

  @override
  String get unlimitedDownload => '无限下载';

  @override
  String get unlockFullPower => '解锁全部功能';

  @override
  String unlockFullPowerDescription(String appName) {
    return '解锁 $appName 的全部功能，尽享终极 AI 编辑体验。';
  }

  @override
  String get upgradeNow => '立即升级';

  @override
  String get userReviews => '用户评论';

  @override
  String get week => '星期';

  @override
  String get weekly => '每周';

  @override
  String weeklyPrice(String price) {
    return '$price/周';
  }

  @override
  String weeksFreeTrial(int weeks) {
    String _temp0 = intl.Intl.pluralLogic(weeks, locale: localeName, other: '$weeks周免费试用', one: '1周免费试用');
    return '$_temp0';
  }

  @override
  String get yearly => '每年';

  @override
  String yearlyPrice(String price) {
    return '$price/年';
  }
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
  String get bestValue => '超值推薦';

  @override
  String get cancelAtAnyTime => '隨時取消';

  @override
  String chargingInfoFreeTrial(String price, String freeTrialDay, String invoiceDuration) {
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
  String get chooseYourPlan => '選擇您的方案';

  @override
  String get continueBtn => '繼續';

  @override
  String daysFreeTrial(int days) {
    String _temp0 = intl.Intl.pluralLogic(days, locale: localeName, other: '$days天免費試用', one: '1天免費試用');
    return '$_temp0';
  }

  @override
  String get enableFreeTrial => '啟用免費試用';

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
  String freeTrialPriceInfoText(String freeTrialDays, String priceString, String periodInvoiceStr) {
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
  String monthlyPrice(String price) {
    return '$price/月';
  }

  @override
  String get notSureYet => '還不確定？';

  @override
  String get otherPlans => '其他方案';

  @override
  String get paymentAgreement => '除非在當前週期結束前至少 24 小時關閉自動續訂，否則訂閱將自動續訂。您的帳戶將在本期結束前 24 小時內根據您的續訂計劃收取費用。購買後，您可以隨時在帳戶設定中管理或關閉自動續訂。';

  @override
  String get paymentAgreementFreeTrial => '免費試用期結束時，我們將從您的帳戶中扣款。您可以在免費試用期內隨時取消，並且不會收取任何費用。';

  @override
  String get paymentFailed => '支付失敗';

  @override
  String get paymentInfoPending => '您的付款正在處理中，請稍候。如果遇到任何問題，請聯絡 contact@everpixel.org。';

  @override
  String get paymentInfoTitle => '付款資訊';

  @override
  String get perWeek => ' / 週';

  @override
  String percentOff(int percent) {
    return '折扣 $percent%';
  }

  @override
  String get popular => '受歡迎的';

  @override
  String get privacyPolicy => '隱私權政策';

  @override
  String get restore => '恢復';

  @override
  String get restorePurchases => '恢復購買';

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
  String get termsOfUse => '使用條款';

  @override
  String thenPerWeek(String price) {
    return '然後每週 $price';
  }

  @override
  String trialDays(int days) {
    return '$days天試用';
  }

  @override
  String get unlimitedDownload => '無限下載';

  @override
  String get unlockFullPower => '解鎖全部功能';

  @override
  String unlockFullPowerDescription(String appName) {
    return '解鎖 $appName 的完整功能 – 終極 AI 編輯應用程式。';
  }

  @override
  String get upgradeNow => '立即升級';

  @override
  String get userReviews => '用戶評論';

  @override
  String get week => '星期';

  @override
  String get weekly => '每週';

  @override
  String weeklyPrice(String price) {
    return '$price/週';
  }

  @override
  String weeksFreeTrial(int weeks) {
    String _temp0 = intl.Intl.pluralLogic(weeks, locale: localeName, other: '$weeks週免費試用', one: '1週免費試用');
    return '$_temp0';
  }

  @override
  String get yearly => '每年';

  @override
  String yearlyPrice(String price) {
    return '$price/年';
  }
}
