// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../context_extensions.dart';
import '../models/paywall_config.dart';
import '../models/paywall_product.dart';

class PlanScreen extends StatefulWidget {
  final PaywallConfig paywall;
  final Widget image;
  const PlanScreen({super.key, required this.paywall, required this.image});

  @override
  State<PlanScreen> createState() => _PlanScreenState();
}

class _PlanScreenState extends State<PlanScreen> {
  late final List<PaywallProduct> _products = widget.paywall.productsSorted.reversed.toList();

  int? selectedIndex;
  bool _notSureActivated = false;
  bool _notSureCircleFilled = false;

  @override
  Widget build(BuildContext context) => Scaffold(
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

                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        if (item.title == context.localizations.notSureYet) {
                          if (_notSureCircleFilled) {
                            _notSureCircleFilled = false;
                            selectedIndex = selectedIndex == index ? null : selectedIndex;
                            // _notSureActivated artık false yapılmıyor
                          } else {
                            _notSureCircleFilled = true;
                            selectedIndex = index;
                            _notSureActivated = true;
                          }
                        } else {
                          if (selectedIndex == index) {
                            selectedIndex = null;
                          } else {
                            selectedIndex = index;
                          }
                          // _notSureActivated hiçbir zaman false yapılmıyor
                        }
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 12),
                      padding: const EdgeInsets.all(16),
                      constraints: const BoxConstraints(minHeight: 80),
                      decoration: BoxDecoration(
                        border: Border.all(color: selectedIndex == index ? Colors.white : Colors.white30),
                        borderRadius: BorderRadius.circular(14),
                        color: item.title == context.localizations.notSureYet ? Colors.white30 : Colors.black,
                      ),
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // Sol taraf // TODO: not turkish, always english
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // Text(
                                  //   item.title == context.localizations.notSureYet
                                  //       ? context.localizations.notSureYet
                                  //       : item.title == context.localizations.weekly
                                  //       ? context.localizations.weekly
                                  //       : item.title == context.localizations.yearly
                                  //       ? context.localizations.yearly
                                  //       : item.title,
                                  //   style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
                                  // ),
                                  if (item.title == context.localizations.notSureYet)
                                    Padding(
                                      padding: const EdgeInsets.only(top: 4.0),
                                      child: Text(
                                        context.localizations.enableFreeTrial,
                                        style: const TextStyle(fontSize: 13, color: Colors.white70, fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                  if (item.title == context.localizations.yearly)
                                    Padding(
                                      padding: const EdgeInsets.only(top: 4.0),
                                      child: Text(
                                        context.localizations.yearlyPrice(item.price.toStringAsFixed(2)),
                                        style: const TextStyle(fontSize: 13, color: Colors.white),
                                      ),
                                    ),
                                ],
                              ),
                              const SizedBox(height: 40),
                              // Ortada free trial yazısı (bir kez 'Not sure yet?' seçildiyse ve fiyatı olanlarda)
                              if (_notSureActivated && _notSureCircleFilled && item.price > 0)
                                Align(
                                  alignment: Alignment.center,
                                  child:
                                      (selectedIndex != null &&
                                          ((_products[selectedIndex!].title == context.localizations.weekly &&
                                                  item.title == context.localizations.weekly) ||
                                              (_products[selectedIndex!].title == context.localizations.yearly &&
                                                  item.title == context.localizations.yearly)))
                                      ? Container(
                                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                                          decoration: BoxDecoration(color: Color(0xFF222222), borderRadius: BorderRadius.circular(20)),
                                          child: Text(
                                            context.localizations.weekFreeTrial(1),
                                            style: const TextStyle(fontSize: 12, color: Colors.white),
                                          ),
                                        )
                                      : Text(context.localizations.weekFreeTrial(1), style: const TextStyle(fontSize: 12, color: Colors.white70)),
                                ),

                              // Sağ taraf
                              if (item.title == context.localizations.notSureYet)
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                    width: 22,
                                    height: 22,
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      border: Border.all(color: Colors.white70, width: 2),
                                      shape: BoxShape.circle,
                                    ),
                                    child: _notSureCircleFilled
                                        ? Center(
                                            child: Container(
                                              width: 10,
                                              height: 10,
                                              decoration: const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                                            ),
                                          )
                                        : null,
                                  ),
                                )
                              else if (item.price > 0)
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    context.localizations.thenPerWeek(item.price.toStringAsFixed(2)),
                                    style: const TextStyle(fontSize: 12, color: Colors.white),
                                  ),
                                ),
                            ],
                          ),

                          // // BEST VALUE badge
                          // if (item.badge != null)
                          //   Positioned(
                          //     top: -25,
                          //     right: -10,
                          //     child: Container(
                          //       padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          //       decoration: BoxDecoration(color: Colors.pink, borderRadius: BorderRadius.circular(6)),
                          //       child: Text(
                          //         item.badge!,
                          //         style: const TextStyle(fontSize: 10, color: Colors.white, fontWeight: FontWeight.bold),
                          //       ),
                          //     ),
                          //   ),
                        ],
                      ),
                    ),
                  );
                }),

                const SizedBox(height: 24),

                // Continue button
                SizedBox(
                  width: double.infinity,
                  height: 56,
                  child: ElevatedButton(
                    onPressed: selectedIndex != null
                        ? () async {
                            await widget.paywall.purchase(_products[selectedIndex!], context);
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

                const SizedBox(height: 16),

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

                const SizedBox(height: 8),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
