// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'messages.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class PaywallLocalizationsEs extends PaywallLocalizations {
  PaywallLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get adFree => 'Sin anuncios';

  @override
  String get appOverview => 'Descripción general de la aplicación';

  @override
  String appPro(String appName) {
    return '$appName Pro';
  }

  @override
  String get bestOffer => 'MEJOR OFERTA';

  @override
  String get cancelAtAnyTime => 'Cancela en cualquier momento';

  @override
  String get chooseYourPlan => 'Choose Your Plan';

  @override
  String chargingInfoFreeTrial(
    String price,
    String freeTrialDay,
    String invoiceDuration,
  ) {
    return 'Se te cobrará $price después de $freeTrialDay días $invoiceDuration hasta que se cancele.';
  }

  @override
  String chargingInfoLifeTime(String price) {
    return 'Paga $price una vez y obtén acceso de por vida. Sin cargos ni suscripciones adicionales.';
  }

  @override
  String chargingInfoStandart(String price, String invoiceDuration) {
    return 'Se renovará automáticamente por $price cada $invoiceDuration hasta que se cancele.';
  }

  @override
  String get continueBtn => 'Continue';

  @override
  String get enableFreeTrial => 'Enable Free Trial';

  @override
  String get exclusiveFeatures => 'Funciones exclusivas';

  @override
  String get free => 'Gratis';

  @override
  String freeTrialDaysFree(String numDays) {
    return '$numDays días GRATIS';
  }

  @override
  String get freeTrialDesc =>
      'Mejora tu creatividad y obtén acceso ilimitado con una membresía premium';

  @override
  String freeTrialPriceInfoText(
    String freeTrialDays,
    String priceString,
    String periodInvoiceStr,
  ) {
    return '$freeTrialDays días gratis luego $priceString/$periodInvoiceStr';
  }

  @override
  String get freeTrialProperty1Big => 'Usa tu período de prueba gratis';

  @override
  String get freeTrialProperty1Small => 'Activa fácilmente con un clic';

  @override
  String get freeTrialProperty2Big =>
      'Hoy: Desbloquea todas las funciones al instante';

  @override
  String get freeTrialProperty2Small => 'Accede a todas las funciones ahora';

  @override
  String get freeTrialProperty3Big => 'Recordatorio de fin de prueba';

  @override
  String get freeTrialProperty3Small =>
      'Te enviaremos una notificación cuando termine tu prueba';

  @override
  String get freeTrialProperty4Big => 'Disfruta de descargas ilimitadas';

  @override
  String get freeTrialProperty4Small => 'Fácil de usar y personalizar';

  @override
  String get freeTrialReminder =>
      'Recuérdame antes de que expire la prueba gratis';

  @override
  String get getUnlimitedAccess =>
      '¡Obtén acceso ilimitado a todas las funciones!';

  @override
  String get hdQuality => 'Calidad HD';

  @override
  String get lifetime => 'De por vida';

  @override
  String get monthly => 'Mensual';

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
  String get perWeek => ' / semana';

  @override
  String percentOff(int percent) {
    return '$percent% DE DESCUENTO';
  }

  @override
  String get popular => 'Popular';

  @override
  String get restorePurchases => 'Restore Purchases';

  @override
  String get save => 'Guardar';

  @override
  String get seeAllOptions => 'Ver todas las opciones';

  @override
  String get seeOtherOptions => 'Ver otras opciones';

  @override
  String get shortTerm => 'CORTO PLAZO';

  @override
  String get startFreeTrial => 'Comenzar prueba gratis';

  @override
  String thenPerWeek(String price) {
    return 'then \$$price/week';
  }

  @override
  String trialDays(int days) {
    return 'Prueba de $days días';
  }

  @override
  String get unlimitedDownload => 'Descarga ilimitada';

  @override
  String get unlockFullPower => 'Unlock Full Power';

  @override
  String get upgradeNow => 'Actualizar ahora';

  @override
  String get userReviews => 'Reseñas de usuarios';

  @override
  String get week => 'Semana';

  @override
  String get weekly => 'Semanal';

  @override
  String get yearly => 'Anual';

  @override
  String yearlyPrice(String price) {
    return '\$$price/year';
  }
}
