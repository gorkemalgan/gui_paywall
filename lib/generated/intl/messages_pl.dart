// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'messages.dart';

// ignore_for_file: type=lint

/// The translations for Polish (`pl`).
class PaywallLocalizationsPl extends PaywallLocalizations {
  PaywallLocalizationsPl([String locale = 'pl']) : super(locale);

  @override
  String get adFree => 'Bez reklam';

  @override
  String get appOverview => 'Przegląd aplikacji';

  @override
  String appPro(String appName) {
    return '$appName Pro';
  }

  @override
  String get bestOffer => 'NAJLEPSZA OFERTA';

  @override
  String get cancelAtAnyTime => 'Anuluj w dowolnym momencie';

  @override
  String get chooseYourPlan => 'Choose Your Plan';

  @override
  String chargingInfoFreeTrial(
    String price,
    String freeTrialDay,
    String invoiceDuration,
  ) {
    return 'Obciążymy Cię $price po $freeTrialDay dniach $invoiceDuration, dopóki nie anulujesz.';
  }

  @override
  String chargingInfoLifeTime(String price) {
    return 'Zapłać raz $price, aby uzyskać dostęp na całe życie. Bez dodatkowych opłat i subskrypcji.';
  }

  @override
  String chargingInfoStandart(String price, String invoiceDuration) {
    return 'Odnawiane automatycznie za $price co $invoiceDuration, dopóki nie zostanie anulowane.';
  }

  @override
  String get continueBtn => 'Continue';

  @override
  String get enableFreeTrial => 'Enable Free Trial';

  @override
  String get exclusiveFeatures => 'Ekskluzywne funkcje';

  @override
  String get free => 'Bezpłatne';

  @override
  String freeTrialDaysFree(String numDays) {
    return '$numDays dni ZA DARMO';
  }

  @override
  String get freeTrialDesc =>
      'Zwiększ swoją kreatywność i uzyskaj nieograniczony dostęp dzięki członkostwu premium';

  @override
  String freeTrialPriceInfoText(
    String freeTrialDays,
    String priceString,
    String periodInvoiceStr,
  ) {
    return '$freeTrialDays dni za darmo, a następnie $priceString/$periodInvoiceStr';
  }

  @override
  String get freeTrialProperty1Big =>
      'Skorzystaj z bezpłatnego okresu próbnego';

  @override
  String get freeTrialProperty1Small => 'Łatwo aktywuj jednym kliknięciem';

  @override
  String get freeTrialProperty2Big =>
      'Dzisiaj: natychmiast odblokuj wszystkie funkcje';

  @override
  String get freeTrialProperty2Small =>
      'Uzyskaj dostęp do wszystkich funkcji już teraz';

  @override
  String get freeTrialProperty3Big =>
      'Przypomnienie o zakończeniu okresu próbnego';

  @override
  String get freeTrialProperty3Small =>
      'Po zakończeniu okresu próbnego wyślemy Ci powiadomienie';

  @override
  String get freeTrialProperty4Big => 'Ciesz się nieograniczoną liczbą pobrań';

  @override
  String get freeTrialProperty4Small => 'Łatwy w użyciu i dostosowywaniu';

  @override
  String get freeTrialReminder =>
      'Przypomnij mi przed wygaśnięciem bezpłatnego okresu próbnego';

  @override
  String get getUnlimitedAccess =>
      'Uzyskaj nieograniczony dostęp do wszystkich funkcji!';

  @override
  String get hdQuality => 'Jakość HD';

  @override
  String get lifetime => 'Dożywotni';

  @override
  String get monthly => 'Miesięcznie';

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
  String get perWeek => ' / tydzień';

  @override
  String percentOff(int percent) {
    return '$percent% ZNIŻKI';
  }

  @override
  String get popular => 'Popularny';

  @override
  String get restorePurchases => 'Restore Purchases';

  @override
  String get save => 'Ratować';

  @override
  String get seeAllOptions => 'Zobacz wszystkie opcje';

  @override
  String get seeOtherOptions => 'Zobacz inne opcje';

  @override
  String get shortTerm => 'KRÓTKOTERMINOWY';

  @override
  String get startFreeTrial => 'Rozpocznij darmowy okres próbny';

  @override
  String thenPerWeek(String price) {
    return 'then \$$price/week';
  }

  @override
  String trialDays(int days) {
    return '$days dni próbnych';
  }

  @override
  String get unlimitedDownload => 'Nieograniczone pobieranie';

  @override
  String get unlockFullPower => 'Unlock Full Power';

  @override
  String get upgradeNow => 'Ulepsz teraz';

  @override
  String get userReviews => 'Recenzje użytkowników';

  @override
  String get week => 'Tydzień';

  @override
  String get weekly => 'Tygodniowo';

  @override
  String get yearly => 'Rocznie';

  @override
  String yearlyPrice(String price) {
    return '\$$price/year';
  }
}
