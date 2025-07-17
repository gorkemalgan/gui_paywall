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
  String get cancelAtAnyTime => 'いつでもキャンセル可能';

  @override
  String get chooseYourPlan => 'Choose Your Plan';

  @override
  String chargingInfoFreeTrial(
    String price,
    String freeTrialDay,
    String invoiceDuration,
  ) {
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
  String get continueBtn => 'Continue';

  @override
  String get enableFreeTrial => 'Enable Free Trial';

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
  String freeTrialPriceInfoText(
    String freeTrialDays,
    String priceString,
    String periodInvoiceStr,
  ) {
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
    return '$percent% オフ';
  }

  @override
  String get popular => '人気';

  @override
  String get restorePurchases => 'Restore Purchases';

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
  String thenPerWeek(String price) {
    return 'then \$$price/week';
  }

  @override
  String trialDays(int days) {
    return '$days日間のトライアル';
  }

  @override
  String get unlimitedDownload => '無制限のダウンロード';

  @override
  String get unlockFullPower => 'Unlock Full Power';

  @override
  String get upgradeNow => '今すぐアップグレード';

  @override
  String get userReviews => 'ユーザーレビュー';

  @override
  String get week => '週';

  @override
  String get weekly => '週額';

  @override
  String get yearly => '年額';

  @override
  String yearlyPrice(String price) {
    return '\$$price/year';
  }
}
