import 'package:flutter/material.dart';
import '../context_extensions.dart';

class PlanScreen2 extends StatefulWidget {
  final Widget image;

  const PlanScreen2({super.key, required this.image});

  @override
  State<PlanScreen2> createState() => _PlanScreen2State();
}

class _PlanScreen2State extends State<PlanScreen2> {
  String? selectedPlan;

  @override
  Widget build(BuildContext context) {
    // Prepare background image with BoxFit.cover
    final Widget backgroundImage = (widget.image is Image)
        ? Image(image: (widget.image as Image).image, fit: BoxFit.cover, width: double.infinity, height: double.infinity)
        : SizedBox.expand(child: widget.image);

    return Scaffold(
      body: Stack(
        children: [
          /// Background image
          Positioned.fill(child: backgroundImage),

          /// Dark overlay to enhance text readability
          Positioned.fill(child: Container(color: Colors.black.withOpacity(0.4))),

          /// Main content
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  /// Top bar with Close and Restore buttons
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
                    context.localizations.startEditingSeeMagicHappen,
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Text(context.localizations.noCommitmentsCancelAnytime, style: const TextStyle(color: Colors.white)),
                  const SizedBox(height: 20),

                  /// Info badge
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
                              // We want: '2,342 people have used the 7-day Trial in the last 24 hours!'
                              // Localized: context.localizations.trialUsedInfo('2,342')
                              // We'll split and format manually for now
                              TextSpan(
                                text: '2,342',
                                style: const TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(text: ' people have used the 7-day Trial in the last '),
                              TextSpan(
                                text: '24 hours',
                                style: const TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(text: '!'),
                            ],
                          ),
                        ),
                      ),
                      // Sola hizalı üçgen
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

                  /// Subscription plan options
                  buildOptionTile(title: '7-Day Full Access', subtitle: 'MOST POPULAR', price: '\$0.49', value: '7-day'),
                  buildOptionTile(title: 'Monthly Access', subtitle: context.localizations.percentOff(93), price: '\$2.99', value: 'monthly'),

                  const SizedBox(height: 20),

                  /// Continue button
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.ease,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: selectedPlan == null ? Colors.white.withOpacity(0.2) : Colors.cyanAccent,
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(color: selectedPlan == null ? Colors.transparent : Colors.cyanAccent, width: 2),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        if (selectedPlan != null) {}
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        foregroundColor: selectedPlan == null ? Colors.white : Colors.black,
                        shadowColor: Colors.transparent,
                        elevation: 0,
                        shape: const StadiumBorder(),
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        side: BorderSide.none,
                      ),
                      child: Text(context.localizations.continueBtn, style: const TextStyle(fontWeight: FontWeight.bold)),
                    ),
                  ),
                  const SizedBox(height: 10),

                  /// Disclaimer text
                  Text(
                    context.localizations.trialDisclaimer('0.49', '4.99'),
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

  /// Subscription plan tile widget
  Widget buildOptionTile({required String title, required String subtitle, required String price, required String value}) {
    bool isSelected = selectedPlan == value;
    return GestureDetector(
      onTap: () {
        setState(() {
          if (isSelected) {
            selectedPlan = null;
          } else {
            selectedPlan = value;
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
            // Custom radio
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
            // Title & subtitle
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
            // Price
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

// Badge altı üçgen painter
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
