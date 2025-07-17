// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'messages.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class PaywallLocalizationsFr extends PaywallLocalizations {
  PaywallLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get adFree => 'Sans publicité';

  @override
  String get appOverview => 'Aperçu de l\'application';

  @override
  String appPro(String appName) {
    return '$appName Pro';
  }

  @override
  String get bestOffer => 'MEILLEURE OFFRE';

  @override
  String get bestValue => 'MEILLEURE OFFRE';

  @override
  String get cancelAtAnyTime => 'Annuler à tout moment';

  @override
  String chargingInfoFreeTrial(String price, String freeTrialDay, String invoiceDuration) {
    return 'Vous serez facturé $price après $freeTrialDay jours $invoiceDuration jusqu\'à annulation.';
  }

  @override
  String chargingInfoLifeTime(String price) {
    return 'Payez $price une fois pour un accès à vie. Aucun frais supplémentaire ou abonnement.';
  }

  @override
  String chargingInfoStandart(String price, String invoiceDuration) {
    return 'Renouvellement automatique pour $price chaque $invoiceDuration jusqu\'à annulation.';
  }

  @override
  String get chooseYourPlan => 'Choisissez votre forfait';

  @override
  String get continueBtn => 'Continuer';

  @override
  String daysFreeTrial(int days) {
    String _temp0 = intl.Intl.pluralLogic(days, locale: localeName, other: '$days jours d’essai gratuit', one: '1 jour d’essai gratuit');
    return '$_temp0';
  }

  @override
  String get enableFreeTrial => 'Activer l’essai gratuit';

  @override
  String get exclusiveFeatures => 'Fonctionnalités exclusives';

  @override
  String get free => 'Gratuit';

  @override
  String freeTrialDaysFree(String numDays) {
    return '$numDays jours GRATUIT';
  }

  @override
  String get freeTrialDesc => 'Améliorez votre créativité et obtenez un accès illimité avec un abonnement premium';

  @override
  String freeTrialPriceInfoText(String freeTrialDays, String priceString, String periodInvoiceStr) {
    return '$freeTrialDays jours gratuits, puis $priceString/$periodInvoiceStr';
  }

  @override
  String get freeTrialProperty1Big => 'Utilisez votre période d\'essai gratuit';

  @override
  String get freeTrialProperty1Small => 'Activez facilement en un clic';

  @override
  String get freeTrialProperty2Big => 'Aujourd\'hui : Débloquez toutes les fonctionnalités instantanément';

  @override
  String get freeTrialProperty2Small => 'Accédez à toutes les fonctionnalités maintenant';

  @override
  String get freeTrialProperty3Big => 'Rappel de fin d\'essai';

  @override
  String get freeTrialProperty3Small => 'Nous vous enverrons une notification lorsque votre essai se termine';

  @override
  String get freeTrialProperty4Big => 'Profitez de téléchargements illimités';

  @override
  String get freeTrialProperty4Small => 'Facile à utiliser et à personnaliser';

  @override
  String get freeTrialReminder => 'Rappelez-moi avant la fin de l\'essai gratuit';

  @override
  String get getUnlimitedAccess => 'Accédez à toutes les fonctionnalités sans limite !';

  @override
  String get hdQuality => 'Qualité HD';

  @override
  String get lifetime => 'À vie';

  @override
  String get monthly => 'Mensuel';

  @override
  String monthlyPrice(String price) {
    return '$price/mois';
  }

  @override
  String get notSureYet => 'Pas encore sûr ?';

  @override
  String get otherPlans => 'Autres forfaits';

  @override
  String get paymentAgreement =>
      'Les abonnements se renouvelleront automatiquement à moins que le renouvellement automatique ne soit désactivé au moins 24 heures avant la fin de la période en cours. Votre compte sera débité conformément à votre plan pour le renouvellement dans les 24 heures précédant la fin de la période en cours. Vous pouvez gérer ou désactiver le renouvellement automatique dans les paramètres de votre compte à tout moment après l\'achat.';

  @override
  String get paymentAgreementFreeTrial =>
      'Le paiement sera débité de votre compte à la fin de la période d\'essai gratuit. Vous pouvez annuler à tout moment pendant la période d\'essai gratuit et aucun frais ne sera appliqué.';

  @override
  String get paymentFailed => 'Échec du paiement';

  @override
  String get paymentInfoPending =>
      'Votre paiement est en attente, veuillez patienter. Si vous rencontrez des problèmes, contactez-nous à contact@everpixel.org.';

  @override
  String get paymentInfoTitle => 'Informations de paiement';

  @override
  String get perWeek => ' / semaine';

  @override
  String percentOff(int percent) {
    return '$percent% DE RÉDUCTION';
  }

  @override
  String get popular => 'Populaire';

  @override
  String get privacyPolicy => 'Politique de confidentialité';

  @override
  String get restore => 'Restaurer';

  @override
  String get restorePurchases => 'Restaurer les achats';

  @override
  String get save => 'Enregistrer';

  @override
  String get seeAllOptions => 'Voir toutes les options';

  @override
  String get seeOtherOptions => 'Voir d\'autres options';

  @override
  String get shortTerm => 'COURT TERME';

  @override
  String get startFreeTrial => 'Commencer l\'essai gratuit';

  @override
  String get termsOfUse => 'Conditions d\'utilisation';

  @override
  String thenPerWeek(String price) {
    return 'puis $price/semaine';
  }

  @override
  String trialDays(int days) {
    return 'Essai de $days jours';
  }

  @override
  String get unlimitedDownload => 'Téléchargement illimité';

  @override
  String get unlockFullPower => 'Débloquez toutes les fonctionnalités';

  @override
  String unlockFullPowerDescription(String appName) {
    return 'Débloquez tout le potentiel de $appName – l\'application d\'édition IA ultime.';
  }

  @override
  String get upgradeNow => 'Mettre à niveau maintenant';

  @override
  String get userReviews => 'Avis des utilisateurs';

  @override
  String get week => 'Semaine';

  @override
  String get weekly => 'Hebdomadaire';

  @override
  String weeklyPrice(String price) {
    return '$price/semaine';
  }

  @override
  String weeksFreeTrial(int weeks) {
    String _temp0 = intl.Intl.pluralLogic(weeks, locale: localeName, other: '$weeks semaines d’essai gratuit', one: '1 semaine d’essai gratuit');
    return '$_temp0';
  }

  @override
  String get yearly => 'Annuel';

  @override
  String yearlyPrice(String price) {
    return '$price/an';
  }

  @override
  String trialUserCountText(String userCount, String hours) {
    return '$userCount people started a trial in the last $hours hours!';
  }
}
