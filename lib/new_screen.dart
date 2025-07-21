import 'package:flutter/material.dart';

class Paywall4 extends StatelessWidget {
  const Paywall4({super.key});

  @override
  Widget build(BuildContext context) => const Scaffold(
    backgroundColor: Colors.black,
    body: SafeArea(child: _PremiumCarousel()),
  );
}

class _PremiumCarousel extends StatefulWidget {
  const _PremiumCarousel();

  @override
  State<_PremiumCarousel> createState() => _PremiumCarouselState();
}

class _PremiumCarouselState extends State<_PremiumCarousel> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<_PageData> _pages = [
    _PageData(
      trialLabel: 'FIRST 7 DAYS FREE',
      headerSub: 'First 7 days free',
      imagePath: 'assets/first.png',
      planName: 'Mega Fan',
      priceLine: '\$0.00 for the first 7 days',
      renewLine: 'Renews at \$11.99/month afterwards',
      features: [
        'No ads',
        'Unlimited access to the Crunchyroll library',
        'Simulcast the same day as Japan',
        'Access Crunchyroll Game Vault, a catalog of free games',
        'Stream on 4 devices',
        'Offline Viewing',
      ],
      disabledFeature: '16% discount on Monthly Plan (billed every 12 months)',
      buttonText: 'SUBSCRIBE WITH FREE TRIAL',
    ),
    _PageData(
      trialLabel: 'BEST DEAL!',
      headerSub: '7 day free trial',
      imagePath: 'assets/second.png',
      planName: 'Mega Fan',
      priceLine: '\$11.99/month',
      renewLine: '',
      features: [
        'No ads',
        'Unlimited access to the Crunchyroll library',
        'Simulcast the same day as Japan',
        'Access Crunchyroll Game Vault, a catalog of free games',
        'Stream on 4 devices',
        'Offline Viewing',
      ],
      disabledFeature: '16% discount on Monthly Plan (billed every 12 months)',
      buttonText: 'SUBSCRIBE WITH FREE TRIAL',
    ),
    _PageData(
      trialLabel: 'BEST DEAL!',
      headerSub: '14 day free trial',
      imagePath: 'assets/third.png',
      planName: 'Mega Fan',
      priceLine: '\$9.99 / month after trial ends',
      renewLine: '',
      features: ['Enjoy the newest episodes of anime, no ads, and Offline Viewing on multiple devices!'],
      disabledFeature: '',
      buttonText: 'GO PREMIUM',
    ),
  ];

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      final page = _pageController.page?.round() ?? 0;
      if (page != _currentPage) setState(() => _currentPage = page);
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  Widget _buildDots() => Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: List.generate(
      _pages.length,
      (i) => AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        margin: const EdgeInsets.symmetric(horizontal: 4),
        width: i == _currentPage ? 12 : 8,
        height: i == _currentPage ? 12 : 8,
        decoration: BoxDecoration(color: i == _currentPage ? Colors.amber : Colors.grey, shape: BoxShape.circle),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) => Column(
    children: [
      const SizedBox(height: 32),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 4),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: IconButton(
                icon: const Icon(Icons.close, color: Colors.white, size: 28),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ),
            const Center(
              child: Text(
                'Crunchyroll Premium',
                style: TextStyle(color: Colors.amber, fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
      if (_currentPage == 2)
        const Padding(
          padding: EdgeInsets.only(top: 4, bottom: 2),
          child: Text('14 day free trial', style: TextStyle(color: Colors.grey, fontSize: 16)),
        ),
      const SizedBox(height: 5),
      if (_currentPage != 2) ...[
        _buildDots(),
        if (_currentPage == 1)
          const Padding(
            padding: EdgeInsets.only(top: 8, bottom: 2),
            child: Text('7 day free trial', style: TextStyle(color: Colors.white, fontSize: 16)),
          ),
      ],
      const SizedBox(height: 12),
      Expanded(
        child: PageView.builder(
          controller: _pageController,
          itemCount: _pages.length,
          itemBuilder: (context, idx) {
            final p = _pages[idx];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  // Kart içeriği
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.amber, width: 2),
                        color: Colors.black,
                      ),
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          if (!(idx == 2)) ...[
                            Text(
                              p.trialLabel,
                              style: const TextStyle(color: Colors.amber, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 10),
                          ],
                          Image.asset('assets/images/mascot_m.png', height: 140, fit: BoxFit.cover),
                          if (idx == 2) ...[
                            const SizedBox(height: 8),
                            Text(
                              'BEST DEAL!',
                              style: TextStyle(color: Colors.amber, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ],
                          const SizedBox(height: 10),
                          if (idx == 2) ...[
                            Container(
                              width: double.infinity,
                              padding: const EdgeInsets.all(13),
                              margin: const EdgeInsets.symmetric(horizontal: 28, vertical: 2).copyWith(bottom: 10),
                              decoration: BoxDecoration(
                                color: Colors.grey.shade900,
                                border: Border.all(color: Colors.amber, width: 1.5),
                                borderRadius: BorderRadius.zero,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    p.planName,
                                    style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                  const SizedBox(height: 6),
                                  ...p.features.map(
                                    (f) => Text(
                                      f,
                                      style: const TextStyle(color: Colors.white),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Text(
                                    p.priceLine,
                                    style: const TextStyle(color: Colors.white, fontSize: 16),
                                    textAlign: TextAlign.center,
                                  ),
                                  const SizedBox(height: 10),
                                  Text(
                                    'LEARN MORE',
                                    style: TextStyle(color: Colors.red.shade400, fontSize: 13, fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ] else ...[
                            Text(
                              p.planName,
                              style: const TextStyle(color: Colors.amber, fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 6),
                            Text(p.priceLine, style: const TextStyle(color: Colors.white, fontSize: 16)),
                            if (p.renewLine.isNotEmpty) Text(p.renewLine, style: const TextStyle(color: Colors.grey, fontSize: 14)),
                            const SizedBox(height: 10),
                            ...p.features.map(
                              (f) => Row(
                                children: [
                                  const Icon(Icons.check, color: Colors.amber, size: 20),
                                  const SizedBox(width: 8),
                                  Expanded(
                                    child: Text(f, style: const TextStyle(color: Colors.white)),
                                  ),
                                ],
                              ),
                            ),
                            if (p.disabledFeature.isNotEmpty)
                              Padding(
                                padding: const EdgeInsets.only(top: 8),
                                child: Row(
                                  children: [
                                    const Icon(Icons.close, color: Colors.grey, size: 20),
                                    const SizedBox(width: 8),
                                    Expanded(
                                      child: Text(p.disabledFeature, style: const TextStyle(color: Colors.grey)),
                                    ),
                                  ],
                                ),
                              ),
                          ],
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.workspace_premium, color: Colors.black, size: 22),
                          const SizedBox(width: 8),
                          Text(
                            p.buttonText,
                            style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            );
          },
        ),
      ),
    ],
  );
}

class _PageData {
  final String trialLabel, headerSub, imagePath, planName;
  final String priceLine, renewLine;
  final List<String> features;
  final String disabledFeature, buttonText;

  _PageData({
    required this.trialLabel,
    required this.headerSub,
    required this.imagePath,
    required this.planName,
    required this.priceLine,
    required this.renewLine,
    required this.features,
    required this.disabledFeature,
    required this.buttonText,
  });
}
