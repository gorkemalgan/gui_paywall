// Dart imports:
import 'dart:math';
import 'dart:ui' as ui;

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_svg/svg.dart';

// Project imports:
import '../gui_paywall.dart';
import 'context_extensions.dart';

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
      offset.dy * 100, // Using fixed height for slide
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
  static const double videoHeightRatio = 0.46;

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
  static const double discountBadgeRight = 40.0;
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

  // See more button
  static const double seeMoreButtonBottomPadding = 38.0;
  static const double seeMoreButtonFontSize = 16.0;
  static const double seeMoreButtonTopSpacing = 16.0;

  // Purchase button
  static const double purchaseButtonTopPadding = 11.0;
  static const double purchaseButtonVerticalPadding = 10.0;
  static const double purchaseButtonHorizontalPadding = 52.0;
  static const double purchaseButtonBorderRadius = 6.0;

  // Blur effect
  static const double blurRadiusRatio = 497 / 393;
  static const double blurTopRatio = 258 / 393;
  static const double blurSigma = 250.0;
  static const double blurBackgroundOpacity = 0.2;

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
  static const Color blurBackgroundColor = Color(0xFF3B6BFF);

  // Opacity values
  static const double selectedOpacity = 1.0;
  static const double unselectedOpacity = 0.5;
}

class Paywall3 extends StatefulWidget {
  final PaywallConfig paywall;
  final Widget video;
  const Paywall3(this.paywall, {super.key, required this.video});
  @override
  Paywall3State createState() => Paywall3State();
}

class Paywall3State extends State<Paywall3> {
  // Sort products from longest duration to the shortest one
  late final List<PaywallProduct> _products = widget.paywall.productsSorted.reversed.toList();
  // keep same selected product index - default to yearly
  late PaywallProduct selectedProduct = _products.firstWhere(
    (product) => product.period == ProductPeriod.yearly,
    orElse: () => _products[widget.paywall.singleDisplayProduct.clamp(0, _products.length - 1)],
  );
  late bool isSingleDisplayTile = widget.paywall.isSingleDisplay;
  late bool isSingleOffer = _products.length == 1;
  final PageController _pageController = PageController();
  bool _showAllTiles = false;
  bool _isTrialSelected = false;

  // Helper to check if any product is actually selected (not trial)
  bool get isProductSelected => !_isTrialSelected;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  String _getLocalizedPeriodName(ProductPeriod period) {
    switch (period) {
      case ProductPeriod.weekly:
        return context.localizations.weekly;
      case ProductPeriod.monthly:
        return context.localizations.monthly;
      case ProductPeriod.yearly:
        return context.localizations.yearly;
      case ProductPeriod.lifetime:
        return context.localizations.lifetime;
    }
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

    Widget tiles() {
      Widget createTile(PaywallProduct? product, PaywallProduct shortestPackage, {bool isTrialTile = false}) {
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
          child: Text(
            isTrial ? context.localizations.trialDays(3) : _getLocalizedPeriodName(product!.period),
            style: context.textTheme.bodyLarge?.copyWith(color: isSelected ? context.colorScheme.onPrimary : context.colorScheme.secondary),
            textAlign: TextAlign.center,
          ),
        );

        Widget priceInfo() => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              isTrial
                  ? context.localizations.free
                  : product!.period == ProductPeriod.lifetime
                  ? (product.priceString ?? '${product.price.toStringAsFixed(2)} ${product.currency}')
                  : '${product.priceForDays(7).toStringAsFixed(2)} ${product.currency}${context.localizations.perWeek}',
              style: context.textTheme.bodyMedium?.copyWith(
                color: isSelected ? context.colorScheme.onPrimary : context.colorScheme.secondary,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.end,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            if (!isTrial && product!.period != ProductPeriod.lifetime)
              Text(
                product.priceString ?? '${product.price.toStringAsFixed(2)} ${product.currency}',
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

        Widget discountBadge() {
          if (isTrial || product == null || product == shortestPackage) {
            return const SizedBox.shrink();
          }

          int discountPercentage = (product.saveRatio(shortestPackage) * 100).round();
          if (discountPercentage <= 0) {
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
                child: Text(
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
                widget.paywall.onAnalyticsEvent?.call(
                  "paywall_select_product",
                  parameters: {"product_id": isTrial ? "trial_${product!.storeId}" : selectedProduct.storeId},
                );
              },
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: _FigmaConstants.tileHeight,
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
      final allTiles = _products.map((e) => createTile(e, shortestProduct)).toList();

      Widget buildSeeMoreButton() => GestureDetector(
        onTap: () {
          setState(() {
            _showAllTiles = true;
            // If trial was selected, switch to yearly when showing all options
            if (_isTrialSelected) {
              _isTrialSelected = false;
              selectedProduct = _products.firstWhere((product) => product.period == ProductPeriod.yearly, orElse: () => _products.first);
            }
          });
          widget.paywall.onAnalyticsEvent?.call("paywall_see_more_tapped");
        },
        child: Container(
          padding: const EdgeInsets.only(bottom: _FigmaConstants.seeMoreButtonBottomPadding),
          child: Center(
            child: Text(
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

      return Column(
        children: [
          ...List.generate(allTiles.length, (index) {
            final bool isVisible = _showAllTiles || index < 2;
            return AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeOut,
              height: isVisible ? _FigmaConstants.tileHeight + _FigmaConstants.tileBottomPadding : 0.0,
              child: ClipRRect(
                child: AnimatedSlide(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeOutCubic,
                  offset: isVisible ? Offset.zero : const Offset(0, -1),
                  child: AnimatedOpacity(duration: const Duration(milliseconds: 300), opacity: isVisible ? 1.0 : 0.0, child: allTiles[index]),
                ),
              ),
            );
          }),
          if (!_showAllTiles && _products.length >= 3) ...[const SizedBox(height: _FigmaConstants.seeMoreButtonTopSpacing), buildSeeMoreButton()],
        ],
      );
    }

    Widget chargingInfoText() {
      bool isLifeTime = selectedProduct.period == ProductPeriod.lifetime;
      return Padding(
        padding: const EdgeInsets.only(top: _FigmaConstants.purchaseButtonTopPadding),
        child: Text(
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
        child: Text(
          context.localizations.upgradeNow,
          style: context.textTheme.titleMedium?.copyWith(color: context.colorScheme.surface, fontWeight: FontWeight.w500),
        ),
      ),
    );

    return Material(
      color: Colors.transparent,
      child: Container(
        color: const Color(0xFF000821),
        child: LayoutBuilder(
          builder: (context, constraint) {
            double height = constraint.maxHeight;
            double heightVideo = min(height * _FigmaConstants.videoHeightRatio, MediaQuery.of(context).size.width);
            double blurRadius = _FigmaConstants.blurRadiusRatio * heightVideo;
            double blurTop = _FigmaConstants.blurTopRatio * heightVideo;
            double blurLeft = (MediaQuery.of(context).size.width - blurRadius) / 2;
            return Stack(
              children: [
                // Background blur effect
                Positioned(
                  top: blurTop,
                  left: blurLeft,
                  child: Container(
                    width: blurRadius,
                    height: blurRadius,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _FigmaConstants.blurBackgroundColor.withValues(alpha: _FigmaConstants.blurBackgroundOpacity),
                    ),
                    child: BackdropFilter(
                      filter: ui.ImageFilter.blur(sigmaX: _FigmaConstants.blurSigma, sigmaY: _FigmaConstants.blurSigma),
                      child: Container(),
                    ),
                  ),
                ),
                SingleChildScrollView(
                  child: SizedBox(
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
                                          Text(
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
                                        child: Text(
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
                                Expanded(
                                  child: SingleChildScrollView(physics: const BouncingScrollPhysics(), child: tiles()),
                                ),
                                // Purchase button and info with fixed spacing
                                Padding(
                                  padding: const EdgeInsets.only(top: 16.0, bottom: 24.0),
                                  child: Column(children: [buttonSubscribe(), chargingInfoText()]),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
