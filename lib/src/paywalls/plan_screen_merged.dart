import 'package:flutter/material.dart';
import '../base/paywall_base.dart';
import '../models/paywall_config.dart';
import '../extensions.dart';
import 'package:gui_paywall/generated/assets.gen.dart';
import '../widgets/fitted_text.dart';

class PlanScreenMerged extends PaywallBase {
  final Map<String, dynamic> userComments;
  final Map<String, dynamic> features;
  final Image image;
  const PlanScreenMerged({required this.image, required PaywallConfig paywall, required this.userComments, required this.features, Key? key})
    : super(paywall, key: key);

  @override
  PaywallConfig validateConfiguration() => paywall;

  @override
  State<PlanScreenMerged> createState() => _PlanScreenMergedState();
}

class _PlanScreenMergedState extends State<PlanScreenMerged> with PaywallSanityCheck<PlanScreenMerged> {
  String? selectedPlanStoreId;
  bool showFeatures = true;
  bool showUserReviews = true;
  bool showPremium = true;

  @override
  Widget build(BuildContext context) {
    final Widget backgroundImage = widget.image;
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(child: backgroundImage),
          Positioned.fill(child: Container(color: Colors.black.withOpacity(0.4))),
          SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.close, color: Colors.white),
                          onPressed: () => widget.paywall.close(context),
                        ),
                        TextButton(
                          onPressed: () => widget.paywall.restorePurchases(context),
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
                    const SizedBox(height: 30),
                    FittedText(
                      context.localizations.chooseYourPlan,
                      style: const TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    FittedText(context.localizations.cancelAtAnyTime, style: const TextStyle(color: Colors.white)),
                    const SizedBox(height: 20),
                    ...widget.paywall.products.map(
                      (product) => _buildOptionTile(
                        context,
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
                            final product = widget.paywall.products.firstWhere((p) => p.storeId == selectedPlanStoreId);
                            widget.paywall.purchase(product, context);
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
                    const SizedBox(height: 10),
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
                    const SizedBox(height: 30),
                    if (showFeatures) ...[
                      _sectionTitle(context.localizations.appOverview),
                      _overviewToAppWidget(context),
                      const SizedBox(height: 20),
                    ],
                    if (showUserReviews) ...[
                      _sectionTitle(context.localizations.userReviews),
                      _userExperiencesWidget(context),
                      const SizedBox(height: 20),
                    ],
                    if (showPremium) ...[
                      _sectionTitle(context.localizations.exclusiveFeatures),
                      _premiumPropertiesWidget(context),
                      const SizedBox(height: 20),
                    ],
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildOptionTile(BuildContext context, {required String title, required String subtitle, required String price, required String value}) {
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
                  FittedText(
                    title,
                    style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  FittedText(subtitle, style: const TextStyle(color: Colors.cyanAccent, fontSize: 12)),
                ],
              ),
            ),
            FittedText(
              price,
              style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  Widget _sectionTitle(String title) => Align(
    alignment: Alignment.centerLeft,
    child: FittedText(
      title,
      style: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
      textAlign: TextAlign.start,
    ),
  );

  Widget _overviewToAppWidget(BuildContext context) {
    final List<dynamic> features = widget.features['features'];
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: features
            .map<Widget>(
              (feature) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                  child: Image.asset(feature['images'][0], fit: BoxFit.cover, width: 120, height: 120),
                ),
              ),
            )
            .toList(),
      ),
    );
  }

  Widget _userExperiencesWidget(BuildContext context) {
    final comments = widget.userComments['comments'] as List<dynamic>;
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.22,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: comments
            .map<Widget>(
              (comment) => Container(
                width: 220,
                margin: const EdgeInsets.all(8),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(color: Colors.grey.withOpacity(0.2), borderRadius: BorderRadius.circular(16)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(backgroundImage: AssetImage(comment['userImage']), radius: 24),
                        const SizedBox(width: 10),
                        FittedText(comment['name'], style: const TextStyle(color: Colors.white)),
                      ],
                    ),
                    const SizedBox(height: 8),
                    FittedText(
                      comment['title'],
                      style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    const SizedBox(height: 4),
                    FittedText(
                      comment['body'],
                      maxLines: 3,
                      style: const TextStyle(color: Colors.white, fontSize: 14, overflow: TextOverflow.ellipsis),
                    ),
                  ],
                ),
              ),
            )
            .toList(),
      ),
    );
  }

  Widget _premiumPropertiesWidget(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      _premiumPropertyTile(PaywallAssets.freeTrial.premiumDownloadIcon.image(), context.localizations.unlimitedDownload),
      const SizedBox(height: 8),
      _premiumPropertyTile(PaywallAssets.freeTrial.premiumHdIcon.image(), context.localizations.hdQuality),
      const SizedBox(height: 8),
      _premiumPropertyTile(PaywallAssets.freeTrial.premiumNoAddsIcon.image(), context.localizations.adFree),
    ],
  );

  Widget _premiumPropertyTile(Widget image, String title) => Row(
    children: [
      ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        child: SizedBox(height: 32, width: 32, child: image),
      ),
      const SizedBox(width: 12),
      FittedText(title, style: const TextStyle(color: Colors.white, fontSize: 16)),
    ],
  );
}
