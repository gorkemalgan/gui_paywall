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
        colors: [
          const Color(0xFFFFD700), // Altın sarısı
          const Color(0xFFFFA500), // Turuncu
          const Color(0xFFFF8C00), // Koyu turuncu
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
      borderRadius: BorderRadius.circular(6),
      boxShadow: [
        BoxShadow(color: Colors.orange.withValues(alpha: 0.4), blurRadius: 8, offset: const Offset(0, 2), spreadRadius: 1),
        BoxShadow(color: Colors.yellow.withValues(alpha: 0.3), blurRadius: 4, offset: const Offset(0, 1)),
      ],
    ),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          context.localizations.vip,
          style: Theme.of(context).textTheme.labelLarge?.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.w900,
            fontStyle: FontStyle.italic,
            letterSpacing: 1.2,
            fontSize: 15,
            shadows: [Shadow(color: Colors.black.withValues(alpha: 0.3), offset: const Offset(0, 1), blurRadius: 2)],
          ),
        ),
        const SizedBox(width: 2),
        const Text('✨', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
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
    // Use proper localization keys for feature titles
    screenData[0]['title'] = context.localizations.imageEnhancer;
    screenData[1]['title'] = context.localizations.photoEditor;
    screenData[2]['title'] = context.localizations.aiFilter;
    screenData[3]['title'] = context.localizations.smartRetouch;
    screenData[4]['title'] = context.localizations.photoCollage;
    screenData[5]['title'] = context.localizations.petPhotography;
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
        widget.paywallConfig.onDebug('Auto slide to: ${screenData[currentIndex]['title']} - ${screenData[currentIndex]['background']}');
      }
    });
  }

  void _nextScreen() {
    // Pause auto slideshow when user interacts
    _autoSlideTimer?.cancel();

    setState(() {
      currentIndex = (currentIndex + 1) % screenData.length;
    });
    widget.paywallConfig.onDebug('Next screen: ${screenData[currentIndex]['title']} - ${screenData[currentIndex]['background']}');
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
    widget.paywallConfig.onDebug('Previous screen: ${screenData[currentIndex]['title']} - ${screenData[currentIndex]['background']}');
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
                    stops: [0.0, 0.4, 1.0],
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
                                context.localizations.photoGrid,
                                style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(width: 12),
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
                              (index) => TweenAnimationBuilder<double>(
                                duration: const Duration(milliseconds: 600),
                                curve: Curves.easeInOutCubic,
                                tween: Tween<double>(begin: currentIndex == index ? 1.0 : 0.0, end: currentIndex == index ? 1.0 : 0.0),
                                builder: (context, value, child) {
                                  return Container(
                                    width: 6 + (value * 6),
                                    height: 6,
                                    margin: const EdgeInsets.symmetric(horizontal: 3),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color.lerp(Colors.grey.withValues(alpha: 0.5), Colors.black, value),
                                    ),
                                  );
                                },
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
                                Text(context.localizations.freeTrialThenYearly('\$33.99')),
                                const SizedBox(height: 16),
                                Container(
                                  width: double.infinity,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    gradient: const LinearGradient(
                                      colors: [
                                        Color(0xFFFF6B35), // Orange
                                        Color(0xFFE91E63), // Pink
                                      ],
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Material(
                                    color: Colors.transparent,
                                    child: InkWell(
                                      borderRadius: BorderRadius.circular(8),
                                      onTap: () {},
                                      child: Center(
                                        child: Text(
                                          context.localizations.tryItFree,
                                          style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 12),
                                OutlinedButton(
                                  onPressed: () {},
                                  style: OutlinedButton.styleFrom(
                                    minimumSize: const Size.fromHeight(60),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                                    side: const BorderSide(color: Color(0xFFE91E63), width: 2), // Pink border
                                  ),
                                  child: Text(
                                    context.localizations.monthlyPrice('\$4.99'),
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFFE91E63), // Pink color
                                    ),
                                  ),
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
                    color: Colors.white.withValues(alpha: 0.85),
                    borderRadius: BorderRadius.circular(20),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(20),
                      onTap: () => widget.paywallConfig.close(context),
                      child: Container(
                        width: 30,
                        height: 30,
                        alignment: Alignment.center,
                        child: const Icon(Icons.close, color: Colors.black54, size: 20),
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
