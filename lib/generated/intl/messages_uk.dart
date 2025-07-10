// ignore: unused_import

// Package imports:
import 'package:intl/intl.dart' as intl;

// Project imports:
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
  String get cancelAtAnyTime => 'Скасувати в будь-який час';

  @override
  String get chooseYourPlan => 'Choose Your Plan';

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
  String get continueBtn => 'Continue';

  @override
  String get enableFreeTrial => 'Enable Free Trial';

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
  String get notSureYet => 'Not Sure Yet?';

  @override
  String weekFreeTrial(int weeks) {
    String _temp0 = intl.Intl.pluralLogic(weeks, locale: localeName, other: '$weeks weeks free trial', one: '1 week free trial');
    return '$_temp0';
  }

  @override
  String get otherPlans => 'Other plans';

  @override
  String get perWeek => ' / тиждень';

  @override
  String percentOff(int percent) {
    return '$percent% ЗНИЖКА';
  }

  @override
  String get popular => 'Популярний';

  @override
  String get restorePurchases => 'Restore Purchases';

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
  String thenPerWeek(String price) {
    return 'then \$$price/week';
  }

  @override
  String trialDays(int days) {
    return '$days днів пробного періоду';
  }

  @override
  String get unlimitedDownload => 'Необмежене завантаження';

  @override
  String get unlockFullPower => 'Unlock Full Power';

  @override
  String get upgradeNow => 'Оновити зараз';

  @override
  String get userReviews => 'Відгуки користувачів';

  @override
  String get week => 'Тиждень';

  @override
  String get weekly => 'Щотижня';

  @override
  String get yearly => 'Щорічно';

  @override
  String yearlyPrice(String price) {
    return '\$$price/year';
  }
}
