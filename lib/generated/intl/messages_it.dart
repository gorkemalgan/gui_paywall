// ignore: unused_import

// Package imports:
import 'package:intl/intl.dart' as intl;

// Project imports:
import 'messages.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class PaywallLocalizationsIt extends PaywallLocalizations {
  PaywallLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get adFree => 'Senza pubblicità';

  @override
  String get appOverview => 'Panoramica dell\'app';

  @override
  String appPro(String appName) {
    return '$appName Pro';
  }

  @override
  String get bestOffer => 'MIGLIORE OFFERTA';

  @override
  String get cancelAtAnyTime => 'Annulla in qualsiasi momento';

  @override
  String get chooseYourPlan => 'Choose Your Plan';

  @override
  String chargingInfoFreeTrial(String price, String freeTrialDay, String invoiceDuration) {
    return 'Ti verranno addebitati $price dopo $freeTrialDay giorni $invoiceDuration fino alla cancellazione.';
  }

  @override
  String chargingInfoLifeTime(String price) {
    return 'Paga $price una volta sola per accesso a vita. Nessun costo o abbonamento aggiuntivo.';
  }

  @override
  String chargingInfoStandart(String price, String invoiceDuration) {
    return 'Si rinnova automaticamente per $price ogni $invoiceDuration fino alla cancellazione.';
  }

  @override
  String get continueBtn => 'Continue';

  @override
  String get enableFreeTrial => 'Enable Free Trial';

  @override
  String get exclusiveFeatures => 'Funzionalità Esclusive';

  @override
  String get free => 'Gratis';

  @override
  String freeTrialDaysFree(String numDays) {
    return '$numDays giorni GRATIS';
  }

  @override
  String get freeTrialDesc => 'Aumenta la tua creatività e ottieni accesso illimitato con un abbonamento premium';

  @override
  String freeTrialPriceInfoText(String freeTrialDays, String priceString, String periodInvoiceStr) {
    return '$freeTrialDays giorni gratis, poi $priceString/$periodInvoiceStr';
  }

  @override
  String get freeTrialProperty1Big => 'Usa il tuo periodo di prova gratuita';

  @override
  String get freeTrialProperty1Small => 'Attiva facilmente con un clic';

  @override
  String get freeTrialProperty2Big => 'Oggi: Sblocca tutte le funzionalità immediatamente';

  @override
  String get freeTrialProperty2Small => 'Accedi a tutte le funzionalità ora';

  @override
  String get freeTrialProperty3Big => 'Promemoria fine prova';

  @override
  String get freeTrialProperty3Small => 'Ti invieremo una notifica quando la tua prova terminerà';

  @override
  String get freeTrialProperty4Big => 'Goditi download illimitati';

  @override
  String get freeTrialProperty4Small => 'Facile da usare e personalizzare';

  @override
  String get freeTrialReminder => 'Ricordami prima che la prova gratuita finisca';

  @override
  String get getUnlimitedAccess => 'Ottieni accesso illimitato a tutte le funzionalità!';

  @override
  String get hdQuality => 'Qualità HD';

  @override
  String get lifetime => 'A vita';

  @override
  String get monthly => 'Mensile';

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
  String get perWeek => ' / settimana';

  @override
  String percentOff(int percent) {
    return '$percent% DI SCONTO';
  }

  @override
  String get popular => 'Popolare';

  @override
  String get restorePurchases => 'Restore Purchases';

  @override
  String get save => 'Salva';

  @override
  String get seeAllOptions => 'Vedi tutte le opzioni';

  @override
  String get seeOtherOptions => 'Vedi altre opzioni';

  @override
  String get shortTerm => 'BREVE TERMINE';

  @override
  String get startFreeTrial => 'Inizia la prova gratuita';

  @override
  String thenPerWeek(String price) {
    return 'then \$$price/week';
  }

  @override
  String trialDays(int days) {
    return 'Prova di $days giorni';
  }

  @override
  String get unlimitedDownload => 'Download illimitati';

  @override
  String get unlockFullPower => 'Unlock Full Power';

  @override
  String get upgradeNow => 'Aggiorna ora';

  @override
  String get userReviews => 'Recensioni degli utenti';

  @override
  String get week => 'Settimana';

  @override
  String get weekly => 'Settimanale';

  @override
  String get yearly => 'Annuale';

  @override
  String yearlyPrice(String price) {
    return '\$$price/year';
  }
}
