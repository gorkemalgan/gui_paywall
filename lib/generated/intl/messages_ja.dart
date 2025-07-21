// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'messages.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class PaywallLocalizationsJa extends PaywallLocalizations {
  PaywallLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get adFree => '広告なし';

  @override
  String get appOverview => 'アプリの概要';

  @override
  String appPro(String appName) {
    return '$appName Pro';
  }

  @override
  String get bestOffer => 'ベストオファー';

  @override
  String get bestValue => '最もお得';

  @override
  String get cancelAtAnyTime => 'いつでもキャンセル可能';

  @override
  String chargingInfoFreeTrial(String price, String freeTrialDay, String invoiceDuration) {
    return '$freeTrialDay日後に$priceが請求されます $invoiceDurationまで自動更新が行われます。';
  }

  @override
  String chargingInfoLifeTime(String price) {
    return '$priceを一度支払うだけで、生涯利用できます。追加料金やサブスクリプションはありません。';
  }

  @override
  String chargingInfoStandart(String price, String invoiceDuration) {
    return '$priceの定期購入が$invoiceDurationごとに自動更新されます。';
  }

  @override
  String get chooseYourPlan => 'プランを選択';

  @override
  String get continueBtn => '続行';

  @override
  String daysFreeTrial(int days) {
    String _temp0 = intl.Intl.pluralLogic(days, locale: localeName, other: '$days日間の無料トライアル', one: '1日間の無料トライアル');
    return '$_temp0';
  }

  @override
  String get enableFreeTrial => '無料トライアルを有効にする';

  @override
  String get exclusiveFeatures => '独占機能';

  @override
  String get free => '無料';

  @override
  String freeTrialDaysFree(String numDays) {
    return '$numDays日間無料';
  }

  @override
  String get freeTrialDesc => '創造性を高め、プレミアムサブスクリプションで無制限のアクセスを獲得しましょう';

  @override
  String freeTrialPriceInfoText(String freeTrialDays, String priceString, String periodInvoiceStr) {
    return '$freeTrialDays日間無料、その後$priceString/$periodInvoiceStr';
  }

  @override
  String get freeTrialProperty1Big => '無料トライアル期間を利用しましょう';

  @override
  String get freeTrialProperty1Small => 'ワンクリックで簡単に有効化';

  @override
  String get freeTrialProperty2Big => '今日：すべての機能を即座にアンロック';

  @override
  String get freeTrialProperty2Small => '今すぐすべての機能にアクセス';

  @override
  String get freeTrialProperty3Big => 'トライアル終了のリマインダー';

  @override
  String get freeTrialProperty3Small => 'トライアルが終了するときに通知を送信します';

  @override
  String get freeTrialProperty4Big => '無制限のダウンロードをお楽しみください';

  @override
  String get freeTrialProperty4Small => '使いやすくカスタマイズ可能';

  @override
  String get freeTrialReminder => '無料トライアル終了前にリマインドしてください';

  @override
  String get getUnlimitedAccess => 'すべての機能を無制限に利用しよう！';

  @override
  String get hdQuality => 'HD品質';

  @override
  String get lifetime => '永久';

  @override
  String get monthly => '月額';

  @override
  String monthlyPrice(String price) {
    return '$price/月';
  }

  @override
  String get notSureYet => 'まだ迷っていますか？';

  @override
  String get otherPlans => 'その他のプラン';

  @override
  String get paymentAgreement =>
      'サブスクリプションは、現在の期間の終了の少なくとも24時間前に自動更新がオフにされない限り、自動的に更新されます。アカウントは、現在の期間の終了前24時間以内に、プランに従って更新のために請求されます。購入後、いつでもアカウント設定で自動更新を管理またはオフにできます。';

  @override
  String get paymentAgreementFreeTrial => '無料トライアル期間の終了時にお支払いがアカウントに請求されます。無料トライアル期間中はいつでもキャンセルでき、料金は発生しません。';

  @override
  String get paymentFailed => '支払いに失敗しました';

  @override
  String get paymentInfoPending => 'お支払いが保留中です。しばらくお待ちください。問題が発生した場合は contact@everpixel.org にご連絡ください。';

  @override
  String get paymentInfoTitle => '支払い情報';

  @override
  String get perWeek => ' / 週';

  @override
  String percentOff(int percent) {
    return '$percent% オフ';
  }

  @override
  String get popular => '人気';

  @override
  String get privacyPolicy => 'プライバシーポリシー';

  @override
  String get restore => '復元';

  @override
  String get restorePurchases => '購入を復元';

  @override
  String peopleUsed7DayTrial(String count) {
    return '$count people have used the 7-day Trial in the last 24 hours!';
  }

  @override
  String get save => '保存';

  @override
  String get seeAllOptions => 'すべてのオプションを見る';

  @override
  String get seeOtherOptions => 'その他のオプションを見る';

  @override
  String get shortTerm => '短期';

  @override
  String get startFreeTrial => '無料トライアルを開始';

  @override
  String get termsOfUse => '利用規約';

  @override
  String thenPerWeek(String price) {
    return 'その後 $price/週';
  }

  @override
  String trialDays(int days) {
    return '$days日間のトライアル';
  }

  @override
  String get unlimitedDownload => '無制限のダウンロード';

  @override
  String get unlockFullPower => 'すべての機能をアンロック';

  @override
  String unlockFullPowerDescription(String appName) {
    return '$appNameのすべての機能を解放 – 究極のAI編集アプリ。';
  }

  @override
  String get upgradeNow => '今すぐアップグレード';

  @override
  String get userReviews => 'ユーザーレビュー';

  @override
  String get week => '週';

  @override
  String get weekly => '週額';

  @override
  String weeklyPrice(String price) {
    return '$price/週';
  }

  @override
  String weeksFreeTrial(int weeks) {
    String _temp0 = intl.Intl.pluralLogic(weeks, locale: localeName, other: '$weeks週間の無料トライアル', one: '1週間の無料トライアル');
    return '$_temp0';
  }

  @override
  String get yearly => '年額';

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
