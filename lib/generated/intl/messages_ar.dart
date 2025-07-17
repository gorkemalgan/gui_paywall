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
  String get bestValue => 'أفضل قيمة';

  @override
  String get cancelAtAnyTime => 'يمكنك الإلغاء في أي وقت';

  @override
  String chargingInfoFreeTrial(String price, String freeTrialDay, String invoiceDuration) {
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
  String get chooseYourPlan => 'اختر خطتك';

  @override
  String get continueBtn => 'استمر';

  @override
  String daysFreeTrial(int days) {
    String _temp0 = intl.Intl.pluralLogic(days, locale: localeName, other: '$days أيام تجريبية مجانية', one: 'يوم تجريبي مجاني');
    return '$_temp0';
  }

  @override
  String get enableFreeTrial => 'تفعيل النسخة التجريبية المجانية';

  @override
  String get exclusiveFeatures => 'ميزات حصرية';

  @override
  String get free => 'مجاني';

  @override
  String freeTrialDaysFree(String numDays) {
    return '$numDays يوماً مجاناً';
  }

  @override
  String get freeTrialDesc => 'عزز إبداعك واحصل على وصول غير محدود مع عضوية بريميوم';

  @override
  String freeTrialPriceInfoText(String freeTrialDays, String priceString, String periodInvoiceStr) {
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
  String monthlyPrice(String price) {
    return '$price/شهر';
  }

  @override
  String get notSureYet => 'لست متأكدًا بعد؟';

  @override
  String get otherPlans => 'خطط أخرى';

  @override
  String get paymentAgreement =>
      'سيتم تجديد الاشتراكات تلقائيًا ما لم يتم إيقاف التجديد التلقائي قبل 24 ساعة على الأقل من نهاية الفترة الحالية. سيتم خصم المبلغ من حسابك وفقًا لخطة التجديد الخاصة بك خلال 24 ساعة قبل نهاية الفترة الحالية. يمكنك إدارة أو إيقاف التجديد التلقائي في إعدادات حسابك في أي وقت بعد الشراء.';

  @override
  String get paymentAgreementFreeTrial =>
      'سيتم خصم المبلغ من حسابك في نهاية الفترة التجريبية المجانية. يمكنك الإلغاء في أي وقت خلال الفترة التجريبية المجانية ولن يتم تطبيق أي رسوم.';

  @override
  String get paymentFailed => 'فشل الدفع';

  @override
  String get paymentInfoPending => 'دفعتك قيد الانتظار، يُرجى الانتظار. إذا واجهت مشكلة، يُرجى الاتصال بنا على contact@everpixel.org.';

  @override
  String get paymentInfoTitle => 'معلومات الدفع';

  @override
  String get perWeek => ' / أسبوع';

  @override
  String percentOff(int percent) {
    return '$percent% خصم';
  }

  @override
  String get popular => 'شائع';

  @override
  String get privacyPolicy => 'سياسة الخصوصية';

  @override
  String get restore => 'استعادة';

  @override
  String get restorePurchases => 'استعادة المشتريات';

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
  String get termsOfUse => 'شروط الاستخدام';

  @override
  String thenPerWeek(String price) {
    return 'ثم $price/أسبوع';
  }

  @override
  String trialDays(int days) {
    return 'تجربة لمدة $days يومًا';
  }

  @override
  String get unlimitedDownload => 'تنزيل غير محدود';

  @override
  String get unlockFullPower => 'افتح جميع الميزات';

  @override
  String unlockFullPowerDescription(String appName) {
    return 'قم بإلغاء قفل القوة الكاملة لتطبيق $appName – أفضل تطبيق لتحرير الذكاء الاصطناعي.';
  }

  @override
  String get upgradeNow => 'قم بالترقية الآن';

  @override
  String get userReviews => 'مراجعات المستخدمين';

  @override
  String get week => 'أسبوع';

  @override
  String get weekly => 'أسبوعي';

  @override
  String weeklyPrice(String price) {
    return '$price/أسبوع';
  }

  @override
  String weeksFreeTrial(int weeks) {
    String _temp0 = intl.Intl.pluralLogic(weeks, locale: localeName, other: '$weeks أسابيع تجريبية مجانية', one: 'أسبوع تجريبي مجاني');
    return '$_temp0';
  }

  @override
  String get yearly => 'سنوي';

  @override
  String yearlyPrice(String price) {
    return '$price/سنة';
  }

  @override
  String trialUserCountText(String userCount, String hours) {
    return '$userCount people started a trial in the last $hours hours!';
  }
}
