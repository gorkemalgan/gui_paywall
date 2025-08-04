import 'package:flutter/material.dart';
import '../extensions.dart';
import '../widgets/footers.dart';
import '../base/paywall_base.dart';
import '../models/paywall_config.dart';

class FaceLabPremiumScreen extends PaywallBase {
  const FaceLabPremiumScreen({super.key, required PaywallConfig paywall}) : super(paywall);

  @override
  PaywallConfig validateConfiguration() {
    // Basit validasyon örneği, istersen detaylandırabilirsin
    if (paywall.products.isEmpty) {
      paywall.onError('FaceLabPremiumScreen requires at least one product');
    }
    return paywall;
  }

  @override
  State<FaceLabPremiumScreen> createState() => _FaceLabPremiumScreenState();
}

class _FaceLabPremiumScreenState extends State<FaceLabPremiumScreen> with PaywallSanityCheck<FaceLabPremiumScreen> {
  bool _freeTrialEnabled = true;

  String capitalizeEachWord(String text) => text.split(' ').map((w) => w.isNotEmpty ? w[0].toUpperCase() + w.substring(1) : '').join(' ');

  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: Colors.black,
    body: Stack(
      children: [
        // Sabit arka plan görseli
        Positioned.fill(
          child: Image.asset(
            'assets/images/woman_facelabb.jpg',
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) => Container(color: Colors.black),
          ),
        ),
        // Gradient overlay (isteğe bağlı, daha okunur foreground için)
        Positioned.fill(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.transparent, Colors.black.withValues(alpha: 0.3), Colors.black.withValues(alpha: 0.8), Colors.black],
                stops: const [0.0, 0.4, 0.7, 1.0],
              ),
            ),
          ),
        ),
        // Scrollable foreground
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Container(
            color: Colors.black.withValues(alpha: 0.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // TEST: Fazladan boşluk ekle, scroll olup olmadığını gör
                const SizedBox(height: 520),
                const SizedBox(height: 60),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // GestureDetector ile olan kapatma tuşu kaldırıldı
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      context.localizations.faceLabPremium,
                      style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Unlimited full access',
                      style: const TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const SizedBox(height: 18),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  decoration: BoxDecoration(color: Colors.grey[900], borderRadius: BorderRadius.circular(32)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        capitalizeEachWord(context.localizations.freeTrialEnabled(3)),
                        style: const TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _freeTrialEnabled = !_freeTrialEnabled;
                          });
                        },
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 200),
                          width: 44,
                          height: 26,
                          padding: const EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            color: _freeTrialEnabled ? Colors.deepPurple : Colors.grey[700],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: AnimatedAlign(
                            duration: const Duration(milliseconds: 200),
                            alignment: _freeTrialEnabled ? Alignment.centerRight : Alignment.centerLeft,
                            curve: Curves.easeInOut,
                            child: Container(
                              width: 20,
                              height: 20,
                              decoration: const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: Container(
                    width: double.infinity,
                    height: 56,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(colors: [Color(0xFF7F7BFF), Color(0xFF00C6FF)]),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(16),
                        onTap: () {},
                        child: Center(
                          child: Text(
                            context.localizations.startFreeTrial,
                            style: const TextStyle(fontSize: 17, color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.check_circle, color: Colors.green, size: 16),
                    const SizedBox(width: 4),
                    Text(
                      context.localizations.noPaymentNow,
                      style: const TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                // Footer en sonda, scroll ile görünür
                PaywallFullFooter(paywallConfig: widget.paywall, isFreeTrial: true),

                // TEST: Fazladan boşluk ekle, scroll olup olmadığını gör
                const SizedBox(height: 24),
              ],
            ),
          ),
        ),
        // Kapatma butonu
        Positioned(
          top: 0,
          left: 0,
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Material(
                color: Colors.black.withAlpha(47),
                borderRadius: BorderRadius.circular(20),
                child: InkWell(
                  borderRadius: BorderRadius.circular(20),
                  onTap: () => Navigator.of(context).pop(),
                  child: Container(
                    width: 30,
                    height: 30,
                    alignment: Alignment.center,
                    child: Icon(Icons.close, color: Colors.white70, size: 20),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
