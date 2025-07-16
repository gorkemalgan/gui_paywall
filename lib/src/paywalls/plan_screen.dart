// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../context_extensions.dart';
import '../models/paywall_product.dart';

class _FigmaConstants {
  static const double planCardBorderRadius = 14.0;
  static const double planCardMinHeight = 85.0;
  static const double planCardPaddingRatio = 0.04;
  static const double planCardMarginBottomRatio = 0.015;
  static const double notSureCircleOuterRatio = 0.064;
  static const double notSureCircleInnerRatio = 0.038;
  static const double notSureCircleMarginLeftRatio = 0.025;
  static const double bestValueBadgeTop = -24.0;
  static const double bestValueBadgeFontSize = 10.0;
  static const double planTitleFontSize = 16.0;
  static const double planDescFontSize = 13.0;
  static const double planPriceFontSize = 12.0;
  static const double planCardWidthRatio = 0.95;
  static const double planCardHeightRatio = 0.06;
  static const double planCardTrialWidthRatio = 0.28;
  static const double planCardTrialHeightRatio = 0.03;
  static const double planCardTrialPaddingH = 8.0;
  static const double planCardTrialPaddingV = 2.0;
  static const double planCardTitleWidth = 80.0;
  static const double planCardYearlyTitleWidth = 100.0;
  static const double planCardTitleSpacer = 8.0;
  static const double planCardYearlySpacer = 2.0;
  static const double continueButtonHeight = 90.0;
  static const double continueButtonRadius = 32.0;
  static const double restoreFontSize = 14.0;
  static const double choosePlanFontSize = 26.0;
  static const double unlockFontSize = 14.0;
  static const double otherPlansFontSize = 14.0;
  static const double otherPlansSizedBox = 5.0;
  static const double sizedBox10 = 10.0;
  static const double sizedBox8 = 8.0;
  static const double sizedBox24 = 24.0;
}

class PlanScreen extends StatefulWidget {
  final Widget image;
  const PlanScreen({super.key, required this.image});

  @override
  State<PlanScreen> createState() => _PlanScreenState();
}

class _PlanScreenState extends State<PlanScreen> {
  late final List<PaywallProduct> _products = [
    PaywallProduct(
      storeId: 'not_sure',
      price: 0,
      currency: 'USD',
      priceString: '',
      period: ProductPeriod.weekly,
      title: context.localizations.notSureYet,
      description: '',
    ),
    PaywallProduct(
      storeId: 'weekly_sub',
      price: 4.99,
      currency: 'USD',
      priceString: '\$4.99',
      period: ProductPeriod.weekly,
      title: context.localizations.weekly,
      description: 'Get premium access for 1 week',
    ),
    PaywallProduct(
      storeId: 'yearly_sub',
      price: 49.99,
      currency: 'USD',
      priceString: '\$49.99',
      period: ProductPeriod.yearly,
      title: context.localizations.yearly,
      description: 'Best value - Save 58%!',
      freeTrialDays: 7,
    ),
  ];

  int? selectedIndex;
  bool _notSureActivated = false;
  bool _notSureCircleFilled = false;

  @override
  Widget build(BuildContext context) {
    final planTitles = [context.localizations.notSureYet, context.localizations.weekly, context.localizations.yearly];
    final weeklyIndex = _products.indexWhere((p) => p.title == context.localizations.weekly);
    final yearlyIndex = _products.indexWhere((p) => p.title == context.localizations.yearly);

    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          // Arka plan
          Positioned.fill(
            child: Builder(
              builder: (context) {
                if (widget.image is Image) {
                  final img = widget.image as Image;
                  return Image(image: img.image, fit: BoxFit.cover, width: double.infinity, height: double.infinity);
                } else {
                  return Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: (widget.image is ImageProvider)
                            ? widget.image as ImageProvider
                            : const AssetImage('assets/your_image.png'), // fallback
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                }
              },
            ),
          ),
          // Gradient overlay
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.transparent, Colors.black87, Colors.black],
                  stops: [0.5, 0.8, 1.0],
                ),
              ),
            ),
          ),

          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  // Restore purchases
                  Center(
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        context.localizations.restorePurchases,
                        style: const TextStyle(
                          fontSize: _FigmaConstants.restoreFontSize,
                          fontWeight: FontWeight.bold,
                          color: Colors.white70,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.white30,
                        ),
                      ),
                    ),
                  ),

                  const Spacer(),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      context.localizations.chooseYourPlan,
                      style: const TextStyle(fontSize: _FigmaConstants.choosePlanFontSize, color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(height: _FigmaConstants.sizedBox8),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      context.localizations.unlockFullPower,
                      style: const TextStyle(fontSize: _FigmaConstants.unlockFontSize, color: Colors.white),
                    ),
                  ),
                  const SizedBox(height: _FigmaConstants.sizedBox24),

                  // Plan kartları
                  ..._products.asMap().entries.map((entry) {
                    final index = entry.key;
                    final item = entry.value;
                    final displayTitle = planTitles.length > index ? planTitles[index] : (item.title ?? '');

                    final isNotSure = item.title == context.localizations.notSureYet;
                    final isWeekly = item.title == context.localizations.weekly;
                    final isYearly = item.title == context.localizations.yearly;

                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          debugPrint('Tıklanan kart: $displayTitle, index: $index');
                          if (isNotSure) {
                            _notSureCircleFilled = !_notSureCircleFilled;
                            _notSureActivated = _notSureCircleFilled;
                            selectedIndex = _notSureCircleFilled ? index : null;
                          } else {
                            selectedIndex = selectedIndex == index ? null : index;
                          }
                          debugPrint(
                            '_notSureActivated: 4{_notSureActivated}, _notSureCircleFilled: 4{_notSureCircleFilled}, selectedIndex: 4{selectedIndex}, index: 4{index}, price: 4{item.price}',
                          );
                        });
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * _FigmaConstants.planCardWidthRatio,
                        height: screenHeight * _FigmaConstants.planCardHeightRatio,
                        margin: EdgeInsets.only(bottom: screenHeight * _FigmaConstants.planCardMarginBottomRatio),
                        padding: EdgeInsets.all(screenWidth * _FigmaConstants.planCardPaddingRatio),
                        constraints: const BoxConstraints(minHeight: _FigmaConstants.planCardMinHeight),
                        decoration: BoxDecoration(
                          border: Border.all(color: selectedIndex == index ? Colors.white : Colors.white30),
                          borderRadius: BorderRadius.circular(_FigmaConstants.planCardBorderRadius),
                          color: isNotSure ? Color(0xFFF5F5F5).withOpacity(0.7) : Colors.black,
                        ),
                        child: Center(
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              if (isWeekly)
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: _FigmaConstants.planCardTitleWidth,
                                      child: Text(
                                        displayTitle,
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: _FigmaConstants.planTitleFontSize,
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    SizedBox(width: _FigmaConstants.planCardTitleSpacer),
                                    // WEEKLY: 1 week free trial sadece _notSureCircleFilled true ise göster
                                    _notSureCircleFilled
                                        ? Container(
                                            width: screenWidth * _FigmaConstants.planCardTrialWidthRatio,
                                            height: screenHeight * _FigmaConstants.planCardTrialHeightRatio,
                                            alignment: Alignment.center,
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: _FigmaConstants.planCardTrialPaddingH,
                                              vertical: _FigmaConstants.planCardTrialPaddingV,
                                            ),
                                            decoration: BoxDecoration(
                                              color: (selectedIndex == weeklyIndex) ? const Color(0xFF222222) : Colors.transparent,
                                              borderRadius: BorderRadius.circular(20),
                                            ),
                                            child: Text(
                                              context.localizations.weekFreeTrial(1),
                                              style: TextStyle(
                                                fontSize: _FigmaConstants.planPriceFontSize,
                                                color: (selectedIndex == weeklyIndex) ? Colors.white : Colors.grey[700],
                                              ),
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          )
                                        : SizedBox(
                                            width: screenWidth * _FigmaConstants.planCardTrialWidthRatio,
                                            height: screenHeight * _FigmaConstants.planCardTrialHeightRatio,
                                          ),
                                    const Spacer(),
                                    Text(
                                      'then ${item.priceString}/week',
                                      style: const TextStyle(color: Colors.white, fontSize: _FigmaConstants.planPriceFontSize),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              if (isNotSure)
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            displayTitle,
                                            style: TextStyle(
                                              color: isNotSure ? Colors.white : Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: _FigmaConstants.planTitleFontSize,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 4.0),
                                            child: Text(
                                              context.localizations.enableFreeTrial,
                                              style: const TextStyle(fontSize: _FigmaConstants.planDescFontSize, color: Colors.white70),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          _notSureCircleFilled = !_notSureCircleFilled;
                                          _notSureActivated = _notSureCircleFilled;
                                          selectedIndex = _notSureCircleFilled ? 0 : null;
                                        });
                                      },
                                      child: Container(
                                        width: screenWidth * _FigmaConstants.notSureCircleOuterRatio,
                                        height: screenWidth * _FigmaConstants.notSureCircleOuterRatio,
                                        margin: EdgeInsets.only(left: screenWidth * _FigmaConstants.notSureCircleMarginLeftRatio),
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(color: Colors.white, width: 2),
                                          color: Colors.transparent,
                                        ),
                                        child: _notSureCircleFilled
                                            ? Center(
                                                child: Container(
                                                  width: screenWidth * _FigmaConstants.notSureCircleInnerRatio,
                                                  height: screenWidth * _FigmaConstants.notSureCircleInnerRatio,
                                                  decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                                                ),
                                              )
                                            : null,
                                      ),
                                    ),
                                  ],
                                ),

                              //BEST VALUE badge
                              if (isYearly)
                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          width: _FigmaConstants.planCardYearlyTitleWidth,
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                displayTitle,
                                                style: const TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: _FigmaConstants.planTitleFontSize,
                                                ),
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                              Text(
                                                '\$${item.price.toStringAsFixed(2)}/year',
                                                style: const TextStyle(color: Colors.white, fontSize: _FigmaConstants.planPriceFontSize),
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(width: _FigmaConstants.planCardYearlySpacer),
                                        // YEARLY: 1 week free trial sadece _notSureCircleFilled true ise göster
                                        _notSureCircleFilled
                                            ? Container(
                                                width: screenWidth * _FigmaConstants.planCardTrialWidthRatio,
                                                height: screenHeight * _FigmaConstants.planCardTrialHeightRatio,
                                                alignment: Alignment.center,
                                                padding: const EdgeInsets.symmetric(
                                                  horizontal: _FigmaConstants.planCardTrialPaddingH,
                                                  vertical: _FigmaConstants.planCardTrialPaddingV,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: (selectedIndex == yearlyIndex) ? const Color(0xFF222222) : Colors.transparent,
                                                  borderRadius: BorderRadius.circular(20),
                                                ),
                                                child: Text(
                                                  context.localizations.weekFreeTrial(1),
                                                  style: TextStyle(
                                                    fontSize: _FigmaConstants.planPriceFontSize,
                                                    color: (selectedIndex == yearlyIndex) ? Colors.white : Colors.grey[700],
                                                  ),
                                                  overflow: TextOverflow.ellipsis,
                                                ),
                                              )
                                            : SizedBox(
                                                width: screenWidth * _FigmaConstants.planCardTrialWidthRatio,
                                                height: screenHeight * _FigmaConstants.planCardTrialHeightRatio,
                                              ),
                                        const Spacer(),
                                        Text(
                                          'then \$${(item.price / 52).toStringAsFixed(2)}/week',
                                          style: const TextStyle(color: Colors.white, fontSize: _FigmaConstants.planPriceFontSize),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                    Positioned(
                                      top: _FigmaConstants.bestValueBadgeTop,
                                      right: 0,
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                                        decoration: BoxDecoration(color: Colors.pink, borderRadius: BorderRadius.circular(4)),
                                        child: Text(
                                          context.localizations.bestValue.toUpperCase(),
                                          style: const TextStyle(
                                            fontSize: _FigmaConstants.bestValueBadgeFontSize,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w900,
                                            letterSpacing: 1,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),

                  const SizedBox(height: _FigmaConstants.sizedBox10),

                  // Continue button
                  SizedBox(
                    width: double.infinity,
                    height: _FigmaConstants.continueButtonHeight,
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: screenHeight * 0.02),
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 400),
                        curve: Curves.easeInOut,
                        decoration: BoxDecoration(
                          color: selectedIndex != null ? Colors.white : Colors.white12,
                          borderRadius: BorderRadius.circular(_FigmaConstants.continueButtonRadius),
                        ),
                        child: ElevatedButton(
                          onPressed: selectedIndex != null
                              ? () async {
                                  debugPrint('Buying: 4{_products[selectedIndex!].title}');
                                }
                              : null,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent, // AnimatedContainer controls color
                            foregroundColor: Colors.black,
                            shadowColor: Colors.transparent,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(_FigmaConstants.continueButtonRadius)),
                            disabledBackgroundColor: Colors.transparent,
                            disabledForegroundColor: Colors.grey,
                            elevation: 0,
                          ),
                          child: AnimatedSwitcher(
                            duration: const Duration(milliseconds: 450),
                            transitionBuilder: (child, animation) => FadeTransition(opacity: animation, child: child),
                            child: Text(
                              _notSureCircleFilled ? context.localizations.startFreeTrial : context.localizations.continueBtn,
                              key: ValueKey(_notSureCircleFilled),
                              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: _FigmaConstants.sizedBox10),

                  TextButton(
                    onPressed: () {},
                    child: Text(
                      context.localizations.otherPlans,
                      style: const TextStyle(
                        decoration: TextDecoration.underline,
                        decorationThickness: 1,
                        decorationColor: Colors.white,
                        color: Colors.white,
                        fontSize: _FigmaConstants.otherPlansFontSize,
                      ),
                    ),
                  ),

                  const SizedBox(height: _FigmaConstants.otherPlansSizedBox),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
