// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'messages.dart';

// ignore_for_file: type=lint

/// The translations for Modern Greek (`el`).
class PaywallLocalizationsEl extends PaywallLocalizations {
  PaywallLocalizationsEl([String locale = 'el']) : super(locale);

  @override
  String get adFree => 'Χωρίς διαφημίσεις';

  @override
  String get appOverview => 'Επισκόπηση Εφαρμογής';

  @override
  String appPro(String appName) {
    return '$appName Pro';
  }

  @override
  String get bestOffer => 'ΚΑΛΥΤΕΡΗ ΠΡΟΣΦΟΡΑ';

  @override
  String get cancelAtAnyTime => 'Ακύρωση οποιαδήποτε στιγμή';

  @override
  String get chooseYourPlan => 'Choose Your Plan';

  @override
  String chargingInfoFreeTrial(
    String price,
    String freeTrialDay,
    String invoiceDuration,
  ) {
    return 'Θα χρεωθείτε $price μετά από $freeTrialDay ημέρες $invoiceDuration εάν δεν ακυρωθεί.';
  }

  @override
  String chargingInfoLifeTime(String price) {
    return 'Πληρώστε $price μία φορά για ισόβια πρόσβαση. Χωρίς επιπλέον χρεώσεις ή συνδρομές.';
  }

  @override
  String chargingInfoStandart(String price, String invoiceDuration) {
    return 'Αυτόματη ανανέωση ανά $price ανά $invoiceDuration μέχρι να ακυρωθεί.';
  }

  @override
  String get continueBtn => 'Continue';

  @override
  String get enableFreeTrial => 'Enable Free Trial';

  @override
  String get exclusiveFeatures => 'Αποκλειστικές Λειτουργίες';

  @override
  String get free => 'Δωρεάν';

  @override
  String freeTrialDaysFree(String numDays) {
    return '$numDays ημέρες ΔΩΡΕΑΝ';
  }

  @override
  String get freeTrialDesc =>
      'Ενισχύστε τη δημιουργικότητά σας και αποκτήστε απεριόριστη πρόσβαση με συνδρομή premium';

  @override
  String freeTrialPriceInfoText(
    String freeTrialDays,
    String priceString,
    String periodInvoiceStr,
  ) {
    return '$freeTrialDays ημέρες δωρεάν, μετά $priceString/$periodInvoiceStr';
  }

  @override
  String get freeTrialProperty1Big =>
      'Χρησιμοποιήστε την Περίοδο Δωρεάν Δοκιμής σας';

  @override
  String get freeTrialProperty1Small => 'Ενεργοποιήστε εύκολα με ένα κλικ';

  @override
  String get freeTrialProperty2Big =>
      'Σήμερα: Ξεκλειδώστε άμεσα όλες τις λειτουργίες';

  @override
  String get freeTrialProperty2Small => 'Πρόσβαση σε όλες τις λειτουργίες τώρα';

  @override
  String get freeTrialProperty3Big => 'Υπενθύμιση τέλους δοκιμής';

  @override
  String get freeTrialProperty3Small =>
      'Θα σας στείλουμε ειδοποίηση όταν λήξει η δοκιμή σας';

  @override
  String get freeTrialProperty4Big => 'Απολαύστε απεριόριστες λήψεις';

  @override
  String get freeTrialProperty4Small => 'Εύκολο στη χρήση και προσαρμογή';

  @override
  String get freeTrialReminder => 'Υπενθυμίστε μου πριν λήξει η δωρεάν δοκιμή';

  @override
  String get getUnlimitedAccess =>
      'Απεριόριστη πρόσβαση σε όλες τις λειτουργίες!';

  @override
  String get hdQuality => 'Ποιότητα HD';

  @override
  String get lifetime => 'Εφ\' όρου ζωής';

  @override
  String get monthly => 'Μηνιαία';

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
  String get perWeek => ' / εβδομάδα';

  @override
  String percentOff(int percent) {
    return 'ΈΚΠΤΩΣΗ $percent%';
  }

  @override
  String get popular => 'Δημοφιλή';

  @override
  String get restorePurchases => 'Restore Purchases';

  @override
  String get save => 'Αποθήκευση';

  @override
  String get seeAllOptions => 'Δείτε Όλες τις Επιλογές';

  @override
  String get seeOtherOptions => 'Δείτε άλλες επιλογές';

  @override
  String get shortTerm => 'ΒΡΑΧΥΠΡΟΘΕΣΜΟ';

  @override
  String get startFreeTrial => 'Έναρξη Δωρεάν Δοκιμής';

  @override
  String thenPerWeek(String price) {
    return 'then \$$price/week';
  }

  @override
  String trialDays(int days) {
    return '$days ημέρες δοκιμή';
  }

  @override
  String get unlimitedDownload => 'Απεριόριστες Λήψεις';

  @override
  String get unlockFullPower => 'Unlock Full Power';

  @override
  String get upgradeNow => 'Αναβάθμιση τώρα';

  @override
  String get userReviews => 'Κριτικές Χρηστών';

  @override
  String get week => 'Εβδομάδα';

  @override
  String get weekly => 'Εβδομαδιαία';

  @override
  String get yearly => 'Ετήσια';

  @override
  String yearlyPrice(String price) {
    return '\$$price/year';
  }
}
