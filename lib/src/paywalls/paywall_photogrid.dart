import 'package:flutter/material.dart';
import 'dart:async';
import '../models/paywall_config.dart';
import '../widgets/footers.dart';
import '../extensions.dart';

class VipBadge extends StatelessWidget {
  const VipBadge({super.key});

  @override
  Widget build(BuildContext context) => Container(
    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: [const Color(0xFFFFC72C), Colors.white.withValues(alpha: 0.7)],
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
      ),
      borderRadius: BorderRadius.circular(6),
      boxShadow: [BoxShadow(color: Colors.orange.withValues(alpha: 0.3), blurRadius: 4, offset: const Offset(1, 2))],
    ),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'VIP', // TODO: Use context.localizations.vip when available
          style: Theme.of(context).textTheme.labelLarge?.copyWith(color: Colors.white, fontWeight: FontWeight.bold, letterSpacing: 1.2, fontSize: 13),
        ),
        //const SizedBox(width: 3),
        //const Text('✨', style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
      ],
    ),
  );
}

class PaywallPhotoGrid extends StatefulWidget {
  final PaywallConfig paywallConfig;
  const PaywallPhotoGrid({super.key, required this.paywallConfig});

  @override
  State<PaywallPhotoGrid> createState() => _PaywallPhotoGridState();
}

class _PaywallPhotoGridState extends State<PaywallPhotoGrid> with TickerProviderStateMixin {
  int currentIndex = 0;
  late AnimationController _animationController;
  Timer? _autoSlideTimer;

  // Data for different screens with localized titles
  late List<Map<String, String>> screenData;

  @override
  void initState() {
    super.initState();
    _initializeScreenData();
    _animationController = AnimationController(duration: const Duration(milliseconds: 300), vsync: this);

    // Start auto slideshow
    _startAutoSlideshow();
  }

  void _initializeScreenData() {
    // Initialize screen data with localized titles
    screenData = [
      {'title': '', 'background': 'assets/images/woman.jpeg'}, // Will be set in build method
      {'title': '', 'background': 'assets/images/smilingwoman.jpeg'},
      {'title': '', 'background': 'assets/images/womanbeach.jpeg'},
      {'title': '', 'background': 'assets/images/girl.jpg'},
      {'title': '', 'background': 'assets/images/kolaj.jpg'},
      {'title': '', 'background': 'assets/images/dog.jpeg'},
    ];
  }

  void _updateLocalizedTitles(BuildContext context) {
    // Use existing localization keys for testing
    screenData[0]['title'] = context.localizations.adFree; // Test with existing key
    screenData[1]['title'] = context.localizations.appOverview; // Test with existing key
    screenData[2]['title'] = context.localizations.exclusiveFeatures; // Test with existing key
    screenData[3]['title'] = context.localizations.hdQuality; // Test with existing key
    screenData[4]['title'] = context.localizations.unlimitedDownload; // Test with existing key
    screenData[5]['title'] = context.localizations.userReviews; // Test with existing key
  }

  @override
  void dispose() {
    _autoSlideTimer?.cancel();
    _animationController.dispose();
    super.dispose();
  }

  void _startAutoSlideshow() {
    _autoSlideTimer = Timer.periodic(const Duration(seconds: 3), (timer) {
      if (mounted) {
        setState(() {
          currentIndex = (currentIndex + 1) % screenData.length;
        });
        print('Auto slide to: ${screenData[currentIndex]['title']} - ${screenData[currentIndex]['background']}');
      }
    });
  }

  void _nextScreen() {
    // Pause auto slideshow when user interacts
    _autoSlideTimer?.cancel();

    setState(() {
      currentIndex = (currentIndex + 1) % screenData.length;
    });
    print('Next screen: ${screenData[currentIndex]['title']} - ${screenData[currentIndex]['background']}');
    _animationController.forward().then((_) {
      _animationController.reverse();
    });

    // Restart auto slideshow after 5 seconds of no interaction
    Future.delayed(const Duration(seconds: 5), () {
      if (mounted) {
        _startAutoSlideshow();
      }
    });
  }

  void _previousScreen() {
    // Pause auto slideshow when user interacts
    _autoSlideTimer?.cancel();

    setState(() {
      currentIndex = (currentIndex - 1 + screenData.length) % screenData.length;
    });
    print('Previous screen: ${screenData[currentIndex]['title']} - ${screenData[currentIndex]['background']}');
    _animationController.forward().then((_) {
      _animationController.reverse();
    });

    // Restart auto slideshow after 5 seconds of no interaction
    Future.delayed(const Duration(seconds: 5), () {
      if (mounted) {
        _startAutoSlideshow();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // Update localized titles
    _updateLocalizedTitles(context);

    return Scaffold(
      body: GestureDetector(
        onHorizontalDragEnd: (DragEndDetails details) {
          if (details.primaryVelocity! > 0) {
            // Swipe from left to right (previous)
            _previousScreen();
          } else if (details.primaryVelocity! < 0) {
            // Swipe from right to left (next)
            _nextScreen();
          }
        },
        child: Stack(
          children: [
            // Background image with split effect
            Positioned.fill(
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 300),
                child: Container(
                  key: ValueKey(currentIndex),
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(screenData[currentIndex]['background']!),
                      fit: BoxFit.cover,
                      onError: (exception, stackTrace) {
                        // Error handling removed for cleaner code
                      },
                    ),
                  ),
                ),
              ),
            ),
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
                    colors: [Colors.transparent, Colors.white.withValues(alpha: 0.2), Colors.white.withValues(alpha: 0.5)],
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
                              Text(
                                'PhotoGrid',
                                style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
                              ), // TODO: Use context.localizations.photoGrid
                              const VipBadge(),
                            ],
                          ),
                          const SizedBox(height: 8),
                          AnimatedSwitcher(
                            duration: const Duration(milliseconds: 300),
                            child: Text(
                              screenData[currentIndex]['title']!,
                              key: ValueKey(currentIndex),
                              style: const TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
                            ),
                          ),
                          const SizedBox(height: 8),
                          // Swipe indicator dots
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(
                              screenData.length,
                              (index) => Container(
                                width: 8,
                                height: 8,
                                margin: const EdgeInsets.symmetric(horizontal: 4),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: currentIndex == index ? Colors.black : Colors.grey.withValues(alpha: 0.5),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),
                          const SizedBox(height: 70),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 24.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min, // Only take up as much space as the buttons
                              children: [
                                Text('3 days free, then \$33.99/year'), // TODO: Use context.localizations.freeTrialThenYearly('\$33.99')
                                const SizedBox(height: 16),
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.pinkAccent,
                                    minimumSize: const Size.fromHeight(60),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                                  ),
                                  child: const Text('Try It Free'), // TODO: Use context.localizations.tryItFree
                                ),
                                const SizedBox(height: 12),
                                OutlinedButton(
                                  onPressed: () {},
                                  style: OutlinedButton.styleFrom(
                                    minimumSize: const Size.fromHeight(60),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                                  ),
                                  child: Text(context.localizations.monthlyPrice('\$4.99')),
                                ),
                                const SizedBox(height: 0),
                              ],
                            ),
                          ),
                          PaywallFullFooter(paywallConfig: widget.paywallConfig),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Close button
            Positioned(
              top: 0,
              right: 0,
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Material(
                    color: Colors.black.withValues(alpha: 47),
                    borderRadius: BorderRadius.circular(20),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(20),
                      onTap: () => widget.paywallConfig.close(context),
                      child: Container(
                        width: 30,
                        height: 30,
                        alignment: Alignment.center,
                        child: const Icon(Icons.close, color: Colors.white70, size: 20),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
