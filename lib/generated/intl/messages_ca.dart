// ignore: unused_import
import 'package:intl/intl.dart' as intl;
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
  String get bestValue => 'MILLOR OFERTA';

  @override
  String get cancelAtAnyTime => 'Cancel·la en qualsevol moment';

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
  String get chooseYourPlan => 'Tria el teu pla';

  @override
  String get continueBtn => 'Continua';

  @override
  String daysFreeTrial(int days) {
    String _temp0 = intl.Intl.pluralLogic(days, locale: localeName, other: '$days dies de prova gratuïta', one: '1 dia de prova gratuïta');
    return '$_temp0';
  }

  @override
  String get enableFreeTrial => 'Activa la prova gratuïta';

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
  String monthlyPrice(String price) {
    return '$price/mes';
  }

  @override
  String get notSureYet => 'Encara no estàs segur?';

  @override
  String get otherPlans => 'Altres plans';

  @override
  String get paymentAgreement =>
      'Les subscripcions es renovaran automàticament tret que es desactivi la renovació automàtica almenys 24 hores abans del final del període actual. El teu compte serà cobrat segons el teu pla de renovació dins de les 24 hores anteriors al final del període actual. Pots gestionar o desactivar la renovació automàtica a la configuració del teu compte en qualsevol moment després de la compra.';

  @override
  String get paymentAgreementFreeTrial =>
      'Es cobrarà al teu compte al final del període de prova gratuïta. Pots cancel·lar en qualsevol moment durant el període de prova gratuïta i no s\'aplicaran càrrecs.';

  @override
  String get paymentFailed => 'Pagament fallit';

  @override
  String get paymentInfoPending =>
      'El teu pagament està pendent, si us plau, espera. Si tens problemes amb la transacció, contacta’ns a contact@everpixel.org.';

  @override
  String get paymentInfoTitle => 'Informació de Pagament';

  @override
  String get perWeek => ' / setmana';

  @override
  String percentOff(int percent) {
    return '$percent% DE DESCOMPTE';
  }

  @override
  String get popular => 'Popular';

  @override
  String get privacyPolicy => 'Política de Privacitat';

  @override
  String get restore => 'Restaura';

  @override
  String get restorePurchases => 'Restaura les compres';

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
  String get termsOfUse => 'Termes d\'Ús';

  @override
  String thenPerWeek(String price) {
    return 'després $price/setmana';
  }

  @override
  String trialDays(int days) {
    return 'Prova gratuïta de $days dies';
  }

  @override
  String get unlimitedDownload => 'Descàrrega Il·limitada';

  @override
  String get unlockFullPower => 'Desbloqueja tot el potencial';

  @override
  String unlockFullPowerDescription(String appName) {
    return 'Desbloqueja tot el poder de $appName, l\'aplicació definitiva de l\'editor amb IA.';
  }

  @override
  String get upgradeNow => 'Actualitza ara';

  @override
  String get userReviews => 'Opinions dels Usuaris';

  @override
  String get week => 'Setmana';

  @override
  String get weekly => 'Setmanal';

  @override
  String weeklyPrice(String price) {
    return '$price/setmana';
  }

  @override
  String weeksFreeTrial(int weeks) {
    String _temp0 = intl.Intl.pluralLogic(weeks, locale: localeName, other: '$weeks setmanes de prova gratuïta', one: '1 setmana de prova gratuïta');
    return '$_temp0';
  }

  @override
  String get yearly => 'Anual';

  @override
  String yearlyPrice(String price) {
    return '$price/any';
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
