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
  String get bestValue => 'सर्वोत्तम मूल्य';

  @override
  String get cancelAtAnyTime => 'किसी भी समय रद्द करें';

  @override
  String chargingInfoFreeTrial(String price, String freeTrialDay, String invoiceDuration) {
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
  String get chooseYourPlan => 'अपनी योजना चुनें';

  @override
  String get continueBtn => 'जारी रखें';

  @override
  String daysFreeTrial(int days) {
    String _temp0 = intl.Intl.pluralLogic(days, locale: localeName, other: '$days दिन का मुफ्त ट्रायल', one: '1 दिन का मुफ्त ट्रायल');
    return '$_temp0';
  }

  @override
  String get enableFreeTrial => 'नि:शुल्क परीक्षण सक्षम करें';

  @override
  String get exclusiveFeatures => 'विशेष सुविधाएँ';

  @override
  String get free => 'नि:शुल्क';

  @override
  String freeTrialDaysFree(String numDays) {
    return '$numDays दिन मुफ्त';
  }

  @override
  String get freeTrialDesc => 'अपनी रचनात्मकता बढ़ाएँ और प्रीमियम सदस्यता के साथ असीमित पहुंच प्राप्त करें';

  @override
  String freeTrialPriceInfoText(String freeTrialDays, String priceString, String periodInvoiceStr) {
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
  String get freeTrialProperty3Small => 'जब आपका ट्रायल समाप्त होगा तो हम आपको एक अधिसूचना भेजेंगे';

  @override
  String get freeTrialProperty4Big => 'असीमित डाउनलोड का आनंद लें';

  @override
  String get freeTrialProperty4Small => 'उपयोग और अनुकूलित करने में आसान';

  @override
  String get freeTrialReminder => 'मुफ्त ट्रायल समाप्त होने से पहले मुझे याद दिलाएं';

  @override
  String get getUnlimitedAccess => 'सभी सुविधाओं तक असीमित पहुंच पाएं!';

  @override
  String get hdQuality => 'HD गुणवत्ता';

  @override
  String get lifetime => 'जीवनकाल';

  @override
  String get monthly => 'मासिक';

  @override
  String monthlyPrice(String price) {
    return '$price/माह';
  }

  @override
  String get notSureYet => 'अभी तक सुनिश्चित नहीं हैं?';

  @override
  String get otherPlans => 'अन्य योजनाएं';

  @override
  String get paymentAgreement =>
      'सदस्यताएँ स्वतः नवीनीकृत हो जाएँगी जब तक कि ऑटो-नवीनीकरण वर्तमान अवधि के अंत से कम से कम 24 घंटे पहले बंद नहीं किया जाता है। आपका खाता नवीनीकरण के लिए वर्तमान अवधि के अंत से 24 घंटे पहले आपके प्लान के अनुसार चार्ज किया जाएगा। आप खरीद के बाद किसी भी समय अपने खाता सेटिंग्स में ऑटो-नवीनीकरण को प्रबंधित या बंद कर सकते हैं।';

  @override
  String get paymentAgreementFreeTrial =>
      'भुगतान मुफ़्त ट्रायल अवधि के अंत में आपके खाते में लिया जाएगा। आप मुफ़्त ट्रायल अवधि के दौरान किसी भी समय रद्द कर सकते हैं और कोई शुल्क लागू नहीं होगा।';

  @override
  String get paymentFailed => 'भुगतान विफल';

  @override
  String get paymentInfoPending =>
      'आपकी भुगतान प्रक्रियाधीन है, कृपया प्रतीक्षा करें। यदि आपको किसी समस्या का सामना करना पड़ा तो contact@everpixel.org पर संपर्क करें।';

  @override
  String get paymentInfoTitle => 'भुगतान जानकारी';

  @override
  String get perWeek => ' / सप्ताह';

  @override
  String percentOff(int percent) {
    return '$percent% छूट';
  }

  @override
  String get popular => 'लोकप्रिय';

  @override
  String get privacyPolicy => 'गोपनीयता नीति';

  @override
  String get restore => 'पुनर्स्थापित करें';

  @override
  String get restorePurchases => 'खरीद पुनर्स्थापित करें';

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
  String get termsOfUse => 'उपयोग की शर्तें';

  @override
  String thenPerWeek(String price) {
    return 'फिर $price/सप्ताह';
  }

  @override
  String trialDays(int days) {
    return '$days दिन का परीक्षण';
  }

  @override
  String get unlimitedDownload => 'असीमित डाउनलोड';

  @override
  String get unlockFullPower => 'पूर्ण शक्ति अनलॉक करें';

  @override
  String unlockFullPowerDescription(String appName) {
    return '$appName की पूरी शक्ति को अनलॉक करें – अंतिम AI संपादन ऐप।';
  }

  @override
  String get upgradeNow => 'अभी अपग्रेड करें';

  @override
  String get userReviews => 'उपयोगकर्ता समीक्षा';

  @override
  String get week => 'सप्ताह';

  @override
  String get weekly => 'साप्ताहिक';

  @override
  String weeklyPrice(String price) {
    return '$price/सप्ताह';
  }

  @override
  String weeksFreeTrial(int weeks) {
    String _temp0 = intl.Intl.pluralLogic(weeks, locale: localeName, other: '$weeks सप्ताह का मुफ्त ट्रायल', one: '1 सप्ताह का मुफ्त ट्रायल');
    return '$_temp0';
  }

  @override
  String get yearly => 'वार्षिक';

  @override
  String yearlyPrice(String price) {
    return '$price/वर्ष';
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
