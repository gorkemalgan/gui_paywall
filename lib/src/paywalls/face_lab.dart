import 'package:flutter/material.dart';
import '../extensions.dart';

// main() ve MyApp kaldırıldı

class FaceLabPremiumScreen extends StatefulWidget {
  final Image? image;
  const FaceLabPremiumScreen({super.key, this.image});

  @override
  State<FaceLabPremiumScreen> createState() => _FaceLabPremiumScreenState();
}

class _FaceLabPremiumScreenState extends State<FaceLabPremiumScreen> {
  bool _freeTrialEnabled = true;

  String capitalizeEachWord(String text) => text.split(' ').map((w) => w.isNotEmpty ? w[0].toUpperCase() + w.substring(1) : '').join(' ');

  @override
  Widget build(BuildContext context) {
    // Lokalizasyonun çalışıp çalışmadığını terminalde görmek için:
    debugPrint('faceLabPremium localization:  [32m [1m${context.localizations.faceLabPremium} [0m');
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          // Arka plan görseli
          SizedBox.expand(child: Image.asset('assets/images/woman_facelabb.jpg', fit: BoxFit.cover)),
          // Alt kısımda yazıların arkasına siyah gölgelendirme
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 420, // Biraz daha yüksek
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Color(0xFF000000), // Tam siyah
                    Color(0xCC000000), // %80 opak siyah
                    Color(0x88000000), // %53 opak siyah
                    Colors.transparent,
                  ],
                  stops: [0.0, 0.4, 0.7, 1.0],
                ),
              ),
            ),
          ),
          Column(
            children: [
              const SizedBox(height: 60),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop(); // Paywall seçme ekranına dönmek için bir pop yeterli
                    },
                    child: const Padding(
                      padding: EdgeInsets.only(left: 16.0),
                      child: Icon(Icons.close, color: Colors.white, size: 28),
                    ),
                  ),
                  // Sağ üstteki gereksiz ikonlar kaldırıldı
                ],
              ),
              // Üstteki tekrar görseli kaldırdım
              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    context.localizations.faceLabPremium,
                    style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    context.localizations.unlimitedAccess,
                    style: const TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(height: 18),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                decoration: BoxDecoration(color: Colors.grey[900], borderRadius: BorderRadius.circular(32)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      capitalizeEachWord(context.localizations.freeTrialEnabled(3)),
                      style: const TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _freeTrialEnabled = !_freeTrialEnabled;
                        });
                      },
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 200),
                        width: 44,
                        height: 26,
                        padding: const EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          color: _freeTrialEnabled ? Colors.deepPurple : Colors.grey[700],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: AnimatedAlign(
                          duration: const Duration(milliseconds: 200),
                          alignment: _freeTrialEnabled ? Alignment.centerRight : Alignment.centerLeft,
                          curve: Curves.easeInOut,
                          child: Container(
                            width: 20,
                            height: 20,
                            decoration: const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Container(
                  width: double.infinity,
                  height: 56,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(colors: [Color(0xFF7F7BFF), Color(0xFF00C6FF)]),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(16),
                      onTap: () {},
                      child: Center(
                        child: Text(
                          context.localizations.startFreeTrial,
                          style: const TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.check_circle, color: Colors.green, size: 16),
                  const SizedBox(width: 4),
                  Text(
                    context.localizations.noPaymentNow,
                    style: const TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(context.localizations.termsOfUse, style: const TextStyle(color: Colors.white70, fontSize: 12)),
                    const Text('|', style: TextStyle(color: Colors.white70)),
                    Text(context.localizations.restore, style: const TextStyle(color: Colors.white70, fontSize: 12)),
                    const Text('|', style: TextStyle(color: Colors.white70)),
                    Text(context.localizations.privacyPolicy, style: const TextStyle(color: Colors.white70, fontSize: 12)),
                  ],
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ],
      ),
    );
  }
}
