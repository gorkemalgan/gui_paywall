// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../../gui_paywall.dart';
import '../extensions.dart';
import '../widgets/fitted_text.dart';

class PaywallRemini extends PaywallBase {
  final Widget image;
  const PaywallRemini({super.key, required PaywallConfig paywall, required this.image}) : super(paywall);

  @override
  PaywallConfig validateConfiguration() {
    // Get the configuration with only paired products
    final pairedConfig = paywall.paired;
    final pairs = pairedConfig.productsPaired;
    // Check we have 2 or 3 pairs
    if (pairs.length < 2 || pairs.length > 3) {
      paywall.onError('PaywallRemini requires 2 or 3 product pairs, found ${pairs.length}');
    }
    return pairedConfig;
  }

  @override
  State<PaywallRemini> createState() => _PlanScreenState();
}

class _PlanScreenState extends State<PaywallRemini> with PaywallSanityCheck<PaywallRemini>, TickerProviderStateMixin {
  late final List<List<PaywallProduct>> _productPairs;
  late final List<PaywallProduct> _displayProducts;
  int? selectedProductIndex;
  bool notSureYetSelected = false;
  bool freeTrialEnabled = false;
  bool showOtherPlans = false;
  late AnimationController _monthlyAnimationController;
  late Animation<double> _monthlyHeightAnimation;
  late Animation<double> _monthlyOpacityAnimation;
  late AnimationController _buttonAnimationController;
  late Animation<Color?> _buttonBackgroundAnimation;
  late Animation<Color?> _buttonForegroundAnimation;

  @override
  void initState() {
    super.initState();

    // Get product pairs (already validated and sorted in PaywallConfig)
    _productPairs = paywall.productsPaired;

    // For display, we show the non-trial products initially
    _displayProducts = _productPairs.map((pair) => pair[0]).toList();

    // Initialize animation controller
    _monthlyAnimationController = AnimationController(duration: const Duration(milliseconds: 700), vsync: this);

    // Height animation (0-400ms)
    _monthlyHeightAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _monthlyAnimationController,
        curve: const Interval(0.0, 0.57, curve: Curves.easeOut), // 400ms / 700ms = 0.57
      ),
    );

    // Opacity animation (400-700ms)
    _monthlyOpacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _monthlyAnimationController,
        curve: const Interval(0.57, 1.0, curve: Curves.easeIn), // Start after height completes
      ),
    );

    // Initialize button animation controller
    _buttonAnimationController = AnimationController(duration: const Duration(milliseconds: 300), vsync: this);

    // Button color animations
    _buttonBackgroundAnimation = ColorTween(
      begin: Colors.white12,
      end: Colors.white,
    ).animate(CurvedAnimation(parent: _buttonAnimationController, curve: Curves.easeInOut));

    _buttonForegroundAnimation = ColorTween(
      begin: Colors.grey,
      end: Colors.black,
    ).animate(CurvedAnimation(parent: _buttonAnimationController, curve: Curves.easeInOut));
  }

  @override
  void dispose() {
    _monthlyAnimationController.dispose();
    _buttonAnimationController.dispose();
    super.dispose();
  }

  bool _isLongestDurationProduct(PaywallProduct product) {
    // Find the product with the longest duration
    if (_displayProducts.isEmpty) return false;

    final longestProduct = _displayProducts.reduce((a, b) => a.period.durationDays > b.period.durationDays ? a : b);

    return product == longestProduct;
  }

  ProductPeriod? _getShortestPeriod() {
    if (_displayProducts.isEmpty) return null;
    return _displayProducts.reduce((a, b) => a.period.durationDays < b.period.durationDays ? a : b).period;
  }

  ProductPeriod? _getLongestPeriod() {
    if (_displayProducts.isEmpty) return null;
    return _displayProducts.reduce((a, b) => a.period.durationDays > b.period.durationDays ? a : b).period;
  }

  ProductPeriod? _getMiddlePeriod() {
    if (_displayProducts.length < 3) return null;

    // Sort products by duration
    final sortedProducts = _displayProducts.toList()..sort((a, b) => a.period.durationDays.compareTo(b.period.durationDays));

    // Return the middle period if we have 3 products
    if (sortedProducts.length == 3) {
      return sortedProducts[1].period;
    }

    // For more than 3 products, find the period that's neither shortest nor longest
    final shortest = _getShortestPeriod();
    final longest = _getLongestPeriod();

    for (final product in _displayProducts) {
      if (product.period != shortest && product.period != longest) {
        return product.period;
      }
    }

    return null;
  }

  String _getWeeklyPriceString(BuildContext context, PaywallProduct item) {
    final weeklyPrice = item.price / (item.period.durationDays / 7);
    return context.localizations.thenPerWeek("${item.currency_.toUpperCase()}${weeklyPrice.toStringAsFixed(2)}");
  }

  Widget _buildNotSureYetTile(BuildContext context) => GestureDetector(
    onTap: () {
      setState(() {
        notSureYetSelected = !notSureYetSelected;
        if (notSureYetSelected) {
          freeTrialEnabled = true;
        } else {
          freeTrialEnabled = false;
        }
      });
    },
    child: Container(
      margin: const EdgeInsets.only(bottom: 32),
      padding: const EdgeInsets.all(12),
      constraints: const BoxConstraints(minHeight: 64),
      decoration: BoxDecoration(
        border: Border.all(color: notSureYetSelected ? Colors.white : Colors.white30),
        borderRadius: BorderRadius.circular(14),
        color: Colors.white.withAlpha(51),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FittedText(
                  context.localizations.notSureYet,
                  style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 4.0),
                  child: FittedText(
                    context.localizations.enableFreeTrial,
                    style: const TextStyle(fontSize: 13, color: Colors.white70, fontWeight: FontWeight.normal),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 22,
            height: 22,
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(color: Colors.white70, width: 2),
              shape: BoxShape.circle,
            ),
            child: notSureYetSelected
                ? Center(
                    child: Container(
                      width: 10,
                      height: 10,
                      decoration: const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                    ),
                  )
                : null,
          ),
        ],
      ),
    ),
  );

  Widget _buildProductTile(BuildContext context, int index, PaywallProduct productWithoutTrial, PaywallProduct productWithTrial) => GestureDetector(
    onTap: () {
      setState(() {
        selectedProductIndex = selectedProductIndex == index ? null : index;
        if (selectedProductIndex != null) {
          _buttonAnimationController.forward();
        } else {
          _buttonAnimationController.reverse();
        }
      });
    },
    child: Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 12),
          padding: const EdgeInsets.all(12),
          constraints: const BoxConstraints(minHeight: 64),
          decoration: BoxDecoration(
            border: Border.all(color: selectedProductIndex == index ? Colors.white : Colors.white30),
            borderRadius: BorderRadius.circular(14),
            color: Colors.black,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Left side
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FittedText(
                      productWithoutTrial.period.localizedName(context),
                      style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    // Price info below for non-shortest periods
                    if (productWithoutTrial.period != _getShortestPeriod())
                      Padding(
                        padding: const EdgeInsets.only(top: 4.0),
                        child: FittedText(
                          freeTrialEnabled ? productWithTrial.priceStringPerPeriod(context) : productWithoutTrial.priceStringPerPeriod(context),
                          style: const TextStyle(fontSize: 13, color: Colors.white70),
                        ),
                      ),
                  ],
                ),
              ),

              // right side
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: productWithoutTrial.period == _getShortestPeriod() ? MainAxisAlignment.center : MainAxisAlignment.start,
                children: [
                  FittedText(
                    productWithoutTrial.period == _getShortestPeriod()
                        ? freeTrialEnabled
                              ? context.localizations.thenPerWeek(productWithTrial.priceString_)
                              : context.localizations.thenPerWeek(productWithoutTrial.priceString_)
                        : _getWeeklyPriceString(context, freeTrialEnabled ? productWithTrial : productWithoutTrial),
                    style: const TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ),
        // Best Value badge positioned at top right edge
        if (_isLongestDurationProduct(productWithoutTrial))
          Positioned(
            top: -10,
            right: 20,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              decoration: BoxDecoration(color: const Color(0xFFFF1744), borderRadius: BorderRadius.circular(16)),
              child: FittedText(
                context.localizations.bestValue,
                style: const TextStyle(fontSize: 11, color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        // Free trial badge positioned at top left edge
        if (freeTrialEnabled && productWithTrial.haveFreeTrial)
          Positioned(
            top: -10,
            left: 20,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              decoration: BoxDecoration(color: const Color.fromARGB(255, 36, 112, 107), borderRadius: BorderRadius.circular(16)),
              child: FittedText(
                context.localizations.daysFreeTrial(productWithTrial.freeTrialDays!),
                style: const TextStyle(fontSize: 11, color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: Colors.black,
    body: LayoutBuilder(
      builder: (context, constraints) {
        final screenHeight = constraints.maxHeight;

        return Stack(
          children: [
            // Background - fit height
            Positioned.fill(
              child: FittedBox(fit: BoxFit.fitWidth, alignment: Alignment.topCenter, child: widget.image),
            ),
            // Gradient overlay
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      Colors.black.withValues(alpha: 0.3),
                      Colors.black.withValues(alpha: 0.8),
                      Colors.black.withValues(alpha: 0.9),
                      Colors.black,
                    ],
                    stops: const [0.0, 0.4, 0.5, 0.6, 1.0],
                  ),
                ),
              ),
            ),
            // Scrollable content
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  // Main content with screen height
                  SizedBox(
                    height: screenHeight,
                    child: SafeArea(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Column(
                          children: [
                            // Restore purchases
                            const SizedBox(height: 14),
                            // Center(
                            //   child: TextButton(
                            //     onPressed: () => widget.paywall.restorePurchases(context),
                            //     child: FittedText(
                            //       context.localizations.restorePurchases,
                            //       style: const TextStyle(
                            //         fontSize: 14,
                            //         fontWeight: FontWeight.w500,
                            //         color: Colors.white70,
                            //         decoration: TextDecoration.underline,
                            //         decorationColor: Colors.white70,
                            //       ),
                            //     ),
                            //   ),
                            // ),
                            const Spacer(),

                            Align(
                              alignment: Alignment.centerLeft,
                              child: FittedText(
                                context.localizations.chooseYourPlan,
                                style: const TextStyle(fontSize: 26, color: Colors.white, fontWeight: FontWeight.bold),
                              ),
                            ),
                            const SizedBox(height: 8),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: FittedText(
                                context.localizations.unlockFullPowerDescription(paywall.appName),
                                maxLines: 2,
                                textAlign: TextAlign.start,
                                style: const TextStyle(fontSize: 14, color: Colors.white70),
                              ),
                            ),

                            const SizedBox(height: 24),

                            // Add padding to prevent badge cutoff
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: AnimatedSize(
                                duration: const Duration(milliseconds: 400),
                                curve: Curves.easeInOut,
                                child: Column(
                                  children: [
                                    // "Not sure yet?" tile at the top
                                    _buildNotSureYetTile(context),

                                    // Plan cards with animated positioning
                                    ..._displayProducts.asMap().entries.map((entry) {
                                      final index = entry.key;
                                      final item = entry.value;

                                      // Calculate visibility and animation
                                      final middlePeriod = _getMiddlePeriod();
                                      final longestPeriod = _getLongestPeriod();
                                      final shortestPeriod = _getShortestPeriod();

                                      // If we don't have a middle period, default to showing all periods
                                      bool shouldShow = showOtherPlans || (middlePeriod != null ? item.period != middlePeriod : true);
                                      bool isMiddle = middlePeriod != null && item.period == middlePeriod;
                                      double verticalOffset = 0.0;

                                      // When showing other plans, animate existing items
                                      if (showOtherPlans) {
                                        if (item.period == longestPeriod) {
                                          verticalOffset = -0.1; // Move up slightly
                                        } else if (item.period == shortestPeriod) {
                                          verticalOffset = 0.1; // Move down slightly
                                        }
                                      }

                                      // Build the base tile
                                      Widget tile = _buildProductTile(context, index, _productPairs[index][0], _productPairs[index][1]);

                                      // For middle tile, always wrap with animations (for both show and hide)
                                      if (isMiddle) {
                                        // Add padding to the tile first
                                        tile = Padding(padding: const EdgeInsets.only(top: 10), child: tile);

                                        // Always wrap with animations - they will handle both forward and reverse
                                        tile = AnimatedBuilder(
                                          animation: _monthlyAnimationController,
                                          builder: (context, child) => SizeTransition(
                                            sizeFactor: _monthlyHeightAnimation,
                                            child: FadeTransition(opacity: _monthlyOpacityAnimation, child: child!),
                                          ),
                                          child: tile,
                                        );

                                        // Return early for middle tile - skip the outer AnimatedContainer
                                        return tile;
                                      }

                                      // Always wrap with the container animations
                                      return AnimatedContainer(
                                        duration: const Duration(milliseconds: 400),
                                        curve: Curves.easeInOutCubic,
                                        height: shouldShow ? null : 0,
                                        transform: Matrix4.translationValues(
                                          0,
                                          verticalOffset * 50, // 50 pixels movement
                                          0,
                                        ),
                                        child: AnimatedOpacity(
                                          duration: const Duration(milliseconds: 300),
                                          opacity: shouldShow ? 1.0 : 0.0,
                                          child: AnimatedScale(
                                            duration: const Duration(milliseconds: 400),
                                            scale: shouldShow ? 1.0 : 0.8,
                                            curve: Curves.easeInOut,
                                            child: tile,
                                          ),
                                        ),
                                      );
                                    }),
                                  ],
                                ),
                              ),
                            ),

                            const SizedBox(height: 14),

                            // Continue button with animation
                            AnimatedBuilder(
                              animation: _buttonAnimationController,
                              builder: (context, child) => SizedBox(
                                width: double.infinity,
                                height: 56,
                                child: Material(
                                  color: _buttonBackgroundAnimation.value,
                                  borderRadius: BorderRadius.circular(32),
                                  child: InkWell(
                                    borderRadius: BorderRadius.circular(32),
                                    onTap: (selectedProductIndex != null)
                                        ? () async {
                                            // Get the correct product based on free trial selection
                                            final productPair = _productPairs[selectedProductIndex!];
                                            final productToUse = freeTrialEnabled ? productPair[1] : productPair[0];
                                            await widget.paywall.purchase(productToUse, context);
                                          }
                                        : null,
                                    child: Center(
                                      child: FittedText(
                                        freeTrialEnabled ? context.localizations.startFreeTrial : context.localizations.continueBtn,
                                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: _buttonForegroundAnimation.value),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            const SizedBox(height: 16),

                            // Only show "Other plans" button if there are 3 product pairs
                            if (_productPairs.length > 2)
                              TextButton(
                                onPressed: () {
                                  setState(() {
                                    showOtherPlans = !showOtherPlans;
                                    if (showOtherPlans) {
                                      _monthlyAnimationController.forward();
                                    } else {
                                      _monthlyAnimationController.reverse();
                                    }
                                  });
                                },
                                child: FittedText(
                                  context.localizations.otherPlans,
                                  style: const TextStyle(
                                    decoration: TextDecoration.underline,
                                    decorationThickness: 1,
                                    decorationColor: Colors.white70,
                                    color: Colors.white70,
                                    fontSize: 14,
                                  ),
                                ),
                              ),

                            const SizedBox(height: 8),
                          ],
                        ),
                      ),
                    ),
                  ),
                  // Footer placed below the main content (outside screen height)
                  PaywallFullFooter(paywallConfig: widget.paywall, isFreeTrial: freeTrialEnabled),
                ],
              ),
            ),
            // Close button
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
                      onTap: () => widget.paywall.close(context),
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
        );
      },
    ),
  );
}
