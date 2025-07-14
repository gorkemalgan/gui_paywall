// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../context_extensions.dart';
import '../models/paywall_product.dart';

/*
class _FigmaConstants {
  static double fontSize = 12.0;
}
*/

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
          Positioned.fill(child: widget.image),
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
                          fontSize: 14,
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
                      style: const TextStyle(fontSize: 26, color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(context.localizations.unlockFullPower, style: const TextStyle(fontSize: 14, color: Colors.white)),
                  ),

                  const SizedBox(height: 24),

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
                        width: MediaQuery.of(context).size.width * 0.95,
                        height: screenHeight * 0.06,
                        margin: EdgeInsets.only(bottom: screenHeight * 0.015),
                        padding: EdgeInsets.all(screenWidth * 0.04),
                        constraints: const BoxConstraints(minHeight: 85),
                        decoration: BoxDecoration(
                          border: Border.all(color: selectedIndex == index ? Colors.white : Colors.white30),
                          borderRadius: BorderRadius.circular(14),
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
                                      width: 80,
                                      child: Text(
                                        displayTitle,
                                        style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    SizedBox(width: 8),
                                    if (_notSureCircleFilled)
                                      selectedIndex == weeklyIndex
                                          ? Container(
                                              width: screenWidth * 0.28,
                                              height: screenHeight * 0.03,
                                              alignment: Alignment.center,
                                              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                                              decoration: BoxDecoration(color: const Color(0xFF222222), borderRadius: BorderRadius.circular(20)),
                                              child: Text(
                                                context.localizations.weekFreeTrial(1),
                                                style: const TextStyle(fontSize: 12, color: Colors.white),
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            )
                                          : Text(
                                              context.localizations.weekFreeTrial(1),
                                              style: TextStyle(fontSize: 12, color: Colors.grey[700]),
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                    const Spacer(),
                                    Text(
                                      'then ${item.priceString}/week',
                                      style: const TextStyle(color: Colors.white, fontSize: 12),
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
                                              fontSize: 16,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 4.0),
                                            child: Text(
                                              context.localizations.enableFreeTrial,
                                              style: const TextStyle(fontSize: 13, color: Colors.white70),
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
                                        width: screenWidth * 0.064,
                                        height: screenWidth * 0.064,
                                        margin: EdgeInsets.only(left: screenWidth * 0.025),
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(color: Colors.white, width: 2),
                                          color: Colors.transparent,
                                        ),
                                        child: _notSureCircleFilled
                                            ? Center(
                                                child: Container(
                                                  width: screenWidth * 0.038,
                                                  height: screenWidth * 0.038,
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
                                          width: 100,
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                displayTitle,
                                                style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                              Text(
                                                '\$${item.price.toStringAsFixed(2)}/year',
                                                style: const TextStyle(color: Colors.white, fontSize: 13),
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(width: 2),
                                        if (_notSureCircleFilled)
                                          selectedIndex == yearlyIndex
                                              ? Container(
                                                  width: screenWidth * 0.28,
                                                  height: screenHeight * 0.03,
                                                  alignment: Alignment.center,
                                                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                                                  decoration: BoxDecoration(color: const Color(0xFF222222), borderRadius: BorderRadius.circular(20)),
                                                  child: Text(
                                                    context.localizations.weekFreeTrial(1),
                                                    style: const TextStyle(fontSize: 12, color: Colors.white),
                                                    overflow: TextOverflow.ellipsis,
                                                  ),
                                                )
                                              : Text(
                                                  context.localizations.weekFreeTrial(1),
                                                  style: TextStyle(fontSize: 12, color: Colors.grey[700]),
                                                  overflow: TextOverflow.ellipsis,
                                                )
                                        else
                                          SizedBox(width: screenWidth * 0.28, height: screenHeight * 0.03),
                                        const Spacer(),
                                        Text(
                                          'then \$${(item.price / 52).toStringAsFixed(2)}/week',
                                          style: const TextStyle(color: Colors.white, fontSize: 12),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                    Positioned(
                                      top: -24,
                                      right: 0,
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                                        decoration: BoxDecoration(color: Colors.pink, borderRadius: BorderRadius.circular(4)),
                                        child: Text(
                                          context.localizations.bestValue.toUpperCase(),
                                          style: const TextStyle(fontSize: 10, color: Colors.white, fontWeight: FontWeight.w900, letterSpacing: 1),
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

                  const SizedBox(height: 10),

                  // Continue button
                  SizedBox(
                    width: double.infinity,
                    height: 90,
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: screenHeight * 0.02),
                      child: ElevatedButton(
                        onPressed: selectedIndex != null
                            ? () async {
                                debugPrint('Buying: 4{_products[selectedIndex!].title}');
                              }
                            : null,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
                          disabledBackgroundColor: Colors.white12,
                          disabledForegroundColor: Colors.grey,
                        ),
                        child: Text(context.localizations.continueBtn, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),

                  const SizedBox(height: 10),

                  TextButton(
                    onPressed: () {},
                    child: Text(
                      context.localizations.otherPlans,
                      style: const TextStyle(
                        decoration: TextDecoration.underline,
                        decorationThickness: 1,
                        decorationColor: Colors.white,
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ),

                  const SizedBox(height: 5),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
