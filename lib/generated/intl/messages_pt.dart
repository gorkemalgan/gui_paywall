// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'messages.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class PaywallLocalizationsPt extends PaywallLocalizations {
  PaywallLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get adFree => 'Anúncio grátis';

  @override
  String get appOverview => 'Visão geral do aplicativo';

  @override
  String appPro(String appName) {
    return '$appName Pro';
  }

  @override
  String get bestOffer => 'MELHOR OFERTA';

  @override
  String get cancelAtAnyTime => 'Cancele a qualquer momento';

  @override
  String get chooseYourPlan => 'Choose Your Plan';

  @override
  String chargingInfoFreeTrial(
    String price,
    String freeTrialDay,
    String invoiceDuration,
  ) {
    return 'Você será cobrado $price após $freeTrialDay dias $invoiceDuration até ser cancelado.';
  }

  @override
  String chargingInfoLifeTime(String price) {
    return 'Pague $price uma vez para acesso vitalício. Sem custos ou assinaturas extras.';
  }

  @override
  String chargingInfoStandart(String price, String invoiceDuration) {
    return 'Renovação automática por $price $invoiceDuration até ser cancelado.';
  }

  @override
  String get continueBtn => 'Continue';

  @override
  String get enableFreeTrial => 'Enable Free Trial';

  @override
  String get exclusiveFeatures => 'Recursos exclusivos';

  @override
  String get free => 'Grátis';

  @override
  String freeTrialDaysFree(String numDays) {
    return '$numDays dias GRÁTIS';
  }

  @override
  String get freeTrialDesc =>
      'Aumente sua criatividade e obtenha acesso ilimitado com uma assinatura premium';

  @override
  String freeTrialPriceInfoText(
    String freeTrialDays,
    String priceString,
    String periodInvoiceStr,
  ) {
    return '$freeTrialDays dias grátis, depois $priceString/$periodInvoiceStr';
  }

  @override
  String get freeTrialProperty1Big => 'Use seu período de teste gratuito';

  @override
  String get freeTrialProperty1Small => 'Ative facilmente com um clique';

  @override
  String get freeTrialProperty2Big =>
      'Hoje: desbloqueie instantaneamente todos os recursos';

  @override
  String get freeTrialProperty2Small => 'Acesse todos os recursos agora';

  @override
  String get freeTrialProperty3Big => 'Lembrete de fim do teste';

  @override
  String get freeTrialProperty3Small =>
      'Enviaremos uma notificação quando seu teste terminar';

  @override
  String get freeTrialProperty4Big => 'Desfrute de downloads ilimitados';

  @override
  String get freeTrialProperty4Small => 'Fácil de usar e personalizar';

  @override
  String get freeTrialReminder => 'Lembre-me antes que o teste gratuito expire';

  @override
  String get getUnlimitedAccess =>
      'Tenha acesso ilimitado a todos os recursos!';

  @override
  String get hdQuality => 'Qualidade HD';

  @override
  String get lifetime => 'Vitalício';

  @override
  String get monthly => 'Mensal';

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
    return '$percent% DE DESCONTO';
  }

  @override
  String get popular => 'Popular';

  @override
  String get restorePurchases => 'Restore Purchases';

  @override
  String get save => 'Salvar';

  @override
  String get seeAllOptions => 'Veja todas as opções';

  @override
  String get seeOtherOptions => 'Veja outras opções';

  @override
  String get shortTerm => 'CURTO PRAZO';

  @override
  String get startFreeTrial => 'Inicie a avaliação gratuita';

  @override
  String thenPerWeek(String price) {
    return 'then \$$price/week';
  }

  @override
  String trialDays(int days) {
    return 'Teste de $days dias';
  }

  @override
  String get unlimitedDownload => 'Download ilimitado';

  @override
  String get unlockFullPower => 'Unlock Full Power';

  @override
  String get upgradeNow => 'Atualize agora';

  @override
  String get userReviews => 'Avaliações de usuários';

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
