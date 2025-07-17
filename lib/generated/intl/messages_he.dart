// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'messages.dart';

// ignore_for_file: type=lint

/// The translations for Hebrew (`he`).
class PaywallLocalizationsHe extends PaywallLocalizations {
  PaywallLocalizationsHe([String locale = 'he']) : super(locale);

  @override
  String get adFree => 'ללא פרסומות';

  @override
  String get appOverview => 'סקירת אפליקציה';

  @override
  String appPro(String appName) {
    return '$appName פרו';
  }

  @override
  String get bestOffer => 'ההצעה הטובה ביותר';

  @override
  String get cancelAtAnyTime => 'ביטול בכל עת';

  @override
  String get chooseYourPlan => 'Choose Your Plan';

  @override
  String chargingInfoFreeTrial(
    String price,
    String freeTrialDay,
    String invoiceDuration,
  ) {
    return 'תחוייב ב-$price לאחר $freeTrialDay ימים $invoiceDuration עד לביטול.';
  }

  @override
  String chargingInfoLifeTime(String price) {
    return 'שלם $price פעם אחת עבור גישה לכל החיים. אין חיובים או מנויים נוספים.';
  }

  @override
  String chargingInfoStandart(String price, String invoiceDuration) {
    return 'יחויב מחדש אוטומטית לאחר $price כל $invoiceDuration עד לביטול.';
  }

  @override
  String get continueBtn => 'Continue';

  @override
  String get enableFreeTrial => 'Enable Free Trial';

  @override
  String get exclusiveFeatures => 'תכונות בלעדיות';

  @override
  String get free => 'חינם';

  @override
  String freeTrialDaysFree(String numDays) {
    return '$numDays ימים חינם';
  }

  @override
  String get freeTrialDesc =>
      'הגבר את היצירתיות שלך וקבל גישה בלתי מוגבלת עם מנוי פרימיום';

  @override
  String freeTrialPriceInfoText(
    String freeTrialDays,
    String priceString,
    String periodInvoiceStr,
  ) {
    return '$freeTrialDays ימים בחינם ואז $priceString/$periodInvoiceStr';
  }

  @override
  String get freeTrialProperty1Big => 'השתמש בתקופת הניסיון החינמית שלך';

  @override
  String get freeTrialProperty1Small => 'הפעל בקלות בלחיצה אחת';

  @override
  String get freeTrialProperty2Big => 'היום: פתח את כל התכונות מיד';

  @override
  String get freeTrialProperty2Small => 'גש לכל התכונות עכשיו';

  @override
  String get freeTrialProperty3Big => 'תזכורת לסיום הניסיון';

  @override
  String get freeTrialProperty3Small => 'נשלח לך התראה כשהניסיון שלך יסתיים';

  @override
  String get freeTrialProperty4Big => 'תהנה מהורדות בלתי מוגבלות';

  @override
  String get freeTrialProperty4Small => 'קל לשימוש ולהתאמה';

  @override
  String get freeTrialReminder => 'תזכיר לי לפני שפג תוקף הניסיון החינמי';

  @override
  String get getUnlimitedAccess => 'קבל גישה בלתי מוגבלת לכל התכונות!';

  @override
  String get hdQuality => 'איכות HD';

  @override
  String get lifetime => 'לכל החיים';

  @override
  String get monthly => 'חודשי';

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
  String get perWeek => ' / לשבוע';

  @override
  String percentOff(int percent) {
    return '$percent% הנחה';
  }

  @override
  String get popular => 'פופולרי';

  @override
  String get restorePurchases => 'Restore Purchases';

  @override
  String get save => 'שמור';

  @override
  String get seeAllOptions => 'ראה את כל האפשרויות';

  @override
  String get seeOtherOptions => 'ראה אפשרויות נוספות';

  @override
  String get shortTerm => 'טווח קצר';

  @override
  String get startFreeTrial => 'התחל ניסיון חינם';

  @override
  String thenPerWeek(String price) {
    return 'then \$$price/week';
  }

  @override
  String trialDays(int days) {
    return 'ניסיון ל-$days ימים';
  }

  @override
  String get unlimitedDownload => 'הורדה בלתי מוגבלת';

  @override
  String get unlockFullPower => 'Unlock Full Power';

  @override
  String get upgradeNow => 'שדרג עכשיו';

  @override
  String get userReviews => 'ביקורות משתמשים';

  @override
  String get week => 'שבוע';

  @override
  String get weekly => 'שבועי';

  @override
  String get yearly => 'שנתי';

  @override
  String yearlyPrice(String price) {
    return '\$$price/year';
  }
}
