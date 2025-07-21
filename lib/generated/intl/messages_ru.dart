// ignore: unused_import
import 'package:intl/intl.dart' as intl;
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
  String get bestValue => 'ЛУЧШАЯ ЦЕНА';

  @override
  String get cancelAtAnyTime => 'Отменить в любое время';

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
  String get chooseYourPlan => 'Выберите план';

  @override
  String get continueBtn => 'Продолжить';

  @override
  String daysFreeTrial(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days дней бесплатной пробной версии',
      one: '1 день бесплатной пробной версии',
    );
    return '$_temp0';
  }

  @override
  String get enableFreeTrial => 'Включить бесплатную пробную версию';

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
  String monthlyPrice(String price) {
    return '$price/мес';
  }

  @override
  String get notSureYet => 'Пока не уверены?';

  @override
  String get otherPlans => 'Другие планы';

  @override
  String get paymentAgreement =>
      'Подписки автоматически продлятся, если авто-продление не будет выключено не менее чем за 24 часа до конца текущего периода.Ваш счет будет взиматься в соответствии с вашим планом об продлении в течение 24 часов до конца текущего периода.Вы можете управлять или отключить автоматическое обновление в настройках своей учетной записи в любое время после покупки.';

  @override
  String get paymentAgreementFreeTrial =>
      'Оплата будет взиматься с вашей учетной записи в конце бесплатного пробного периода.Вы можете отменить в любое время в течение бесплатного пробного периода, и плата не будет применяться.';

  @override
  String get paymentFailed => 'Платеж не выполнен';

  @override
  String get paymentInfoPending =>
      'Ваш платеж находится в обработке, пожалуйста, подождите. Если у вас возникли проблемы, свяжитесь с нами по адресу contact@everpixel.org.';

  @override
  String get paymentInfoTitle => 'Информация о платеже';

  @override
  String get perWeek => ' / неделя';

  @override
  String percentOff(int percent) {
    return 'Скидка $percent%';
  }

  @override
  String get popular => 'Популярный';

  @override
  String get privacyPolicy => 'Политика конфиденциальности';

  @override
  String get restore => 'Восстановить';

  @override
  String get restorePurchases => 'Восстановить покупки';

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
  String get termsOfUse => 'Условия эксплуатации';

  @override
  String thenPerWeek(String price) {
    return 'затем $price/неделя';
  }

  @override
  String trialDays(int days) {
    return '$days дней пробного периода';
  }

  @override
  String get unlimitedDownload => 'Неограниченная загрузка';

  @override
  String get unlockFullPower => 'Разблокируйте все функции';

  @override
  String unlockFullPowerDescription(String appName) {
    return 'Разблокируйте всю мощь $appName — лучшего редактора с ИИ.';
  }

  @override
  String get upgradeNow => 'Обновить сейчас';

  @override
  String get userReviews => 'Отзывы пользователей';

  @override
  String get week => 'Неделя';

  @override
  String get weekly => 'Еженедельно';

  @override
  String weeklyPrice(String price) {
    return '$price/неделя';
  }

  @override
  String weeksFreeTrial(int weeks) {
    String _temp0 = intl.Intl.pluralLogic(
      weeks,
      locale: localeName,
      other: '$weeks недели бесплатной пробной версии',
      one: '1 неделя бесплатной пробной версии',
    );
    return '$_temp0';
  }

  @override
  String get yearly => 'Ежегодно';

  @override
  String yearlyPrice(String price) {
    return '$price/год';
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
