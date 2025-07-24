import 'package:flutter/material.dart';
import '../models/paywall_config.dart';
import '../widgets/footers.dart';

class VipBadge extends StatelessWidget {
  const VipBadge({super.key});

  @override
  Widget build(BuildContext context) => Container(
    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: [const Color(0xFFFFC72C), Colors.white.withOpacity(0.7)],
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
      ),
      borderRadius: BorderRadius.circular(6),
      boxShadow: [BoxShadow(color: Colors.orange.withOpacity(0.3), blurRadius: 4, offset: const Offset(1, 2))],
    ),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'VIP',
          style: Theme.of(context).textTheme.labelLarge?.copyWith(color: Colors.white, fontWeight: FontWeight.bold, letterSpacing: 1.2, fontSize: 13),
        ),
        const SizedBox(width: 3),
        const Text('✨', style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
      ],
    ),
  );
}

class PaywallPhotoGrid extends StatelessWidget {
  final PaywallConfig paywallConfig;
  const PaywallPhotoGrid({super.key, required this.paywallConfig});

  @override
  Widget build(BuildContext context) => Scaffold(
    body: Stack(
      children: [
        // Background image with split effect
        Positioned.fill(child: Image.asset('assets/images/woman.jpeg', fit: BoxFit.cover)),
        // White fade effect at the bottom
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
              Expanded(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      const SizedBox(height: 390), // Top spacing, moves the title down
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('PhotoGrid ', style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold)),
                          const VipBadge(),
                        ],
                      ),
                      const SizedBox(height: 8),
                      const Text('Image Enhancer', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
                      const SizedBox(height: 16),
                      const Text('3 days free, then \$33.99/year'),
                      const SizedBox(height: 100),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min, // Only take up as much space as the buttons
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                // Abonelik başlat
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.pinkAccent,
                                minimumSize: const Size.fromHeight(60),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                              ),
                              child: const Text('Try It Free'),
                            ),
                            const SizedBox(height: 12),
                            OutlinedButton(
                              onPressed: () {
                                // Aylık abonelik başlat
                              },
                              style: OutlinedButton.styleFrom(
                                minimumSize: const Size.fromHeight(60),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                              ),
                              child: const Text('\$4.99 /month'),
                            ),
                            const SizedBox(height: 12),
                          ],
                        ),
                      ),
                      PaywallFullFooter(paywallConfig: paywallConfig),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
