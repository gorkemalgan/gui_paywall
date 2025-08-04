import 'package:flutter/material.dart';
import 'src/paywalls/face_lab.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import '../generated/intl/messages.dart';
import 'src/models/paywall_config.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    home: FaceLabPremiumScreen(
      paywall: PaywallConfig(
        appName: 'FaceLab',
        name: 'face_lab',
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
      ),
    ),
    locale: const Locale('tr'),
    localizationsDelegates: [
      PaywallLocalizations.delegate,
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ],
    supportedLocales: const [Locale('en'), Locale('tr')],
  );
}

void main() {
  runApp(const MyApp());
}
