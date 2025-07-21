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
  String get bestValue => 'המבצע המשתלם ביותר';

  @override
  String get cancelAtAnyTime => 'ביטול בכל עת';

  @override
  String chargingInfoFreeTrial(String price, String freeTrialDay, String invoiceDuration) {
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
  String get chooseYourPlan => 'בחר את התוכנית שלך';

  @override
  String get continueBtn => 'המשך';

  @override
  String daysFreeTrial(int days) {
    String _temp0 = intl.Intl.pluralLogic(days, locale: localeName, other: '$days ימי ניסיון חינמיים', one: 'יום ניסיון חינמי אחד');
    return '$_temp0';
  }

  @override
  String get enableFreeTrial => 'הפעל ניסיון חינם';

  @override
  String get exclusiveFeatures => 'תכונות בלעדיות';

  @override
  String get free => 'חינם';

  @override
  String freeTrialDaysFree(String numDays) {
    return '$numDays ימים חינם';
  }

  @override
  String get freeTrialDesc => 'הגבר את היצירתיות שלך וקבל גישה בלתי מוגבלת עם מנוי פרימיום';

  @override
  String freeTrialPriceInfoText(String freeTrialDays, String priceString, String periodInvoiceStr) {
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
  String monthlyPrice(String price) {
    return '$price/חודש';
  }

  @override
  String get notSureYet => 'עדיין לא בטוח?';

  @override
  String get otherPlans => 'תוכניות אחרות';

  @override
  String get paymentAgreement =>
      'המנויים יחודשו אוטומטית אלא אם ביטול החידוש האוטומטי יתבצע לפחות 24 שעות לפני תום התקופה הנוכחית. החשבון שלך יחויב בהתאם לתוכנית שלך לחידוש בתוך 24 שעות לפני תום התקופה הנוכחית. תוכל לנהל או לבטל את החידוש האוטומטי בהגדרות החשבון שלך בכל עת לאחר הרכישה.';

  @override
  String get paymentAgreementFreeTrial =>
      'התשלום יחויב לחשבונך בסוף תקופת הניסיון החינמי. תוכל לבטל בכל עת במהלך תקופת הניסיון החינמי ולא ייגבו חיובים.';

  @override
  String get paymentFailed => 'התשלום נכשל';

  @override
  String get paymentInfoPending => 'התשלום שלך ממתין, אנא המתן. אם נתקלת בבעיה, צור קשר בכתובת contact@everpixel.org.';

  @override
  String get paymentInfoTitle => 'פרטי תשלום';

  @override
  String get perWeek => ' / לשבוע';

  @override
  String percentOff(int percent) {
    return '$percent% הנחה';
  }

  @override
  String get popular => 'פופולרי';

  @override
  String get privacyPolicy => 'מדיניות פרטיות';

  @override
  String get restore => 'שחזר';

  @override
  String get restorePurchases => 'שחזר רכישות';

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
  String get termsOfUse => 'תנאי שימוש';

  @override
  String thenPerWeek(String price) {
    return 'לאחר מכן $price/שבוע';
  }

  @override
  String trialDays(int days) {
    return 'ניסיון ל-$days ימים';
  }

  @override
  String get unlimitedDownload => 'הורדה בלתי מוגבלת';

  @override
  String get unlockFullPower => 'פתח את כל הפונקציות';

  @override
  String unlockFullPowerDescription(String appName) {
    return 'פתח את מלוא העוצמה של $appName – אפליקציית עריכת ה-AI האולטימטיבית.';
  }

  @override
  String get upgradeNow => 'שדרג עכשיו';

  @override
  String get userReviews => 'ביקורות משתמשים';

  @override
  String get week => 'שבוע';

  @override
  String get weekly => 'שבועי';

  @override
  String weeklyPrice(String price) {
    return '$price/שבוע';
  }

  @override
  String weeksFreeTrial(int weeks) {
    String _temp0 = intl.Intl.pluralLogic(weeks, locale: localeName, other: '$weeks שבועות ניסיון חינמיים', one: 'שבוע ניסיון חינמי אחד');
    return '$_temp0';
  }

  @override
  String get yearly => 'שנתי';

  @override
  String yearlyPrice(String price) {
    return '$price/שנה';
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
