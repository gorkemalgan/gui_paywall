// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'messages.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class PaywallLocalizationsAr extends PaywallLocalizations {
  PaywallLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get adFree => 'بدون إعلانات';

  @override
  String get appOverview => 'نظرة عامة على التطبيق';

  @override
  String appPro(String appName) {
    return '$appName برو';
  }

  @override
  String get bestOffer => 'أفضل عرض';

  @override
  String get cancelAtAnyTime => 'يمكنك الإلغاء في أي وقت';

  @override
  String get chooseYourPlan => 'Choose Your Plan';

  @override
  String chargingInfoFreeTrial(
    String price,
    String freeTrialDay,
    String invoiceDuration,
  ) {
    return 'سيتم خصم $price بعد $freeTrialDay أيام $invoiceDuration حتى يتم الإلغاء.';
  }

  @override
  String chargingInfoLifeTime(String price) {
    return 'ادفع $price مرة واحدة للوصول مدى الحياة. لا رسوم إضافية أو اشتراكات.';
  }

  @override
  String chargingInfoStandart(String price, String invoiceDuration) {
    return 'تجديد تلقائي لـ $price كل $invoiceDuration حتى يتم الإلغاء.';
  }

  @override
  String get continueBtn => 'Continue';

  @override
  String get enableFreeTrial => 'Enable Free Trial';

  @override
  String get exclusiveFeatures => 'ميزات حصرية';

  @override
  String get free => 'مجاني';

  @override
  String freeTrialDaysFree(String numDays) {
    return '$numDays يوماً مجاناً';
  }

  @override
  String get freeTrialDesc =>
      'عزز إبداعك واحصل على وصول غير محدود مع عضوية بريميوم';

  @override
  String freeTrialPriceInfoText(
    String freeTrialDays,
    String priceString,
    String periodInvoiceStr,
  ) {
    return '$freeTrialDays يومًا مجانيًا، ثم $priceString/$periodInvoiceStr';
  }

  @override
  String get freeTrialProperty1Big => 'استخدم فترة التجربة المجانية الخاصة بك';

  @override
  String get freeTrialProperty1Small => 'قم بالتفعيل بسهولة بنقرة واحدة';

  @override
  String get freeTrialProperty2Big => 'اليوم: افتح جميع الميزات فورًا';

  @override
  String get freeTrialProperty2Small => 'احصل على وصول إلى جميع الميزات الآن';

  @override
  String get freeTrialProperty3Big => 'تذكير بانتهاء التجربة';

  @override
  String get freeTrialProperty3Small => 'سنرسل لك إشعارًا عند انتهاء التجربة';

  @override
  String get freeTrialProperty4Big => 'استمتع بتنزيلات غير محدودة';

  @override
  String get freeTrialProperty4Small => 'سهل الاستخدام والتخصيص';

  @override
  String get freeTrialReminder => 'ذكرني قبل انتهاء الفترة التجريبية المجانية';

  @override
  String get getUnlimitedAccess => 'احصل على وصول غير محدود إلى جميع الميزات!';

  @override
  String get hdQuality => 'جودة عالية الوضوح';

  @override
  String get lifetime => 'مدى الحياة';

  @override
  String get monthly => 'شهري';

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
  String get perWeek => ' / أسبوع';

  @override
  String percentOff(int percent) {
    return '$percent% خصم';
  }

  @override
  String get popular => 'شائع';

  @override
  String get restorePurchases => 'Restore Purchases';

  @override
  String get save => 'حفظ';

  @override
  String get seeAllOptions => 'عرض جميع الخيارات';

  @override
  String get seeOtherOptions => 'عرض خيارات أخرى';

  @override
  String get shortTerm => 'مدى قصير';

  @override
  String get startFreeTrial => 'ابدأ التجربة المجانية';

  @override
  String thenPerWeek(String price) {
    return 'then \$$price/week';
  }

  @override
  String trialDays(int days) {
    return 'تجربة لمدة $days يومًا';
  }

  @override
  String get unlimitedDownload => 'تنزيل غير محدود';

  @override
  String get unlockFullPower => 'Unlock Full Power';

  @override
  String get upgradeNow => 'قم بالترقية الآن';

  @override
  String get userReviews => 'مراجعات المستخدمين';

  @override
  String get week => 'أسبوع';

  @override
  String get weekly => 'أسبوعي';

  @override
  String get yearly => 'سنوي';

  @override
  String yearlyPrice(String price) {
    return '\$$price/year';
  }
}
