import 'package:flutter_test/flutter_test.dart';
import 'package:gui_paywall/src/paywalls/face_lab.dart';
import 'package:gui_paywall/src/base/paywall_base.dart';
import 'package:gui_paywall/src/models/paywall_config.dart';

void main() {
  test('FaceLabPremiumScreen should inherit from PaywallBase', () {
    // Test 1: Instance oluştur
    final paywallConfig = PaywallConfig(
      appName: 'Test',
      name: 'test',
      debugMode: false,
      isPro: () => false,
      products: const [],
      onAnalyticsEvent: (event, {parameters}) async {},
      onDebug: (msg) {},
      onLog: (msg) {},
      onWarning: (msg) {},
      onError: (msg) {},
      onPurchase: (product) async => false,
      onRestore: () async => false,
      onTermsOfUse: () {},
      onPrivacyPolicy: () {},
      processUI: <T>(action) async => await action(),
      processNoProgress: <T>(action) async => await action(),
    );

    final faceLabScreen = FaceLabPremiumScreen(paywall: paywallConfig);

    // Test 2: PaywallBase tipinde mi kontrol et
    expect(faceLabScreen, isA<PaywallBase>());

    // Test 3: PaywallBase özelliklerine erişebiliyor mu
    expect(faceLabScreen.paywall, equals(paywallConfig));

    // Test 4: PaywallBase metodlarını çağırabiliyor mu
    final validatedConfig = faceLabScreen.validateConfiguration();
    expect(validatedConfig, isA<PaywallConfig>());

    print('✅ FaceLabPremiumScreen başarıyla PaywallBase\'den inherit ediyor!');
  });
}
