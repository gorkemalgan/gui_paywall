// ignore: unused_import

// Package imports:
import 'package:intl/intl.dart' as intl;

// Project imports:
import 'messages.dart';

// ignore_for_file: type=lint

/// The translations for Catalan Valencian (`ca`).
class PaywallLocalizationsCa extends PaywallLocalizations {
  PaywallLocalizationsCa([String locale = 'ca']) : super(locale);

  @override
  String get adFree => 'Sense anuncis';

  @override
  String get appOverview => 'Visió general de l\'app';

  @override
  String appPro(String appName) {
    return '$appName Pro';
  }

  @override
  String get bestOffer => 'MILLOR OFERTA';

  @override
  String get cancelAtAnyTime => 'Cancel·la en qualsevol moment';

  @override
  String get chooseYourPlan => 'Choose Your Plan';

  @override
  String chargingInfoFreeTrial(String price, String freeTrialDay, String invoiceDuration) {
    return 'Se\'t cobrarà $price després de $freeTrialDay dies $invoiceDuration fins a la cancel·lació.';
  }

  @override
  String chargingInfoLifeTime(String price) {
    return 'Paga $price una vegada per accés de per vida. Sense despeses extres ni subscripcions.';
  }

  @override
  String chargingInfoStandart(String price, String invoiceDuration) {
    return 'Es renovarà automàticament per $price cada $invoiceDuration fins a la cancel·lació.';
  }

  @override
  String get continueBtn => 'Continue';

  @override
  String get enableFreeTrial => 'Enable Free Trial';

  @override
  String get exclusiveFeatures => 'Funcions Exclusives';

  @override
  String get free => 'Gratuït';

  @override
  String freeTrialDaysFree(String numDays) {
    return '$numDays dies GRATIS';
  }

  @override
  String get freeTrialDesc => 'Millora la teva creativitat i obté accés il·limitat amb una subscripció premium';

  @override
  String freeTrialPriceInfoText(String freeTrialDays, String priceString, String periodInvoiceStr) {
    return '$freeTrialDays dies gratis, després $priceString/$periodInvoiceStr';
  }

  @override
  String get freeTrialProperty1Big => 'Utilitza el teu període de prova gratuïta';

  @override
  String get freeTrialProperty1Small => 'Activa fàcilment amb un clic';

  @override
  String get freeTrialProperty2Big => 'Avui: Desbloqueja totes les funcions immediatament';

  @override
  String get freeTrialProperty2Small => 'Accedeix a totes les funcions ara';

  @override
  String get freeTrialProperty3Big => 'Recordatori de final de prova';

  @override
  String get freeTrialProperty3Small => 'T\'enviarem una notificació quan la teva prova acabi';

  @override
  String get freeTrialProperty4Big => 'Gaudeix de descàrregues il·limitades';

  @override
  String get freeTrialProperty4Small => 'Fàcil d\'utilitzar i personalitzar';

  @override
  String get freeTrialReminder => 'Recorda\'m abans que acabi la prova gratuïta';

  @override
  String get getUnlimitedAccess => 'Accés il·limitat a totes les funcions!';

  @override
  String get hdQuality => 'Qualitat HD';

  @override
  String get lifetime => 'De per vida';

  @override
  String get monthly => 'Mensual';

  @override
  String get notSureYet => 'Not Sure Yet?';

  @override
  String weekFreeTrial(int weeks) {
    String _temp0 = intl.Intl.pluralLogic(weeks, locale: localeName, other: '$weeks weeks free trial', one: '1 week free trial');
    return '$_temp0';
  }

  @override
  String get otherPlans => 'Other plans';

  @override
  String get perWeek => ' / setmana';

  @override
  String percentOff(int percent) {
    return '$percent% DE DESCOMPTE';
  }

  @override
  String get popular => 'Popular';

  @override
  String get restorePurchases => 'Restore Purchases';

  @override
  String get save => 'Desa';

  @override
  String get seeAllOptions => 'Veure totes les opcions';

  @override
  String get seeOtherOptions => 'Veure altres opcions';

  @override
  String get shortTerm => 'CURT TERMINI';

  @override
  String get startFreeTrial => 'Comença la Prova Gratuïta';

  @override
  String thenPerWeek(String price) {
    return 'then \$$price/week';
  }

  @override
  String trialDays(int days) {
    return 'Prova gratuïta de $days dies';
  }

  @override
  String get unlimitedDownload => 'Descàrrega Il·limitada';

  @override
  String get unlockFullPower => 'Unlock Full Power';

  @override
  String get upgradeNow => 'Actualitza ara';

  @override
  String get userReviews => 'Opinions dels Usuaris';

  @override
  String get week => 'Setmana';

  @override
  String get weekly => 'Setmanal';

  @override
  String get yearly => 'Anual';

  @override
  String yearlyPrice(String price) {
    return '\$$price/year';
  }
}
