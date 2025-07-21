// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'messages.dart';

// ignore_for_file: type=lint

/// The translations for Ukrainian (`uk`).
class PaywallLocalizationsUk extends PaywallLocalizations {
  PaywallLocalizationsUk([String locale = 'uk']) : super(locale);

  @override
  String get adFree => 'Без реклами';

  @override
  String get appOverview => 'Огляд програми';

  @override
  String appPro(String appName) {
    return '$appName Pro';
  }

  @override
  String get bestOffer => 'НАЙКРАЩА ПРОПОЗИЦІЯ';

  @override
  String get bestValue => 'НАЙКРАЩА ЦІННІСТЬ';

  @override
  String get cancelAtAnyTime => 'Скасувати в будь-який час';

  @override
  String chargingInfoFreeTrial(String price, String freeTrialDay, String invoiceDuration) {
    return 'З вас буде стягнуто $price через $freeTrialDay днів $invoiceDuration до скасування.';
  }

  @override
  String chargingInfoLifeTime(String price) {
    return 'Заплатіть $price один раз за довічний доступ. Жодних додаткових оплат чи підписок.';
  }

  @override
  String chargingInfoStandart(String price, String invoiceDuration) {
    return 'Автоматично поновлюється $price кожен $invoiceDuration до скасування.';
  }

  @override
  String get chooseYourPlan => 'Оберіть свій план';

  @override
  String get continueBtn => 'Продовжити';

  @override
  String daysFreeTrial(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days дні(в) безкоштовної пробної версії',
      one: '1 день безкоштовної пробної версії',
    );
    return '$_temp0';
  }

  @override
  String get enableFreeTrial => 'Увімкнути пробний період';

  @override
  String get exclusiveFeatures => 'Ексклюзивні функції';

  @override
  String get free => 'Безкоштовно';

  @override
  String freeTrialDaysFree(String numDays) {
    return '$numDays днів БЕЗКОШТОВНО';
  }

  @override
  String get freeTrialDesc => 'Розвивайте свою творчість і отримайте необмежений доступ за допомогою преміум-членства';

  @override
  String freeTrialPriceInfoText(String freeTrialDays, String priceString, String periodInvoiceStr) {
    return '$freeTrialDays днів безкоштовно, потім $priceString/$periodInvoiceStr';
  }

  @override
  String get freeTrialProperty1Big => 'Скористайтеся безкоштовним пробним періодом';

  @override
  String get freeTrialProperty1Small => 'Легко активуйте одним клацанням миші';

  @override
  String get freeTrialProperty2Big => 'Сьогодні: миттєво розблокуйте всі функції';

  @override
  String get freeTrialProperty2Small => 'Доступ до всіх функцій зараз';

  @override
  String get freeTrialProperty3Big => 'Нагадування про закінчення судового розгляду';

  @override
  String get freeTrialProperty3Small => 'Ми надішлемо вам сповіщення, коли ваш пробний період закінчиться';

  @override
  String get freeTrialProperty4Big => 'Насолоджуйтесь необмеженими завантаженнями';

  @override
  String get freeTrialProperty4Small => 'Простий у використанні та налаштуванні';

  @override
  String get freeTrialReminder => 'Нагадати мені до закінчення безкоштовного пробного періоду';

  @override
  String get getUnlimitedAccess => 'Отримайте необмежений доступ до всіх функцій!';

  @override
  String get hdQuality => 'Якість HD';

  @override
  String get lifetime => 'Пожиттєво';

  @override
  String get monthly => 'Щомісяця';

  @override
  String monthlyPrice(String price) {
    return '$price/місяць';
  }

  @override
  String get notSureYet => 'Ще не впевнені?';

  @override
  String get otherPlans => 'Інші плани';

  @override
  String get paymentAgreement =>
      'Підписки автоматично поновлюються, якщо автоматичне поновлення не буде вимкнено щонайменше за 24 години до кінця поточного періоду.Ваш рахунок стягується згідно з вашим планом поновлення протягом 24 годин до закінчення поточного періоду.Ви можете керувати або відключити автоматичне відновлення у налаштуваннях свого рахунку в будь-який час після покупки.';

  @override
  String get paymentAgreementFreeTrial =>
      'Оплата стягується на ваш рахунок наприкінці безкоштовного пробного періоду.Ви можете скасувати в будь -який час протягом безкоштовного пробного періоду, і збори не застосовуватимуться.';

  @override
  String get paymentFailed => 'Платіж не виконано';

  @override
  String get paymentInfoPending =>
      'Ваш платіж в обробці, будь ласка, зачекайте. Якщо ви зіткнулися з проблемами, зверніться до нас за адресою contact@everpixel.org.';

  @override
  String get paymentInfoTitle => 'Інформація про оплату';

  @override
  String get perWeek => ' / тиждень';

  @override
  String percentOff(int percent) {
    return '$percent% ЗНИЖКА';
  }

  @override
  String get popular => 'Популярний';

  @override
  String get privacyPolicy => 'Політика конфіденційності';

  @override
  String get restore => 'Відновлення';

  @override
  String get restorePurchases => 'Відновити покупки';

  @override
  String peopleUsed7DayTrial(String count) {
    return '$count people have used the 7-day Trial in the last 24 hours!';
  }

  @override
  String get save => 'Заощадити';

  @override
  String get seeAllOptions => 'Дивіться всі варіанти';

  @override
  String get seeOtherOptions => 'Інші варіанти';

  @override
  String get shortTerm => 'КОРОТКИЙ ТЕРМІН';

  @override
  String get startFreeTrial => 'Почніть безкоштовну пробну версію';

  @override
  String get termsOfUse => 'Умови використання';

  @override
  String thenPerWeek(String price) {
    return 'потім $price/тиждень';
  }

  @override
  String trialDays(int days) {
    return '$days днів пробного періоду';
  }

  @override
  String get unlimitedDownload => 'Необмежене завантаження';

  @override
  String get unlockFullPower => 'Відкрийте повну потужність';

  @override
  String unlockFullPowerDescription(String appName) {
    return 'Розблокуйте повну потужність $appName — найкращого AI-редактора.';
  }

  @override
  String get upgradeNow => 'Оновити зараз';

  @override
  String get userReviews => 'Відгуки користувачів';

  @override
  String get week => 'Тиждень';

  @override
  String get weekly => 'Щотижня';

  @override
  String weeklyPrice(String price) {
    return '$price/тиждень';
  }

  @override
  String weeksFreeTrial(int weeks) {
    String _temp0 = intl.Intl.pluralLogic(
      weeks,
      locale: localeName,
      other: '$weeks тижні(в) безкоштовної пробної версії',
      one: '1 тиждень безкоштовної пробної версії',
    );
    return '$_temp0';
  }

  @override
  String get yearly => 'Щорічно';

  @override
  String yearlyPrice(String price) {
    return '$price/рік';
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
