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
  String get bestValue => 'MELHOR VALOR';

  @override
  String get cancelAtAnyTime => 'Cancele a qualquer momento';

  @override
  String chargingInfoFreeTrial(String price, String freeTrialDay, String invoiceDuration) {
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
  String get chooseYourPlan => 'Escolha seu plano';

  @override
  String get continueBtn => 'Continuar';

  @override
  String daysFreeTrial(int days) {
    String _temp0 = intl.Intl.pluralLogic(days, locale: localeName, other: '$days dias grátis de avaliação', one: '1 dia grátis de avaliação');
    return '$_temp0';
  }

  @override
  String get enableFreeTrial => 'Ativar avaliação gratuita';

  @override
  String get exclusiveFeatures => 'Recursos exclusivos';

  @override
  String get free => 'Grátis';

  @override
  String freeTrialDaysFree(String numDays) {
    return '$numDays dias GRÁTIS';
  }

  @override
  String get freeTrialDesc => 'Aumente sua criatividade e obtenha acesso ilimitado com uma assinatura premium';

  @override
  String freeTrialPriceInfoText(String freeTrialDays, String priceString, String periodInvoiceStr) {
    return '$freeTrialDays dias grátis, depois $priceString/$periodInvoiceStr';
  }

  @override
  String get freeTrialProperty1Big => 'Use seu período de teste gratuito';

  @override
  String get freeTrialProperty1Small => 'Ative facilmente com um clique';

  @override
  String get freeTrialProperty2Big => 'Hoje: desbloqueie instantaneamente todos os recursos';

  @override
  String get freeTrialProperty2Small => 'Acesse todos os recursos agora';

  @override
  String get freeTrialProperty3Big => 'Lembrete de fim do teste';

  @override
  String get freeTrialProperty3Small => 'Enviaremos uma notificação quando seu teste terminar';

  @override
  String get freeTrialProperty4Big => 'Desfrute de downloads ilimitados';

  @override
  String get freeTrialProperty4Small => 'Fácil de usar e personalizar';

  @override
  String get freeTrialReminder => 'Lembre-me antes que o teste gratuito expire';

  @override
  String get getUnlimitedAccess => 'Tenha acesso ilimitado a todos os recursos!';

  @override
  String get hdQuality => 'Qualidade HD';

  @override
  String get lifetime => 'Vitalício';

  @override
  String get monthly => 'Mensal';

  @override
  String monthlyPrice(String price) {
    return '$price/mês';
  }

  @override
  String get notSureYet => 'Ainda não tem certeza?';

  @override
  String get otherPlans => 'Outros planos';

  @override
  String get paymentAgreement =>
      'As assinaturas serão renovadas automaticamente, a menos que a renovação automática seja desligada pelo menos 24 horas antes do final do período atual.Sua conta será cobrada de acordo com seu plano de renovação dentro de 24 horas antes do final do período atual.Você pode gerenciar ou desligar a renovação automática nas configurações da sua conta a qualquer momento após a compra.';

  @override
  String get paymentAgreementFreeTrial =>
      'O pagamento será cobrado em sua conta no final do período de teste gratuito.Você pode cancelar a qualquer momento durante o período de teste gratuito e nenhuma cobrança será aplicada.';

  @override
  String get paymentFailed => 'Pagamento falhou';

  @override
  String get paymentInfoPending =>
      'Seu pagamento está pendente, por favor aguarde. Caso encontre problemas, entre em contato conosco pelo e-mail contact@everpixel.org.';

  @override
  String get paymentInfoTitle => 'Informações de Pagamento';

  @override
  String get perWeek => ' / semana';

  @override
  String percentOff(int percent) {
    return '$percent% DE DESCONTO';
  }

  @override
  String get popular => 'Popular';

  @override
  String get privacyPolicy => 'Política de Privacidade';

  @override
  String get restore => 'Restaurar';

  @override
  String get restorePurchases => 'Restaurar Compras';

  @override
  String peopleUsed7DayTrial(String count) {
    return '$count people have used the 7-day Trial in the last 24 hours!';
  }

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
  String get termsOfUse => 'Termos de uso';

  @override
  String thenPerWeek(String price) {
    return 'em seguida $price/semana';
  }

  @override
  String trialDays(int days) {
    return 'Teste de $days dias';
  }

  @override
  String get unlimitedDownload => 'Download ilimitado';

  @override
  String get unlockFullPower => 'Desbloqueie todas as funcionalidades';

  @override
  String unlockFullPowerDescription(String appName) {
    return 'Desbloqueie todo o poder do $appName – o aplicativo de edição com IA definitivo.';
  }

  @override
  String get upgradeNow => 'Atualize agora';

  @override
  String get userReviews => 'Avaliações de usuários';

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
    String _temp0 = intl.Intl.pluralLogic(
      weeks,
      locale: localeName,
      other: '$weeks semanas grátis de avaliação',
      one: '1 semana grátis de avaliação',
    );
    return '$_temp0';
  }

  @override
  String get yearly => 'Anual';

  @override
  String yearlyPrice(String price) {
    return '$price/ano';
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

  @override
  String get paywallExamples => 'Paywall Examples';

  @override
  String reviewSummary(String starCount, String totalDownload) {
    return '$starCount ($totalDownload)';
  }
}
