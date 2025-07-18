// ignore: unused_import
import 'package:intl/intl.dart' as intl;
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
  String get bestValue => 'MIGLIOR VALORE';

  @override
  String get cancelAtAnyTime => 'Annulla in qualsiasi momento';

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
  String get chooseYourPlan => 'Scegli il tuo piano';

  @override
  String get continueBtn => 'Continua';

  @override
  String daysFreeTrial(int days) {
    String _temp0 = intl.Intl.pluralLogic(days, locale: localeName, other: '$days giorni di prova gratis', one: '1 giorno di prova gratis');
    return '$_temp0';
  }

  @override
  String get enableFreeTrial => 'Attiva prova gratuita';

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
  String monthlyPrice(String price) {
    return '$price/mese';
  }

  @override
  String get notSureYet => 'Non sei ancora sicuro?';

  @override
  String get otherPlans => 'Altri piani';

  @override
  String get paymentAgreement =>
      'Gli abbonamenti si rinnoveranno automaticamente a meno che il rinnovo automatico non sia disattivato almeno 24 ore prima della fine del periodo corrente. Il tuo account sarà addebitato in base al tuo piano per il rinnovo entro 24 ore prima della fine del periodo corrente. Puoi gestire o disattivare il rinnovo automatico nelle impostazioni del tuo account in qualsiasi momento dopo l\'acquisto.';

  @override
  String get paymentAgreementFreeTrial =>
      'Il pagamento sarà addebitato sul tuo account alla fine del periodo di prova gratuito. Puoi annullare in qualsiasi momento durante il periodo di prova gratuito e non verranno addebitati costi.';

  @override
  String get paymentFailed => 'Pagamento non riuscito';

  @override
  String get paymentInfoPending => 'Il tuo pagamento è in sospeso, attendi prego. Se riscontri problemi, contattaci a contact@everpixel.org.';

  @override
  String get paymentInfoTitle => 'Informazioni di pagamento';

  @override
  String get perWeek => ' / settimana';

  @override
  String percentOff(int percent) {
    return '$percent% DI SCONTO';
  }

  @override
  String get popular => 'Popolare';

  @override
  String get privacyPolicy => 'Politica sulla Privacy';

  @override
  String get restore => 'Ripristina';

  @override
  String get restorePurchases => 'Ripristina Acquisti';

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
  String get termsOfUse => 'Termini di utilizzo';

  @override
  String thenPerWeek(String price) {
    return 'poi $price/settimana';
  }

  @override
  String trialDays(int days) {
    return 'Prova di $days giorni';
  }

  @override
  String get unlimitedDownload => 'Download illimitati';

  @override
  String get unlockFullPower => 'Sblocca tutte le funzionalità';

  @override
  String unlockFullPowerDescription(String appName) {
    return 'Sblocca tutto il potenziale di $appName, la migliore app di editing con IA.';
  }

  @override
  String get upgradeNow => 'Aggiorna ora';

  @override
  String get userReviews => 'Recensioni degli utenti';

  @override
  String get week => 'Settimana';

  @override
  String get weekly => 'Settimanale';

  @override
  String weeklyPrice(String price) {
    return '$price/settimana';
  }

  @override
  String weeksFreeTrial(int weeks) {
    String _temp0 = intl.Intl.pluralLogic(weeks, locale: localeName, other: '$weeks settimane di prova gratis', one: '1 settimana di prova gratis');
    return '$_temp0';
  }

  @override
  String get yearly => 'Annuale';

  @override
  String yearlyPrice(String price) {
    return '$price/anno';
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
