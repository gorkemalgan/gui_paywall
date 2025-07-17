// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'messages.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class PaywallLocalizationsHi extends PaywallLocalizations {
  PaywallLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get adFree => 'विज्ञापन मुक्त';

  @override
  String get appOverview => 'ऐप अवलोकन';

  @override
  String appPro(String appName) {
    return '$appName प्रो';
  }

  @override
  String get bestOffer => 'सर्वश्रेष्ठ ऑफर';

  @override
  String get cancelAtAnyTime => 'किसी भी समय रद्द करें';

  @override
  String get chooseYourPlan => 'Choose Your Plan';

  @override
  String chargingInfoFreeTrial(
    String price,
    String freeTrialDay,
    String invoiceDuration,
  ) {
    return '$freeTrialDay दिनों के बाद $price भुगतान किया जाएगा $invoiceDuration तक या रद्द होने तक।';
  }

  @override
  String chargingInfoLifeTime(String price) {
    return 'आजीवन पहुँच के लिए $price केवल एक बार भुगतान करें। कोई अतिरिक्त शुल्क या सदस्यता नहीं।';
  }

  @override
  String chargingInfoStandart(String price, String invoiceDuration) {
    return '$price के लिए $invoiceDuration बार स्वतः नवीनीकरण किया जाएगा, जब तक रद्द नहीं किया जाता।';
  }

  @override
  String get continueBtn => 'Continue';

  @override
  String get enableFreeTrial => 'Enable Free Trial';

  @override
  String get exclusiveFeatures => 'विशेष सुविधाएँ';

  @override
  String get free => 'नि:शुल्क';

  @override
  String freeTrialDaysFree(String numDays) {
    return '$numDays दिन मुफ्त';
  }

  @override
  String get freeTrialDesc =>
      'अपनी रचनात्मकता बढ़ाएँ और प्रीमियम सदस्यता के साथ असीमित पहुंच प्राप्त करें';

  @override
  String freeTrialPriceInfoText(
    String freeTrialDays,
    String priceString,
    String periodInvoiceStr,
  ) {
    return '$freeTrialDays दिन निःशुल्क, फिर $priceString/$periodInvoiceStr';
  }

  @override
  String get freeTrialProperty1Big => 'अपना मुफ्त ट्रायल अवधि उपयोग करें';

  @override
  String get freeTrialProperty1Small => 'एक क्लिक में आसानी से सक्रिय करें';

  @override
  String get freeTrialProperty2Big => 'आज: तुरंत सभी सुविधाओं को अनलॉक करें';

  @override
  String get freeTrialProperty2Small => 'अभी सभी सुविधाओं तक पहुँचें';

  @override
  String get freeTrialProperty3Big => 'ट्रायल समाप्ति की याद दिलाएं';

  @override
  String get freeTrialProperty3Small =>
      'जब आपका ट्रायल समाप्त होगा तो हम आपको एक अधिसूचना भेजेंगे';

  @override
  String get freeTrialProperty4Big => 'असीमित डाउनलोड का आनंद लें';

  @override
  String get freeTrialProperty4Small => 'उपयोग और अनुकूलित करने में आसान';

  @override
  String get freeTrialReminder =>
      'मुफ्त ट्रायल समाप्त होने से पहले मुझे याद दिलाएं';

  @override
  String get getUnlimitedAccess => 'सभी सुविधाओं तक असीमित पहुंच पाएं!';

  @override
  String get hdQuality => 'HD गुणवत्ता';

  @override
  String get lifetime => 'जीवनकाल';

  @override
  String get monthly => 'मासिक';

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
  String get perWeek => ' / सप्ताह';

  @override
  String percentOff(int percent) {
    return '$percent% छूट';
  }

  @override
  String get popular => 'लोकप्रिय';

  @override
  String get restorePurchases => 'Restore Purchases';

  @override
  String get save => 'सहेजें';

  @override
  String get seeAllOptions => 'सभी विकल्प देखें';

  @override
  String get seeOtherOptions => 'अन्य विकल्प देखें';

  @override
  String get shortTerm => 'कम अवधि';

  @override
  String get startFreeTrial => 'मुफ़्त ट्रायल शुरू करें';

  @override
  String thenPerWeek(String price) {
    return 'then \$$price/week';
  }

  @override
  String trialDays(int days) {
    return '$days दिन का परीक्षण';
  }

  @override
  String get unlimitedDownload => 'असीमित डाउनलोड';

  @override
  String get unlockFullPower => 'Unlock Full Power';

  @override
  String get upgradeNow => 'अभी अपग्रेड करें';

  @override
  String get userReviews => 'उपयोगकर्ता समीक्षा';

  @override
  String get week => 'सप्ताह';

  @override
  String get weekly => 'साप्ताहिक';

  @override
  String get yearly => 'वार्षिक';

  @override
  String yearlyPrice(String price) {
    return '\$$price/year';
  }
}
