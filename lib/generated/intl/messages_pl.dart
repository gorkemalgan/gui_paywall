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
  String get bestValue => 'NAJLEPSZA OFERTA';

  @override
  String get cancelAtAnyTime => 'Anuluj w dowolnym momencie';

  @override
  String chargingInfoFreeTrial(String price, String freeTrialDay, String invoiceDuration) {
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
  String get chooseYourPlan => 'Wybierz swój plan';

  @override
  String get continueBtn => 'Kontynuuj';

  @override
  String daysFreeTrial(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days dni darmowej wersji próbnej',
      one: '1 dzień darmowej wersji próbnej',
    );
    return '$_temp0';
  }

  @override
  String get enableFreeTrial => 'Aktywuj bezpłatny okres próbny';

  @override
  String get exclusiveFeatures => 'Ekskluzywne funkcje';

  @override
  String get free => 'Bezpłatne';

  @override
  String freeTrialDaysFree(String numDays) {
    return '$numDays dni ZA DARMO';
  }

  @override
  String get freeTrialDesc => 'Zwiększ swoją kreatywność i uzyskaj nieograniczony dostęp dzięki członkostwu premium';

  @override
  String freeTrialPriceInfoText(String freeTrialDays, String priceString, String periodInvoiceStr) {
    return '$freeTrialDays dni za darmo, a następnie $priceString/$periodInvoiceStr';
  }

  @override
  String get freeTrialProperty1Big => 'Skorzystaj z bezpłatnego okresu próbnego';

  @override
  String get freeTrialProperty1Small => 'Łatwo aktywuj jednym kliknięciem';

  @override
  String get freeTrialProperty2Big => 'Dzisiaj: natychmiast odblokuj wszystkie funkcje';

  @override
  String get freeTrialProperty2Small => 'Uzyskaj dostęp do wszystkich funkcji już teraz';

  @override
  String get freeTrialProperty3Big => 'Przypomnienie o zakończeniu okresu próbnego';

  @override
  String get freeTrialProperty3Small => 'Po zakończeniu okresu próbnego wyślemy Ci powiadomienie';

  @override
  String get freeTrialProperty4Big => 'Ciesz się nieograniczoną liczbą pobrań';

  @override
  String get freeTrialProperty4Small => 'Łatwy w użyciu i dostosowywaniu';

  @override
  String get freeTrialReminder => 'Przypomnij mi przed wygaśnięciem bezpłatnego okresu próbnego';

  @override
  String get getUnlimitedAccess => 'Uzyskaj nieograniczony dostęp do wszystkich funkcji!';

  @override
  String get hdQuality => 'Jakość HD';

  @override
  String get lifetime => 'Dożywotni';

  @override
  String get monthly => 'Miesięcznie';

  @override
  String monthlyPrice(String price) {
    return '$price/miesiąc';
  }

  @override
  String get notSureYet => 'Nie jesteś pewien?';

  @override
  String get otherPlans => 'Inne plany';

  @override
  String get paymentAgreement =>
      'Subskrypcje zostaną automatycznie odnowione, chyba że automatyczne renew jest wyłączone co najmniej 24 godziny przed końcem bieżącego okresu.Twoje konto zostanie naliczone zgodnie z planem odnowienia w ciągu 24 godzin przed końcem bieżącego okresu.Możesz zarządzać lub wyłączyć automatyczne renew w ustawieniach konta w dowolnym momencie po zakupie.';

  @override
  String get paymentAgreementFreeTrial =>
      'Płatność zostanie naliczona na Twoje konto na koniec bezpłatnego okresu próbnego.Możesz anulować w dowolnym momencie w bezpłatnym okresie próbnym i nie zostaną zastosowane żadne opłaty.';

  @override
  String get paymentFailed => 'Płatność nie powiodła się';

  @override
  String get paymentInfoPending =>
      'Twoja płatność jest w toku, prosimy o cierpliwość. W przypadku problemów skontaktuj się z nami pod adresem contact@everpixel.org.';

  @override
  String get paymentInfoTitle => 'Informacje o płatności';

  @override
  String get perWeek => ' / tydzień';

  @override
  String percentOff(int percent) {
    return '$percent% ZNIŻKI';
  }

  @override
  String get popular => 'Popularny';

  @override
  String get privacyPolicy => 'Polityka prywatności';

  @override
  String get restore => 'Przywrócić';

  @override
  String get restorePurchases => 'Przywróć zakupy';

  @override
  String peopleUsed7DayTrial(String count) {
    return '$count people have used the 7-day Trial in the last 24 hours!';
  }

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
  String get termsOfUse => 'Warunki korzystania';

  @override
  String thenPerWeek(String price) {
    return 'następnie $price/tydzień';
  }

  @override
  String trialDays(int days) {
    return '$days dni próbnych';
  }

  @override
  String get unlimitedDownload => 'Nieograniczone pobieranie';

  @override
  String get unlockFullPower => 'Odblokuj pełną wersję';

  @override
  String unlockFullPowerDescription(String appName) {
    return 'Odblokuj pełnię możliwości $appName – najlepszej aplikacji do edycji z AI.';
  }

  @override
  String get upgradeNow => 'Ulepsz teraz';

  @override
  String get userReviews => 'Recenzje użytkowników';

  @override
  String get week => 'Tydzień';

  @override
  String get weekly => 'Tygodniowo';

  @override
  String weeklyPrice(String price) {
    return '$price/tydzień';
  }

  @override
  String weeksFreeTrial(int weeks) {
    String _temp0 = intl.Intl.pluralLogic(
      weeks,
      locale: localeName,
      other: '$weeks tygodnie darmowej wersji próbnej',
      one: '1 tydzień darmowej wersji próbnej',
    );
    return '$_temp0';
  }

  @override
  String get yearly => 'Rocznie';

  @override
  String yearlyPrice(String price) {
    return '$price/rok';
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
