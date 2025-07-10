// ignore: unused_import

// Package imports:
import 'package:intl/intl.dart' as intl;

// Project imports:
import 'messages.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class PaywallLocalizationsRu extends PaywallLocalizations {
  PaywallLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get adFree => 'Без рекламы';

  @override
  String get appOverview => 'Обзор приложения';

  @override
  String appPro(String appName) {
    return '$appName Pro';
  }

  @override
  String get bestOffer => 'ЛУЧШЕЕ ПРЕДЛОЖЕНИЕ';

  @override
  String get cancelAtAnyTime => 'Отменить в любое время';

  @override
  String get chooseYourPlan => 'Choose Your Plan';

  @override
  String chargingInfoFreeTrial(String price, String freeTrialDay, String invoiceDuration) {
    return 'С вас будет взиматься $price через $freeTrialDay дней $invoiceDuration до отмены.';
  }

  @override
  String chargingInfoLifeTime(String price) {
    return 'Заплатите $price один раз за пожизненный доступ. Никаких дополнительных платежей или подписок.';
  }

  @override
  String chargingInfoStandart(String price, String invoiceDuration) {
    return 'Автоматическое продление за $price каждые $invoiceDuration до отмены.';
  }

  @override
  String get continueBtn => 'Continue';

  @override
  String get enableFreeTrial => 'Enable Free Trial';

  @override
  String get exclusiveFeatures => 'Эксклюзивные функции';

  @override
  String get free => 'Бесплатно';

  @override
  String freeTrialDaysFree(String numDays) {
    return '$numDays дней БЕСПЛАТНО';
  }

  @override
  String get freeTrialDesc => 'Расширьте свой творческий потенциал и получите неограниченный доступ с премиум-членством';

  @override
  String freeTrialPriceInfoText(String freeTrialDays, String priceString, String periodInvoiceStr) {
    return '$freeTrialDays дней бесплатно, затем $priceString/$periodInvoiceStr';
  }

  @override
  String get freeTrialProperty1Big => 'Используйте бесплатный пробный период';

  @override
  String get freeTrialProperty1Small => 'Легко активировать одним щелчком мыши';

  @override
  String get freeTrialProperty2Big => 'Сегодня: Мгновенно разблокируйте все функции.';

  @override
  String get freeTrialProperty2Small => 'Получите доступ ко всем функциям прямо сейчас';

  @override
  String get freeTrialProperty3Big => 'Напоминание об окончании пробного периода';

  @override
  String get freeTrialProperty3Small => 'Мы отправим вам уведомление, когда пробный период закончится';

  @override
  String get freeTrialProperty4Big => 'Наслаждайтесь неограниченными загрузками';

  @override
  String get freeTrialProperty4Small => 'Простота в использовании и настройке';

  @override
  String get freeTrialReminder => 'Напомните мне до истечения срока действия бесплатной пробной версии';

  @override
  String get getUnlimitedAccess => 'Получите неограниченный доступ ко всем функциям!';

  @override
  String get hdQuality => 'HD-качество';

  @override
  String get lifetime => 'Пожизненная';

  @override
  String get monthly => 'Ежемесячно';

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
  String get perWeek => ' / неделя';

  @override
  String percentOff(int percent) {
    return 'Скидка $percent%';
  }

  @override
  String get popular => 'Популярный';

  @override
  String get restorePurchases => 'Restore Purchases';

  @override
  String get save => 'Сохранять';

  @override
  String get seeAllOptions => 'Смотрите все варианты';

  @override
  String get seeOtherOptions => 'Смотреть другие варианты';

  @override
  String get shortTerm => 'КОРОТКИЙ СРОК';

  @override
  String get startFreeTrial => 'Начните бесплатную пробную версию';

  @override
  String thenPerWeek(String price) {
    return 'then \$$price/week';
  }

  @override
  String trialDays(int days) {
    return '$days дней пробного периода';
  }

  @override
  String get unlimitedDownload => 'Неограниченная загрузка';

  @override
  String get unlockFullPower => 'Unlock Full Power';

  @override
  String get upgradeNow => 'Обновить сейчас';

  @override
  String get userReviews => 'Отзывы пользователей';

  @override
  String get week => 'Неделя';

  @override
  String get weekly => 'Еженедельно';

  @override
  String get yearly => 'Ежегодно';

  @override
  String yearlyPrice(String price) {
    return '\$$price/year';
  }
}
