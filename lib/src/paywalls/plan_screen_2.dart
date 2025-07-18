import 'package:flutter/material.dart';
import '../base/paywall_base.dart';
import '../models/paywall_config.dart';
import '../extensions.dart';

class PlanScreen2 extends PaywallBase {
  final Image image;
  const PlanScreen2({required this.image, Key? key, required PaywallConfig paywall}) : super(paywall, key: key);

  @override
  PaywallConfig validateConfiguration() => paywall;

  @override
  State<PlanScreen2> createState() => _PlanScreen2State();
}

class _PlanScreen2State extends State<PlanScreen2> with PaywallSanityCheck<PlanScreen2> {
  String? selectedPlanStoreId;

  @override
  Widget build(BuildContext context) {
    final Widget backgroundImage = Image(image: widget.image.image, fit: BoxFit.cover, width: double.infinity, height: double.infinity);

    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(child: backgroundImage),
          Positioned.fill(child: Container(color: Colors.black.withOpacity(0.4))),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.close, color: Colors.white),
                        onPressed: () => Navigator.of(context).pop(),
                      ),
                      TextButton(
                        onPressed: () {
                          // Restore purchase action
                        },
                        child: Text(
                          context.localizations.restorePurchases,
                          style: const TextStyle(
                            color: Colors.white,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.white,
                            decorationThickness: 2,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 60),
                  const Spacer(),

                  /// Title and subtitle
                  Text(
                    context.localizations.chooseYourPlan,
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Text(context.localizations.cancelAtAnyTime, style: const TextStyle(color: Colors.white)),
                  const SizedBox(height: 20),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
                        decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(12)),
                        child: RichText(
                          text: TextSpan(
                            style: const TextStyle(color: Colors.white, fontSize: 13),
                            children: [
                              TextSpan(
                                text: context.localizations.trialInfo('2342', '24'),
                                style: const TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 0),
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: CustomPaint(
                          size: const Size(20, 8),
                          painter: _DownArrowPainter(color: Colors.blue),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),

                  ...widget.paywall.products.map(
                    (product) => buildOptionTile(
                      title: product.title ?? product.period.localizedName(context),
                      subtitle: product.description ?? '',
                      price: product.priceString_,
                      value: product.storeId,
                    ),
                  ),
                  const SizedBox(height: 20),
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.ease,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: selectedPlanStoreId == null ? Colors.white.withOpacity(0.2) : Colors.cyanAccent,
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(color: selectedPlanStoreId == null ? Colors.transparent : Colors.cyanAccent, width: 2),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        if (selectedPlanStoreId != null) {
                          // Satın alma işlemi burada yapılabilir
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        foregroundColor: selectedPlanStoreId == null ? Colors.white : Colors.black,
                        shadowColor: Colors.transparent,
                        elevation: 0,
                        shape: const StadiumBorder(),
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        side: BorderSide.none,
                      ),
                      child: Text(context.localizations.continueBtn, style: const TextStyle(fontWeight: FontWeight.bold)),
                    ),
                  ),

                  /// Disclaimer text
                  Text(
                    context.localizations.chargingInfoFreeTrial(
                      selectedPlanStoreId != null
                          ? (widget.paywall.products.firstWhere((p) => p.storeId == selectedPlanStoreId).price.toStringAsFixed(2))
                          : '-',
                      selectedPlanStoreId != null
                          ? (widget.paywall.products.firstWhere((p) => p.storeId == selectedPlanStoreId).freeTrialDays?.toString() ?? '-')
                          : '-',
                      selectedPlanStoreId != null
                          ? (widget.paywall.products.firstWhere((p) => p.storeId == selectedPlanStoreId).period.periodInvoiceStr ?? '-')
                          : '-',
                    ),
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Colors.white70, fontSize: 11),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildOptionTile({required String title, required String subtitle, required String price, required String value}) {
    bool isSelected = selectedPlanStoreId == value;
    return GestureDetector(
      onTap: () {
        setState(() {
          if (isSelected) {
            selectedPlanStoreId = null;
          } else {
            selectedPlanStoreId = value;
          }
        });
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 6),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        decoration: BoxDecoration(
          border: Border.all(color: isSelected ? Colors.cyanAccent : Colors.white24, width: 2),
          borderRadius: BorderRadius.circular(12),
          color: Colors.white.withOpacity(0.05),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: isSelected ? Colors.cyanAccent : Colors.white54, width: 2),
                color: Colors.transparent,
              ),
              child: isSelected
                  ? Center(
                      child: Container(
                        width: 12,
                        height: 12,
                        decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.cyanAccent),
                      ),
                    )
                  : null,
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Text(subtitle, style: const TextStyle(color: Colors.cyanAccent, fontSize: 12)),
                ],
              ),
            ),
            Text(
              price,
              style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

class _DownArrowPainter extends CustomPainter {
  final Color color;
  _DownArrowPainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = color;
    final path = Path()
      ..moveTo(0, 0)
      ..lineTo(size.width / 2, size.height)
      ..lineTo(size.width, 0)
      ..close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
