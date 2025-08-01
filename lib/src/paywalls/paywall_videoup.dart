import 'package:flutter/material.dart';
import '../base/paywall_base.dart';
import '../models/paywall_config.dart';
import '../extensions.dart';
import '../widgets/footers.dart';

class VideoUpScreen extends PaywallBase {
  final Image image;
  const VideoUpScreen({required this.image, Key? key, required PaywallConfig paywall}) : super(paywall, key: key);

  @override
  PaywallConfig validateConfiguration() {
    // Get the configuration with only paired products
    final pairedConfig = paywall.paired;
    final pairs = pairedConfig.productsPaired;
    // Check we have 2 or 3 pairs
    if (pairs.length < 2 || pairs.length > 3) {
      paywall.onError('VideoUpScreen requires 2 or 3 product pairs, found  pairs.length}');
    }
    return pairedConfig;
  }

  @override
  State<VideoUpScreen> createState() => _VideoUpScreenState();
}

class _VideoUpScreenState extends State<VideoUpScreen> with PaywallSanityCheck<VideoUpScreen> {
  String? selectedPlanStoreId;

  @override
  Widget build(BuildContext context) {
    final backgroundImage = Image(image: widget.image.image, fit: BoxFit.cover, width: double.infinity, height: double.infinity);

    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(child: backgroundImage),
          Positioned.fill(child: Container(color: Colors.black.withValues(alpha: 0.4))),
          LayoutBuilder(
            builder: (context, constraints) {
              final screenHeight = constraints.maxHeight;

              return SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        SizedBox(
                          height: screenHeight,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              const SizedBox(height: 20),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  IconButton(
                                    icon: const Icon(Icons.close, color: Colors.white),
                                    onPressed: () => Navigator.of(context).pop(),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      widget.paywall.restorePurchases(context);
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
                              const SizedBox(height: 170),
                              Text(
                                context.localizations.startEditingSeeMagicHappen,
                                textAlign: TextAlign.center,
                                style: const TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                context.localizations.cancelAtAnyTime,
                                style: const TextStyle(color: Colors.white),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(height: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
                                    decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(12)),
                                    child: RichText(
                                      text: TextSpan(
                                        style: const TextStyle(color: Colors.white, fontSize: 13),
                                        children: <TextSpan>[TextSpan(text: context.localizations.peopleUsed7DayTrial('2,342'))],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 16.0),

                                    child: CustomPaint(
                                      size: const Size(20, 8),
                                      painter: _DownArrowPainter(color: Colors.blue),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),

                              ...widget.paywall.productsSorted.reversed.map(
                                (product) => buildOptionTile(
                                  title: product.period.getTitle(context),
                                  subtitle: product.period.getDescription(context),
                                  price: product.priceString_,
                                  value: product.storeId,
                                ),
                              ),
                              const SizedBox(height: 20),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 65,
                                    width: 350,
                                    child: AnimatedContainer(
                                      duration: const Duration(milliseconds: 350),
                                      curve: Curves.easeInOut,
                                      decoration: BoxDecoration(
                                        color: selectedPlanStoreId == null ? Colors.white24 : Colors.cyanAccent,
                                        borderRadius: BorderRadius.circular(40),
                                      ),
                                      child: ElevatedButton(
                                        onPressed: () {
                                          if (selectedPlanStoreId != null) {
                                            final selectedProduct = widget.paywall.products.firstWhere((p) => p.storeId == selectedPlanStoreId);
                                            widget.paywall.purchase(selectedProduct, context);
                                          }
                                        },
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.transparent,
                                          foregroundColor: selectedPlanStoreId == null ? Colors.white : Colors.black,
                                          shadowColor: Colors.transparent,
                                          elevation: 0,
                                          shape: const StadiumBorder(),
                                          padding: EdgeInsets.zero,
                                        ),
                                        child: Container(
                                          width: double.infinity,
                                          padding: const EdgeInsets.symmetric(vertical: 16),
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                              colors: selectedPlanStoreId == null
                                                  ? [Colors.white24, Colors.white38]
                                                  : [Colors.cyanAccent, Colors.cyan],
                                              begin: Alignment.centerLeft,
                                              end: Alignment.centerRight,
                                            ),
                                            borderRadius: BorderRadius.circular(40),
                                          ),
                                          child: Center(
                                            child: Text(
                                              context.localizations.continueBtn,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: selectedPlanStoreId == null ? Colors.white : Colors.black,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              const SizedBox(height: 8),
                              AnimatedSwitcher(
                                duration: const Duration(milliseconds: 1200),
                                transitionBuilder: (child, animation) => SlideTransition(
                                  position: Tween<Offset>(
                                    begin: const Offset(0, -0.05),
                                    end: Offset.zero,
                                  ).animate(CurvedAnimation(parent: animation, curve: Curves.easeInOutCubic)),
                                  child: FadeTransition(opacity: animation, child: child),
                                ),
                                child: Builder(
                                  builder: (context) {
                                    final selectedProduct = selectedPlanStoreId != null
                                        ? widget.paywall.products.firstWhere((p) => p.storeId == selectedPlanStoreId)
                                        : null;

                                    final price = selectedProduct?.price.toStringAsFixed(2) ?? '-';
                                    final freeTrialDay = (selectedProduct?.freeTrialDays != null && (selectedProduct?.freeTrialDays ?? 0) > 0)
                                        ? selectedProduct?.freeTrialDays?.toString()
                                        : null;
                                    final invoiceDuration = selectedProduct?.period.periodInvoiceStr ?? selectedProduct?.period.displayName ?? '-';

                                    String disclaimerText = '';
                                    if (selectedProduct != null) {
                                      if (freeTrialDay != null) {
                                        disclaimerText = context.localizations.chargingInfoFreeTrial(price, freeTrialDay, invoiceDuration);
                                      } else {
                                        disclaimerText = context.localizations.chargingInfoStandart(price, invoiceDuration);
                                      }
                                    }

                                    return Text(
                                      disclaimerText,
                                      key: ValueKey(disclaimerText),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(color: Colors.white70, fontSize: 11),
                                    );
                                  },
                                ),
                              ),
                              const Spacer(),
                            ],
                          ),
                        ),
                        PaywallFullFooter(paywallConfig: widget.paywall),
                      ],
                    ),
                  ),
                ),
              );
            },
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
          selectedPlanStoreId = isSelected ? null : value;
        });
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 6),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        decoration: BoxDecoration(
          border: Border.all(color: isSelected ? Colors.cyanAccent : Colors.white24, width: 2),
          borderRadius: BorderRadius.circular(12),
          color: Colors.white.withValues(alpha: 0.05),
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
