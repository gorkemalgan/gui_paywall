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
  String get bestValue => 'ΚΑΛΥΤΕΡΗ ΑΞΙΑ';

  @override
  String get cancelAtAnyTime => 'Ακύρωση οποιαδήποτε στιγμή';

  @override
  String chargingInfoFreeTrial(String price, String freeTrialDay, String invoiceDuration) {
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
  String get chooseYourPlan => 'Επιλέξτε το πρόγραμμά σας';

  @override
  String get continueBtn => 'Συνέχεια';

  @override
  String daysFreeTrial(int days) {
    String _temp0 = intl.Intl.pluralLogic(days, locale: localeName, other: '$days ημέρες δωρεάν δοκιμή', one: '1 ημέρα δωρεάν δοκιμή');
    return '$_temp0';
  }

  @override
  String get enableFreeTrial => 'Ενεργοποίηση δωρεάν δοκιμής';

  @override
  String get exclusiveFeatures => 'Αποκλειστικές Λειτουργίες';

  @override
  String get free => 'Δωρεάν';

  @override
  String freeTrialDaysFree(String numDays) {
    return '$numDays ημέρες ΔΩΡΕΑΝ';
  }

  @override
  String get freeTrialDesc => 'Ενισχύστε τη δημιουργικότητά σας και αποκτήστε απεριόριστη πρόσβαση με συνδρομή premium';

  @override
  String freeTrialPriceInfoText(String freeTrialDays, String priceString, String periodInvoiceStr) {
    return '$freeTrialDays ημέρες δωρεάν, μετά $priceString/$periodInvoiceStr';
  }

  @override
  String get freeTrialProperty1Big => 'Χρησιμοποιήστε την Περίοδο Δωρεάν Δοκιμής σας';

  @override
  String get freeTrialProperty1Small => 'Ενεργοποιήστε εύκολα με ένα κλικ';

  @override
  String get freeTrialProperty2Big => 'Σήμερα: Ξεκλειδώστε άμεσα όλες τις λειτουργίες';

  @override
  String get freeTrialProperty2Small => 'Πρόσβαση σε όλες τις λειτουργίες τώρα';

  @override
  String get freeTrialProperty3Big => 'Υπενθύμιση τέλους δοκιμής';

  @override
  String get freeTrialProperty3Small => 'Θα σας στείλουμε ειδοποίηση όταν λήξει η δοκιμή σας';

  @override
  String get freeTrialProperty4Big => 'Απολαύστε απεριόριστες λήψεις';

  @override
  String get freeTrialProperty4Small => 'Εύκολο στη χρήση και προσαρμογή';

  @override
  String get freeTrialReminder => 'Υπενθυμίστε μου πριν λήξει η δωρεάν δοκιμή';

  @override
  String get getUnlimitedAccess => 'Απεριόριστη πρόσβαση σε όλες τις λειτουργίες!';

  @override
  String get hdQuality => 'Ποιότητα HD';

  @override
  String get lifetime => 'Εφ\' όρου ζωής';

  @override
  String get monthly => 'Μηνιαία';

  @override
  String monthlyPrice(String price) {
    return '$price/μήνα';
  }

  @override
  String get notSureYet => 'Δεν είστε σίγουροι;';

  @override
  String get otherPlans => 'Άλλα προγράμματα';

  @override
  String get paymentAgreement =>
      'Οι συνδρομές θα ανανεώνονται αυτόματα εκτός αν η αυτόματη ανανέωση απενεργοποιηθεί τουλάχιστον 24 ώρες πριν το τέλος της τρέχουσας περιόδου. Ο λογαριασμός σας θα χρεωθεί σύμφωνα με το πλάνο σας για ανανέωση εντός 24 ωρών πριν το τέλος της τρέχουσας περιόδου. Μπορείτε να διαχειριστείτε ή να απενεργοποιήσετε την αυτόματη ανανέωση στις ρυθμίσεις του λογαριασμού σας οποιαδήποτε στιγμή μετά την αγορά.';

  @override
  String get paymentAgreementFreeTrial =>
      'Η πληρωμή θα χρεωθεί στον λογαριασμό σας στο τέλος της περιόδου δωρεάν δοκιμής. Μπορείτε να ακυρώσετε οποιαδήποτε στιγμή κατά τη διάρκεια της περιόδου δωρεάν δοκιμής και δεν θα εφαρμοστούν χρεώσεις.';

  @override
  String get paymentFailed => 'Η πληρωμή απέτυχε';

  @override
  String get paymentInfoPending =>
      'Η πληρωμή σας είναι υπό εκκρεμότητα, παρακαλώ περιμένετε. Αν αντιμετωπίσετε κάποιο πρόβλημα, επικοινωνήστε μαζί μας στο contact@everpixel.org.';

  @override
  String get paymentInfoTitle => 'Πληροφορίες Πληρωμής';

  @override
  String get perWeek => ' / εβδομάδα';

  @override
  String percentOff(int percent) {
    return 'ΈΚΠΤΩΣΗ $percent%';
  }

  @override
  String get popular => 'Δημοφιλή';

  @override
  String get privacyPolicy => 'Πολιτική Απορρήτου';

  @override
  String get restore => 'Επαναφορά';

  @override
  String get restorePurchases => 'Επαναφορά αγορών';

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
  String get termsOfUse => 'Όροι Χρήσης';

  @override
  String thenPerWeek(String price) {
    return 'μετά $price/εβδομάδα';
  }

  @override
  String trialDays(int days) {
    return '$days ημέρες δοκιμή';
  }

  @override
  String get unlimitedDownload => 'Απεριόριστες Λήψεις';

  @override
  String get unlockFullPower => 'Ξεκλειδώστε όλες τις δυνατότητες';

  @override
  String unlockFullPowerDescription(String appName) {
    return 'Ξεκλειδώστε τη δύναμη του $appName – η υπέρτατη εφαρμογή επεξεργασίας AI.';
  }

  @override
  String get upgradeNow => 'Αναβάθμιση τώρα';

  @override
  String get userReviews => 'Κριτικές Χρηστών';

  @override
  String get week => 'Εβδομάδα';

  @override
  String get weekly => 'Εβδομαδιαία';

  @override
  String weeklyPrice(String price) {
    return '$price/εβδομάδα';
  }

  @override
  String weeksFreeTrial(int weeks) {
    String _temp0 = intl.Intl.pluralLogic(weeks, locale: localeName, other: '$weeks εβδομάδες δωρεάν δοκιμή', one: '1 εβδομάδα δωρεάν δοκιμή');
    return '$_temp0';
  }

  @override
  String get yearly => 'Ετήσια';

  @override
  String yearlyPrice(String price) {
    return '$price/έτος';
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
