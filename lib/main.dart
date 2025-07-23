import 'package:flutter/material.dart';
import 'src/paywalls/face_lab.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import '../generated/intl/messages.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    home: FaceLabPremiumScreen(),
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
