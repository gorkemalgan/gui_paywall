import 'package:flutter/material.dart';
import '../context_extensions.dart';
import '../models/paywall_product.dart';

class PlanScreen2 extends StatefulWidget {
  final Widget image;
  const PlanScreen2({super.key, required this.image});

  @override
  State<PlanScreen2> createState() => _PlanScreen2State();
}

class _PlanScreen2State extends State<PlanScreen2> {
  String selectedPlan = '7-day';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          /// Arka plan image (dışarıdan parametre ile gelen)
          Positioned.fill(
            child: Builder(
              builder: (context) {
                if (widget.image is Image) {
                  final img = widget.image as Image;
                  return Image(image: img.image, fit: BoxFit.cover, width: double.infinity, height: double.infinity);
                } else if (widget.image is ImageProvider) {
                  return Image(image: widget.image as ImageProvider, fit: BoxFit.cover, width: double.infinity, height: double.infinity);
                } else {
                  return SizedBox.expand(child: widget.image);
                }
              },
            ),
          ),

          /// Karanlık filtre
          Container(color: Colors.black.withOpacity(0.4)),

          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  /// Üst bar
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(Icons.close, color: Colors.white),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Restore purchase',
                          style: TextStyle(
                            color: Colors.grey,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.grey,
                            decorationThickness: 1.2,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 80),

                  /// Başlık
                  const Text(
                    'Start Editing\nSee Magic Happen',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  const Text('No commitments, cancel anytime', style: TextStyle(color: Colors.white70)),
                  const SizedBox(height: 20),

                  /// Info badge
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
                    decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(12)),
                    child: const Text(
                      '2,342 people have used the 7-day Trial in the last 24 hours!',
                      style: TextStyle(color: Colors.white, fontSize: 13),
                    ),
                  ),

                  const SizedBox(height: 20),

                  /// Plan seçenekleri
                  buildOptionTile(title: '7-Day Full Access', subtitle: 'MOST POPULAR', price: '\$0.49', value: '7-day'),
                  buildOptionTile(title: 'Monthly Access', subtitle: 'SAVE 93%', price: '\$2.99', value: 'monthly'),

                  const Spacer(),

                  /// Continue Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.cyanAccent,
                        foregroundColor: Colors.black,
                        shape: const StadiumBorder(),
                        padding: const EdgeInsets.symmetric(vertical: 16),
                      ),
                      child: const Text('Continue'),
                    ),
                  ),
                  const SizedBox(height: 10),

                  /// Alt açıklama
                  const Text(
                    'Billed \$9.99/week auto-renewal after 7 days.\nRequest a refund if you’re not 100% satisfied',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white70, fontSize: 11),
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
    bool isSelected = selectedPlan == value;

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6),
      decoration: BoxDecoration(
        border: Border.all(color: isSelected ? Colors.cyanAccent : Colors.white24),
        borderRadius: BorderRadius.circular(12),
        color: Colors.white.withOpacity(0.05),
      ),
      child: RadioListTile<String>(
        activeColor: Colors.cyanAccent,
        value: value,
        groupValue: selectedPlan,
        onChanged: (newValue) {
          setState(() {
            selectedPlan = newValue!;
          });
        },
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Text(subtitle, style: const TextStyle(color: Colors.cyanAccent, fontSize: 12)),
              ],
            ),
            Text(price, style: const TextStyle(color: Colors.white)),
          ],
        ),
      ),
    );
  }
}
