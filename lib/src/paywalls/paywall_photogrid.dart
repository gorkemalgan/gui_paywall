import 'package:flutter/material.dart';
import '../models/paywall_config.dart';
import '../widgets/footers.dart';

class PaywallPhotoGrid extends StatelessWidget {
  final PaywallConfig paywallConfig;
  const PaywallPhotoGrid({super.key, required this.paywallConfig});

  @override
  Widget build(BuildContext context) => Scaffold(
    body: Stack(
      children: [
        // Background image with split effect
        Positioned.fill(child: Image.asset('assets/images/woman.jpeg', fit: BoxFit.cover)),
        // Alt kısımda beyaza geçiş efekti
        Positioned.fill(
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [Colors.white, Colors.white, Colors.transparent],
                stops: [0.0, 0.2, 1.0],
              ),
            ),
          ),
        ),
        // Semi-transparent white gradient overlay
        Positioned.fill(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.transparent, Colors.white.withOpacity(0.2), Colors.white.withOpacity(0.5)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.0, 0.7, 1.0],
              ),
            ),
          ),
        ),
        // Paywall content
        SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 390), // Üstten boşluk, başlığı aşağıya alır
              Text('PhotoGrid VIP✨', style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const Text('Image Enhancer', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
              const SizedBox(height: 16),
              const Text('3 days free, then \$33.99/year'),
              const SizedBox(height: 90),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min, // Butonlar kadar yer kaplasın
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Abonelik başlat
                      },
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.pinkAccent, minimumSize: const Size.fromHeight(48)),
                      child: const Text('Try It Free'),
                    ),
                    const SizedBox(height: 12),
                    OutlinedButton(
                      onPressed: () {
                        // Aylık abonelik başlat
                      },
                      style: OutlinedButton.styleFrom(minimumSize: const Size.fromHeight(48)),
                      child: const Text('\$4.99 /month'),
                    ),
                    const SizedBox(height: 4),
                    // Footer'ı ekle
                    PaywallFullFooter(paywallConfig: paywallConfig),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
