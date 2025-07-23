import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:desktop_window/desktop_window.dart';

import 'package:gui_paywall/gui_paywall.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (Platform.isMacOS || kIsWeb) {
    Size windowSize = const Size(393, 852); // ipad (1366, 1024)
    await DesktopWindow.setWindowSize(windowSize);
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
    title: 'GUI Paywall Example',
    theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple), useMaterial3: true),
    localizationsDelegates: const [
      PaywallLocalizations.delegate,
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ],
    supportedLocales: const [Locale('en')],
    home: const PaywallListScreen(),
  );
}

class PaywallListScreen extends StatelessWidget {
  const PaywallListScreen({super.key});

  PaywallConfig _createMockPaywallConfig() {
    final products = [
      const PaywallProduct(
        storeId: 'weekly_sub',
        price: 4.99,
        currency: 'USD',
        priceString: '\$4.99',
        period: ProductPeriod.weekly,
        title: 'Weekly Premium',
        description: 'Get premium access for 1 week',
      ),
      const PaywallProduct(
        storeId: 'monthly_sub',
        price: 9.99,
        currency: 'USD',
        priceString: '\$9.99',
        period: ProductPeriod.monthly,
        title: 'Monthly Premium',
        description: 'Get premium access for 1 month',
        freeTrialDays: 3,
      ),
      const PaywallProduct(
        storeId: 'yearly_sub',
        price: 49.99,
        currency: 'USD',
        priceString: '\$49.99',
        period: ProductPeriod.yearly,
        title: 'Yearly Premium',
        description: 'Best value - Save 58%!',
        freeTrialDays: 7,
      ),
    ];

    return PaywallConfig(
      appName: 'PixVibe',
      name: 'placement_1',
      debugMode: false,
      isPro: () => false,
      products: products,
      onAnalyticsEvent: (event, {Map<String, Object>? parameters}) async {},
      onDebug: (message) => debugPrint('Debug: $message'),
      onLog: (message) => debugPrint('Log: $message'),
      onWarning: (message) => debugPrint('Warning: $message'),
      onError: (message) => debugPrint('Error: $message'),
      onRestore: () async => await Future.delayed(const Duration(seconds: 2)),
      onTermsOfUse: () {},
      onPrivacyPolicy: () {},
      onPurchase: (product) async {
        debugPrint('Purchasing ${product.storeId}');
        await Future.delayed(const Duration(seconds: 2));
        return true;
      },
      processUI: <T>(action) async => await action(),
      processNoProgress: <T>(action) async => await action(),
      onClose: () => debugPrint('Paywall closed'),
      singleDisplayProduct: 1,
    );
  }

  @override
  Widget build(BuildContext context) {
    final paywallConfig = _createMockPaywallConfig();

    return Scaffold(
      appBar: AppBar(backgroundColor: Theme.of(context).colorScheme.inversePrimary, title: Text(PaywallLocalizations.of(context)!.paywallExamples)),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildPaywallButton(
                context,
                'Free Trial Paywall',
                () => PaywallFreeTrial(
                  paywallConfig,
                  userComments: const {
                    'comments': [
                      {'name': 'John Doe', 'comment': 'Amazing app! The premium features are worth it.', 'rating': 5},
                      {'name': 'Jane Smith', 'comment': 'Love the AI features. Highly recommended!', 'rating': 5},
                    ],
                  },
                  features: const {
                    'features': [
                      {'title': 'AI Enhancement', 'description': 'Enhance your photos with AI'},
                      {'title': 'Remove Background', 'description': 'Remove backgrounds instantly'},
                      {'title': 'Filters & Effects', 'description': '100+ premium filters'},
                    ],
                  },
                ),
              ),
              const SizedBox(height: 16),
              _buildPaywallButton(
                context,
                'Paywall 3',
                () => Paywall3(
                  paywallConfig,
                  video: Container(
                    color: Colors.blue.shade100,
                    child: const Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.play_circle_outline, size: 80, color: Colors.blue),
                          SizedBox(height: 16),
                          Text(
                            'Demo Video',
                            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blue),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              _buildPaywallButton(
                context,
                'Paywall Remini',
                () => PaywallRemini(paywall: paywallConfig, image: Image.asset('assets/images/woman.jpeg')),
              ),
              const SizedBox(height: 16),
              _buildPaywallButton(context, 'Video Up!', () => VideoUpScreen(paywall: paywallConfig, image: Image.asset('assets/images/woman.jpeg'))),
              const SizedBox(height: 16),
              _buildPaywallButton(context, 'Photo Grid', () => const PaywallPhotoGrid()),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPaywallButton(BuildContext context, String title, Widget Function() destinationBuilder) => SizedBox(
    width: double.infinity,
    child: ElevatedButton(
      onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => destinationBuilder())),
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      child: Text(title, style: const TextStyle(fontSize: 16)),
    ),
  );
}
