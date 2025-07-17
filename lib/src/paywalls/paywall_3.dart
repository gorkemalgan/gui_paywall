// Dart imports:
import 'dart:math';

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_svg/svg.dart';

// Project imports:
import '../../gui_paywall.dart';
import '../extensions.dart';
import '../widgets/fitted_text.dart';

// Local imports:

class AnimatedSlide extends StatelessWidget {
  final Duration duration;
  final Curve curve;
  final Offset offset;
  final Widget child;

  const AnimatedSlide({super.key, required this.duration, required this.curve, required this.offset, required this.child});

  @override
  Widget build(BuildContext context) => AnimatedContainer(
    duration: duration,
    curve: curve,
    transform: Matrix4.translationValues(
      offset.dx * MediaQuery.of(context).size.width,
      offset.dy * 78, // Height of tile + padding
      0,
    ),
    child: child,
  );
}

class _FigmaConstants {
  // Video section
  static const double videoBottomRadius = 23.0;
  static const double videoShadowBlurRadius = 26.8;
  static const Offset videoShadowOffset = Offset(0, 14);
  static const double videoShadowOpacity = 0.15;
  static const double videoHeightRatio = 0.36;

  // Radio button
  static const double radioButtonSize = 24.0;
  static const double radioButtonBorderWidth = 2.0;
  static const double radioButtonInnerMargin = 2.0;

  // Product label
  static const double productLabelHorizontalPadding = 10.9;
  static const double productLabelVerticalPadding = 4.7;
  static const double productLabelBorderRadius = 162.6;

  // Price info
  static const double priceSmallFontSize = 10.0;

  // Discount badge
  static const double discountBadgeTop = -12.0;
  static const double discountBadgeRight = 20.0; // Reduced to prevent cutoff
  static const double discountBadgeVerticalPadding = 5.0;
  static const double discountBadgeHorizontalPadding = 9.5;
  static const double discountBadgeBorderRadius = 32.0;

  // Tile container
  static const double tileBottomPadding = 8.0;
  static const double tileHorizontalPadding = 16.0;
  static const double tileBorderRadius = 42.0;
  static const double tileBorderWidth = 2.0;
  static const double tileShadowBlurRadius = 20.0;
  static const Offset tileShadowOffset = Offset(0, 7);
  static const double tileShadowOpacity = 0.4;
  static const double tileSpacing = 7.78;
  static const double tileHeight = 70.0;
  static const double tileHeightExpanded = 85.0; // Bigger height for single display mode

  // See more button
  static const double seeMoreButtonBottomPadding = 38.0;
  static const double seeMoreButtonFontSize = 16.0;
  static const double seeMoreButtonTopSpacing = 16.0;

  // Purchase button
  static const double purchaseButtonTopPadding = 11.0;
  static const double purchaseButtonVerticalPadding = 10.0;
  static const double purchaseButtonHorizontalPadding = 52.0;
  static const double purchaseButtonBorderRadius = 6.0;

  // Content padding
  static const double contentHorizontalPadding = 15.0;

  // Title section
  static const double titleFontSize = 32.0;
  static const double titleSpacing = 7.0;
  static const double titleIconWidth = 37.0;
  static const double titleIconHeight = 25.0;
  static const double subtitleFontSize = 16.0;
  static const double subtitleTopSpacing = 7.0;

  // Colors
  static const Color selectedColor = Color(0xFFEAC544);
  static const Color unselectedColor = Color(0xFF9FACD4);

  // Opacity values
  static const double selectedOpacity = 1.0;
  static const double unselectedOpacity = 0.5;
}

/// A premium paywall template with video showcase and sliding tile animations.
///
/// This paywall displays a video at the top and subscription options below.
/// Initially shows only the longest duration product (typically yearly) with
/// a "See other options" button that reveals additional products with a smooth
/// sliding animation.
///
/// **Requirements:**
/// - Accepts 2 or 3 products in the PaywallConfig
/// - Products should have different durations (e.g., yearly, monthly, weekly)
/// - The longest duration product is shown by default
///
/// **Features:**
/// - Video showcase at the top with rounded bottom corners
/// - Animated product tiles with selection state
/// - Discount badges showing savings compared to shortest duration:
///   - For 2 products: badge on the longest duration only
///   - For 3 products: badges on both longest and middle duration
/// - Smooth slide-in animation for additional products
/// - Responsive layout that centers content vertically
///
/// **Usage:**
/// ```dart
/// Paywall3(
///   paywallConfig,
///   video: VideoPlayerWidget(),
/// )
/// ```
class Paywall3 extends PaywallBase {
  final Widget video;
  const Paywall3(super.paywall, {super.key, required this.video});

  @override
  PaywallConfig validateConfiguration() {
    PaywallConfig _paywall = paywall.noFreeTrial.preferExpensive;
    // Check product count (2-3 products expected)
    final productCount = _paywall.products.length;
    if (productCount < 2 || productCount > 3) {
      _paywall.onError('Paywall3 expects 2 to 3 products, but got $productCount');
    }

    // Check that no products have free trials
    final productsWithTrials = _paywall.products.where((p) => p.haveFreeTrial).toList();
    if (productsWithTrials.isNotEmpty) {
      _paywall.onError('Paywall3 expects products without free trials, but found ${productsWithTrials.length} products with trials');
    }

    // Check for different durations
    final uniquePeriods = _paywall.products.map((p) => p.period).toSet();
    if (uniquePeriods.length != _paywall.products.length) {
      _paywall.onError('Products should have different durations for optimal display');
    }

    // Check for required custom data
    if (_paywall.customData == null || !_paywall.customData!.containsKey('video_path')) {
      _paywall.onError('No video_path specified in customData, using default');
    }

    return _paywall;
  }

  @override
  Paywall3State createState() => Paywall3State();
}

class Paywall3State extends State<Paywall3> with PaywallSanityCheck<Paywall3> {
  // Sort products from longest duration to the shortest one
  late final List<PaywallProduct> _products = widget.paywall.productsSorted.reversed.toList();
  // Default to the longest duration product (first in our sorted list)
  late PaywallProduct selectedProduct = _products.isNotEmpty
      ? _products[0]
      : _products[widget.paywall.singleDisplayProduct.clamp(0, _products.length - 1)];
  late bool isSingleDisplayTile = widget.paywall.isSingleDisplay;
  late bool isSingleOffer = _products.length == 1;
  final PageController _pageController = PageController();
  bool _showAllTiles = false;
  bool _isTrialSelected = false;
  bool _isAnimating = false;

  // Helper to check if any product is actually selected (not trial)
  bool get isProductSelected => !_isTrialSelected;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Widget video(double height) {
      Widget cancelButton() => Align(
        alignment: Alignment.topLeft,
        child: Padding(
          padding: const EdgeInsets.only(left: 7.0, top: 8.0),
          child: Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(color: Colors.transparent, borderRadius: BorderRadius.circular(18)),
            child: GestureDetector(
              onTap: () => widget.paywall.close(context),
              child: Icon(Icons.close, color: context.colorScheme.tertiaryFixed, size: 20),
            ),
          ),
        ),
      );
      Widget topVideo() => ClipRRect(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(_FigmaConstants.videoBottomRadius),
          bottomRight: Radius.circular(_FigmaConstants.videoBottomRadius),
        ),
        child: Container(
          height: height,
          width: double.infinity,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: _FigmaConstants.videoShadowOpacity),
                blurRadius: _FigmaConstants.videoShadowBlurRadius,
                offset: _FigmaConstants.videoShadowOffset,
              ),
            ],
          ),
          child: widget.video,
        ),
      );

      return SafeArea(
        child: SizedBox(
          height: height,
          width: MediaQuery.of(context).size.width,
          child: Stack(children: [topVideo(), cancelButton()]),
        ),
      );
    }

    Widget tiles() => LayoutBuilder(
      builder: (context, constraints) {
        // Calculate available height for tiles
        double availableHeight = constraints.maxHeight;

        // Calculate tile heights based on display mode and number of products
        double calculateTileHeight() {
          if (!_showAllTiles && _products.length > 1) {
            // Single display mode - only one tile visible
            return min(_FigmaConstants.tileHeightExpanded, availableHeight * 0.3);
          } else {
            // All tiles visible - distribute space evenly
            int visibleTileCount = _products.length;
            double totalSpacing =
                (_FigmaConstants.tileBottomPadding * visibleTileCount) +
                _FigmaConstants.seeMoreButtonTopSpacing +
                40; // Extra spacing for see more button
            double availableForTiles = availableHeight - totalSpacing;
            double calculatedHeight = availableForTiles / visibleTileCount;
            return min(_FigmaConstants.tileHeight, max(60, calculatedHeight));
          }
        }

        double tileHeight = calculateTileHeight();

        Widget createTile(PaywallProduct? product, PaywallProduct shortestPackage, {bool isTrialTile = false, int? productIndex}) {
          // Trial tile data if isTrialTile is true
          bool isTrial = isTrialTile;
          bool isSelected = isTrial ? _isTrialSelected : (isProductSelected && product == selectedProduct);
          double opacity = isSelected ? _FigmaConstants.selectedOpacity : _FigmaConstants.unselectedOpacity;

          Widget radioButton() => Container(
            width: _FigmaConstants.radioButtonSize,
            height: _FigmaConstants.radioButtonSize,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: isSelected ? _FigmaConstants.selectedColor : _FigmaConstants.unselectedColor,
                width: _FigmaConstants.radioButtonBorderWidth,
              ),
            ),
            child: isSelected
                ? Container(
                    margin: const EdgeInsets.all(_FigmaConstants.radioButtonInnerMargin),
                    decoration: const BoxDecoration(shape: BoxShape.circle, color: _FigmaConstants.selectedColor),
                  )
                : null,
          );

          Widget productLabel() => Container(
            padding: const EdgeInsets.symmetric(
              horizontal: _FigmaConstants.productLabelHorizontalPadding,
              vertical: _FigmaConstants.productLabelVerticalPadding,
            ),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(_FigmaConstants.productLabelBorderRadius)),
            child: FittedText(
              isTrial ? context.localizations.trialDays(3) : product!.period.localizedName(context),
              style: context.textTheme.bodyLarge?.copyWith(color: isSelected ? context.colorScheme.onPrimary : context.colorScheme.secondary),
              textAlign: TextAlign.center,
            ),
          );

          Widget priceInfo() {
            // Get the period unit and days for the shortest package
            String perPeriodSuffix = '';
            double perPeriodPrice = 0.0;

            if (!isTrial && product != null && product.period != ProductPeriod.lifetime) {
              // Calculate price per shortest package period using the durationDays property
              perPeriodPrice = product.priceForDays(shortestPackage.period.durationDays);
              // Use the periodInvoiceStr from the enum, fallback to perWeek if null
              perPeriodSuffix = shortestPackage.period.periodInvoiceStr ?? context.localizations.perWeek;
            }

            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                // Package price on top
                FittedText(
                  isTrial ? context.localizations.free : product!.priceString ?? '${product.price.toStringAsFixed(2)} ${product.currency}',
                  style: context.textTheme.bodyMedium?.copyWith(
                    color: isSelected ? context.colorScheme.onPrimary : context.colorScheme.secondary,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.end,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                // Per period price on bottom
                if (!isTrial && product!.period != ProductPeriod.lifetime)
                  FittedText(
                    '${perPeriodPrice.toStringAsFixed(2)} ${product.currency} $perPeriodSuffix',
                    style: context.textTheme.bodySmall?.copyWith(
                      color: context.colorScheme.onPrimaryContainer,
                      fontSize: _FigmaConstants.priceSmallFontSize,
                      fontWeight: FontWeight.w300,
                    ),
                    textAlign: TextAlign.end,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
              ],
            );
          }

          Widget discountBadge() {
            if (isTrial || product == null || product == shortestPackage) {
              return const SizedBox.shrink();
            }

            int discountPercentage = (product.saveRatio(shortestPackage) * 100).round();
            if (discountPercentage <= 0) {
              return const SizedBox.shrink();
            }

            // Logic for showing discount badges:
            // - When showing single tile: only show badge on the longest (first) product
            // - When showing all tiles: show badges on all products except the shortest
            bool shouldShowBadge = _showAllTiles || productIndex == 0;

            if (!shouldShowBadge) {
              return const SizedBox.shrink();
            }

            return Positioned(
              top: _FigmaConstants.discountBadgeTop,
              right: _FigmaConstants.discountBadgeRight,
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: _FigmaConstants.discountBadgeVerticalPadding,
                  horizontal: _FigmaConstants.discountBadgeHorizontalPadding,
                ),
                decoration: BoxDecoration(
                  color: _FigmaConstants.selectedColor,
                  borderRadius: BorderRadius.circular(_FigmaConstants.discountBadgeBorderRadius),
                ),
                child: Center(
                  child: FittedText(
                    context.localizations.percentOff(discountPercentage),
                    style: context.textTheme.labelSmall?.copyWith(color: context.colorScheme.surface),
                  ),
                ),
              ),
            );
          }

          return Padding(
            padding: const EdgeInsets.only(bottom: _FigmaConstants.tileBottomPadding),
            child: Opacity(
              opacity: opacity,
              child: InkWell(
                onTap: () {
                  setState(() {
                    if (isTrial) {
                      _isTrialSelected = true;
                      // Deselect any product when trial is selected
                    } else {
                      _isTrialSelected = false;
                      selectedProduct = product!;
                    }
                  });
                  widget.paywall.logSelectProduct(selectedProduct.storeId);
                },
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 400),
                      curve: Curves.easeOutCubic,
                      height: tileHeight,
                      padding: const EdgeInsets.symmetric(horizontal: _FigmaConstants.tileHorizontalPadding),
                      decoration: BoxDecoration(
                        color: context.colorScheme.surface,
                        borderRadius: BorderRadius.circular(_FigmaConstants.tileBorderRadius),
                        border: Border.all(
                          color: isSelected ? _FigmaConstants.selectedColor : Colors.transparent,
                          width: _FigmaConstants.tileBorderWidth,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: _FigmaConstants.tileShadowOpacity),
                            blurRadius: _FigmaConstants.tileShadowBlurRadius,
                            offset: _FigmaConstants.tileShadowOffset,
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 2,
                            child: Row(
                              children: [
                                radioButton(),
                                const SizedBox(width: _FigmaConstants.tileSpacing),
                                Flexible(child: productLabel()),
                              ],
                            ),
                          ),
                          Expanded(flex: 3, child: priceInfo()),
                        ],
                      ),
                    ),
                    discountBadge(),
                  ],
                ),
              ),
            ),
          );
        }

        PaywallProduct shortestProduct = widget.paywall.shortestProduct;
        final allTiles = _products.asMap().entries.map((entry) => createTile(entry.value, shortestProduct, productIndex: entry.key)).toList();

        Widget buildSeeMoreButton() => GestureDetector(
          onTap: () async {
            if (_isAnimating) return;

            setState(() {
              _isAnimating = true;
              _showAllTiles = true;
              // If trial was selected, switch to the longest duration product when showing all options
              if (_isTrialSelected) {
                _isTrialSelected = false;
                selectedProduct = _products.isNotEmpty ? _products[0] : _products.first;
              }
            });

            // Wait for animations to complete
            await Future.delayed(const Duration(milliseconds: 500));
            if (mounted) {
              setState(() {
                _isAnimating = false;
              });
            }

            widget.paywall.logViewItemList();
          },
          child: Container(
            padding: const EdgeInsets.only(bottom: _FigmaConstants.seeMoreButtonBottomPadding),
            child: Center(
              child: FittedText(
                context.localizations.seeOtherOptions,
                style: context.textTheme.bodyLarge?.copyWith(
                  color: context.colorScheme.onPrimaryContainer,
                  fontSize: _FigmaConstants.seeMoreButtonFontSize,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        );

        // Find the longest duration product (first in our sorted list)
        // Since _products is already sorted from longest to shortest, index 0 is the longest
        int longestProductIndex = 0;

        return SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(top: 12.0), // Add top padding to prevent badge cutoff
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Show only the longest duration tile initially
                if (allTiles.isNotEmpty) allTiles[longestProductIndex],
                // Hidden tiles with smooth expand animation
                ClipRect(
                  child: AnimatedAlign(
                    duration: const Duration(milliseconds: 400),
                    curve: Curves.easeOutCubic,
                    alignment: Alignment.topCenter,
                    heightFactor: _showAllTiles ? 1.0 : 0.0,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 12.0), // Extra padding for badge overflow
                      child: Column(
                        children: [
                          ...List.generate(allTiles.length, (index) {
                            if (index == longestProductIndex) return const SizedBox.shrink(); // Skip longest product as it's already shown
                            return AnimatedOpacity(
                              duration: const Duration(milliseconds: 300),
                              opacity: _showAllTiles ? 1.0 : 0.0,
                              child: AnimatedSlide(
                                duration: const Duration(milliseconds: 400),
                                curve: Curves.easeOutCubic,
                                offset: Offset(0, _showAllTiles ? 0.0 : 0.3),
                                child: allTiles[index],
                              ),
                            );
                          }),
                        ],
                      ),
                    ),
                  ),
                ),
                AnimatedCrossFade(
                  duration: const Duration(milliseconds: 300),
                  crossFadeState: _showAllTiles ? CrossFadeState.showFirst : CrossFadeState.showSecond,
                  firstChild: const SizedBox.shrink(),
                  secondChild: _products.length > 1
                      ? Column(
                          children: [
                            const SizedBox(height: _FigmaConstants.seeMoreButtonTopSpacing),
                            buildSeeMoreButton(),
                          ],
                        )
                      : const SizedBox.shrink(),
                ),
              ],
            ),
          ),
        );
      },
    );

    Widget chargingInfoText() {
      bool isLifeTime = selectedProduct.period == ProductPeriod.lifetime;
      return Padding(
        padding: const EdgeInsets.only(top: _FigmaConstants.purchaseButtonTopPadding),
        child: FittedText(
          selectedProduct.haveFreeTrial
              ? context.localizations.chargingInfoFreeTrial(
                  selectedProduct.price.toStringAsFixed(2),
                  selectedProduct.freeTrialDays.toString(),
                  selectedProduct.period.periodInvoiceStr ?? '',
                )
              : isLifeTime
              ? context.localizations.chargingInfoLifeTime(selectedProduct.priceString ?? selectedProduct.price.toStringAsFixed(2))
              : context.localizations.chargingInfoStandart(
                  selectedProduct.priceString ?? selectedProduct.price.toStringAsFixed(2),
                  selectedProduct.period.periodInvoiceStr ?? '',
                ),
          style: context.textTheme.bodySmall?.copyWith(
            color: context.colorScheme.onPrimaryContainer,
            fontSize: _FigmaConstants.priceSmallFontSize,
            fontWeight: FontWeight.w300,
          ),
          textAlign: TextAlign.center,
          maxLines: 2,
        ),
      );
    }

    Widget buttonSubscribe() => GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () async => widget.paywall.purchase(selectedProduct, context),
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: _FigmaConstants.purchaseButtonVerticalPadding,
          horizontal: _FigmaConstants.purchaseButtonHorizontalPadding,
        ),
        decoration: BoxDecoration(
          color: _FigmaConstants.selectedColor,
          borderRadius: BorderRadius.circular(_FigmaConstants.purchaseButtonBorderRadius),
        ),
        child: FittedText(
          context.localizations.upgradeNow,
          style: context.textTheme.titleMedium?.copyWith(color: context.colorScheme.surface, fontWeight: FontWeight.w500),
        ),
      ),
    );

    return Material(
      color: Colors.transparent,
      child: LayoutBuilder(
        builder: (context, constraint) {
          double height = constraint.maxHeight;
          double heightVideo = min(height * _FigmaConstants.videoHeightRatio, MediaQuery.of(context).size.width);
          return Container(
            color: const Color(0xFF000821),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  // Main content container with screen height
                  SizedBox(
                    height: height,
                    child: Column(
                      children: [
                        video(heightVideo),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: _FigmaConstants.contentHorizontalPadding),
                            child: Column(
                              children: [
                                // Header section with flexible spacing
                                Container(
                                  width: double.infinity,
                                  padding: const EdgeInsets.only(top: 20.0, bottom: 16.0),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          FittedText(
                                            context.localizations.appPro(widget.paywall.customData?['appName'] ?? 'Pixvibe'),
                                            style: TextStyle(
                                              fontFamily: 'Lexend',
                                              fontWeight: FontWeight.w600,
                                              fontSize: _FigmaConstants.titleFontSize,
                                              color: Colors.white,
                                            ),
                                          ),
                                          const SizedBox(width: _FigmaConstants.titleSpacing),
                                          SvgPicture.asset(
                                            'packages/dart_gen/assets/icons/crownShine.svg',
                                            width: _FigmaConstants.titleIconWidth,
                                            height: _FigmaConstants.titleIconHeight,
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: _FigmaConstants.subtitleTopSpacing),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                                        child: FittedText(
                                          context.localizations.getUnlimitedAccess,
                                          style: TextStyle(
                                            fontFamily: 'Lexend',
                                            fontWeight: FontWeight.w400,
                                            fontSize: _FigmaConstants.subtitleFontSize,
                                            color: Colors.white,
                                          ),
                                          textAlign: TextAlign.center,
                                          maxLines: 2,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                // Subscription tiles with expanded space
                                Expanded(child: Center(child: tiles())),
                                // Purchase button and info with fixed spacing
                                Padding(
                                  padding: const EdgeInsets.only(top: 1.0, bottom: 20.0),
                                  child: Column(children: [buttonSubscribe(), chargingInfoText()]),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Footer placed below the main content (outside screen height)
                  PaywallFullFooter(paywallConfig: widget.paywall, isFreeTrial: selectedProduct.haveFreeTrial),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
