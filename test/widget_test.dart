// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:gui_paywall/src/models/paywall_config.dart';
import 'package:gui_paywall/src/paywalls/face_lab.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    final mockPaywall = PaywallConfig(
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
    await tester.pumpWidget(MaterialApp(debugShowCheckedModeBanner: false, home: FaceLabPremiumScreen(paywall: mockPaywall)));

    // The rest of the test is for a counter app, which does not exist in FaceLabPremiumScreen.
    // You may want to update or remove these lines based on your actual UI.
    // expect(find.text('0'), findsOneWidget);
    // expect(find.text('1'), findsNothing);

    // // Tap the '+' icon and trigger a frame.
    // await tester.tap(find.byIcon(Icons.add));
    // await tester.pump();

    // // Verify that our counter has incremented.
    // expect(find.text('0'), findsNothing);
    // expect(find.text('1'), findsOneWidget);
  });
}
