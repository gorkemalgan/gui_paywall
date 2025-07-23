import 'package:flutter/material.dart';

class PaywallPhotoGrid extends StatelessWidget {
  const PaywallPhotoGrid({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    body: Stack(
      children: [
        // Background image with split effect
        Positioned.fill(child: Image.asset('assets/images/woman.jpeg', fit: BoxFit.cover)),
        // Semi-transparent white gradient overlay
        Positioned.fill(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.white.withValues(alpha: 0.6), Colors.white.withValues(alpha: 0.9)],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
          ),
        ),
        // Paywall content
        SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text('PhotoGrid VIP✨', style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const Text('Image Enhancer', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
              const SizedBox(height: 16),
              const Text('3 days free, then \$33.99/year'),
              const SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
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
                    const SizedBox(height: 16),
                    TextButton(
                      onPressed: () {
                        // Geri yükle (restore purchases)
                      },
                      child: const Text('Restore'),
                    ),
                    const SizedBox(height: 20),
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
