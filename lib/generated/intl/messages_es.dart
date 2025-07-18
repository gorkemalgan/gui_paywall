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
  String get bestValue => 'MEJOR VALOR';

  @override
  String get cancelAtAnyTime => 'Cancela en cualquier momento';

  @override
  String chargingInfoFreeTrial(String price, String freeTrialDay, String invoiceDuration) {
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
  String get chooseYourPlan => 'Elige tu plan';

  @override
  String get continueBtn => 'Continuar';

  @override
  String daysFreeTrial(int days) {
    String _temp0 = intl.Intl.pluralLogic(days, locale: localeName, other: '$days días de prueba gratis', one: '1 día de prueba gratis');
    return '$_temp0';
  }

  @override
  String get enableFreeTrial => 'Activar prueba gratuita';

  @override
  String get exclusiveFeatures => 'Funciones exclusivas';

  @override
  String get free => 'Gratis';

  @override
  String freeTrialDaysFree(String numDays) {
    return '$numDays días GRATIS';
  }

  @override
  String get freeTrialDesc => 'Mejora tu creatividad y obtén acceso ilimitado con una membresía premium';

  @override
  String freeTrialPriceInfoText(String freeTrialDays, String priceString, String periodInvoiceStr) {
    return '$freeTrialDays días gratis luego $priceString/$periodInvoiceStr';
  }

  @override
  String get freeTrialProperty1Big => 'Usa tu período de prueba gratis';

  @override
  String get freeTrialProperty1Small => 'Activa fácilmente con un clic';

  @override
  String get freeTrialProperty2Big => 'Hoy: Desbloquea todas las funciones al instante';

  @override
  String get freeTrialProperty2Small => 'Accede a todas las funciones ahora';

  @override
  String get freeTrialProperty3Big => 'Recordatorio de fin de prueba';

  @override
  String get freeTrialProperty3Small => 'Te enviaremos una notificación cuando termine tu prueba';

  @override
  String get freeTrialProperty4Big => 'Disfruta de descargas ilimitadas';

  @override
  String get freeTrialProperty4Small => 'Fácil de usar y personalizar';

  @override
  String get freeTrialReminder => 'Recuérdame antes de que expire la prueba gratis';

  @override
  String get getUnlimitedAccess => '¡Obtén acceso ilimitado a todas las funciones!';

  @override
  String get hdQuality => 'Calidad HD';

  @override
  String get lifetime => 'De por vida';

  @override
  String get monthly => 'Mensual';

  @override
  String monthlyPrice(String price) {
    return '$price/mes';
  }

  @override
  String get notSureYet => '¿Aún no estás seguro?';

  @override
  String get otherPlans => 'Otros planes';

  @override
  String get paymentAgreement =>
      'Las suscripciones se renovarán automáticamente a menos que la renovación automática se desactive al menos 24 horas antes del final del período actual. Tu cuenta será cargada de acuerdo con tu plan para la renovación dentro de las 24 horas previas al final del período actual. Puedes administrar o desactivar la renovación automática en la configuración de tu cuenta en cualquier momento después de la compra.';

  @override
  String get paymentAgreementFreeTrial =>
      'El pago se cargará a tu cuenta al final del período de prueba gratis. Puedes cancelar en cualquier momento durante el período de prueba gratis y no se aplicarán cargos.';

  @override
  String get paymentFailed => 'Pago fallido';

  @override
  String get paymentInfoPending =>
      'Tu pago está pendiente, por favor espera. Si encuentras algún problema con la transacción, contáctanos en contact@everpixel.org.';

  @override
  String get paymentInfoTitle => 'Información de pago';

  @override
  String get perWeek => ' / semana';

  @override
  String percentOff(int percent) {
    return '$percent% DE DESCUENTO';
  }

  @override
  String get popular => 'Popular';

  @override
  String get privacyPolicy => 'Política de privacidad';

  @override
  String get restore => 'Restaurar';

  @override
  String get restorePurchases => 'Restaurar compras';

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
  String get termsOfUse => 'Términos de uso';

  @override
  String thenPerWeek(String price) {
    return 'luego $price/semana';
  }

  @override
  String trialDays(int days) {
    return 'Prueba de $days días';
  }

  @override
  String get unlimitedDownload => 'Descarga ilimitada';

  @override
  String get unlockFullPower => 'Desbloquea todo el potencial';

  @override
  String unlockFullPowerDescription(String appName) {
    return 'Desbloquea todo el poder de $appName, la mejor aplicación de edición con IA.';
  }

  @override
  String get upgradeNow => 'Actualizar ahora';

  @override
  String get userReviews => 'Reseñas de usuarios';

  @override
  String get week => 'Semana';

  @override
  String get weekly => 'Semanal';

  @override
  String weeklyPrice(String price) {
    return '$price/semana';
  }

  @override
  String weeksFreeTrial(int weeks) {
    String _temp0 = intl.Intl.pluralLogic(weeks, locale: localeName, other: '$weeks semanas de prueba gratis', one: '1 semana de prueba gratis');
    return '$_temp0';
  }

  @override
  String get yearly => 'Anual';

  @override
  String yearlyPrice(String price) {
    return '$price/año';
  }

  @override
  String trialUserCount(Object count) {
    return '$count people started a trial';
  }

  @override
  String trialUsedInLastHours(Object count) {
    return '$count people used trial in last 24 hours';
  }
}
