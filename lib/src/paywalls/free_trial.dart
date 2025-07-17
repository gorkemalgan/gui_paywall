// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:carousel_slider/carousel_slider.dart';

// Project imports:
import 'package:gui_paywall/src/extensions.dart';
// import '../../generated/assets.gen.dart'; // kaldırıldı
import '../../gui_paywall.dart';
import '../my_localizations.dart';
import '../widgets/fitted_text.dart';

// Local imports:

int _animationDurationMs = 300;
int _fastAnimationDurationMs = 300;
double _animatedFirstPos = -100;

class PaywallFreeTrial extends PaywallBase {
  final Map<String, dynamic> userComments;
  final Map<String, dynamic> features;
  const PaywallFreeTrial(super.paywall, {super.key, required this.userComments, required this.features});

  @override
  PaywallConfig validateConfiguration() {
    PaywallConfig _paywall = paywall.freeTrialOnly.preferExpensive;
    // Check that products exist
    if (_paywall.products.isEmpty) {
      paywall.onError('PaywallFreeTrial requires at least one product');
    }

    // Check that all products have free trials
    final productsWithoutTrials = _paywall.products.where((p) => !p.haveFreeTrial).toList();
    if (productsWithoutTrials.isNotEmpty) {
      paywall.onError('PaywallFreeTrial expects all products to have free trials, but found ${productsWithoutTrials.length} products without trials');
    }

    // Check for yearly product (used as default selection)
    final hasYearlyProduct = _paywall.products.any((p) => p.period == ProductPeriod.yearly);
    if (!hasYearlyProduct && _paywall.products.isNotEmpty) {
      paywall.onError('No yearly product found, default selection may not work as expected');
    }

    // Check for required custom data
    if (_paywall.customData == null) {
      paywall.onError('No customData provided');
    } else {
      if (!_paywall.customData!.containsKey('user_comments_path')) {
        paywall.onError('No user_comments_path specified in customData, using default');
      }
      if (!_paywall.customData!.containsKey('features_path')) {
        paywall.onError('No features_path specified in customData, using default');
      }
    }

    return _paywall;
  }

  @override
  State<PaywallFreeTrial> createState() => _PaywallFreeTrialState();
}

class _PaywallFreeTrialState extends State<PaywallFreeTrial> with PaywallSanityCheck<PaywallFreeTrial> {
  late List<PaywallProduct> products = widget.paywall.products;
  PaywallProduct? get selectedProduct => products.firstWhere((e) => e.period == ProductPeriod.yearly);

  ScrollController scrollController = ScrollController();

  bool activateTitles = false;
  List<bool> activateProperitesList = List.filled(4, false);
  bool activatePremiumList = false;
  bool isFirstTime = true, reminder = false;

  @override
  void initState() {
    scrollController.addListener(() {
      titlesScrollControllerFunction();
      premiumPropertiesScrollControllerFunction();
      propertiesListActivateFunction();
      propertiesListDeactivateFunction();

      isFirstTime = false;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (isFirstTime) {
      Future.delayed(const Duration(milliseconds: 10), () {
        setState(() {
          activateTitles = true;
          propertiesListActivateFunction();
        });
        isFirstTime = false;
      });
    }
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(child: Image.asset('assets/free_trial/background.jpg', fit: BoxFit.fill)),
          SingleChildScrollView(
            child: SizedBox(
              height: size.height,
              width: size.width,
              child: ListView(
                controller: scrollController,
                children: <Widget>[
                  Column(
                    children: [
                      getCancelButton(),
                      SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                      getBigTitle(context.localizations.startFreeTrial),
                      getSmallTitle(context.localizations.freeTrialDesc),
                      getPropertiesList(),
                      remindBeforeFreeTrialEnd(),
                      verticalPadding(),
                      overviewToAppWidget(),
                      userExperiencesWidget(),
                      appOfTheDayWidget(5, 253697),
                      verticalPadding(),
                      premiumPropertiesWidget(),
                      animatedPadding(),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).viewInsets.bottom + 15,
            left: 0,
            right: 0,
            child: Center(child: getPremiumButton()),
          ),
        ],
      ),
    );
  }

  Widget verticalPadding() => SizedBox(height: MediaQuery.of(context).size.height * 0.03);

  Widget horizontalPadding() => SizedBox(width: MediaQuery.of(context).size.width * 0.05);

  Widget animatedPadding() => AnimatedContainer(
    duration: Duration(milliseconds: _fastAnimationDurationMs),
    curve: Curves.easeIn,
    height: MediaQuery.of(context).size.height * 0.15,
  );

  Widget getPremiumButton() => Center(
    child: GestureDetector(
      onTap: () async => widget.paywall.purchase(selectedProduct!, context),
      child: Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width * 0.75,
        height: MediaQuery.of(context).size.height * 0.07,
        decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(24)),
        child: FittedText(
          context.localizations.startFreeTrial,
          style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
    ),
  );

  Widget premiumPropertiesWidget() => Center(
    child: SizedBox(
      width: MediaQuery.of(context).size.width * 0.85,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FittedText(
            context.localizations.exclusiveFeatures,
            style: const TextStyle(color: Colors.white, fontSize: 18),
            textAlign: TextAlign.start,
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          premiumPropertyListTile(image: Image.asset('assets/free_trial/premium_download_icon.png'), title: context.localizations.unlimitedDownload),
          AnimatedContainer(
            duration: Duration(milliseconds: _animationDurationMs),
            curve: Curves.ease,
            height: !activatePremiumList ? 0 : MediaQuery.of(context).size.height * 0.025,
          ),
          premiumPropertyListTile(image: Image.asset('assets/free_trial/premium_hd_icon.png'), title: context.localizations.hdQuality),
          AnimatedContainer(
            duration: Duration(milliseconds: _animationDurationMs),
            curve: Curves.ease,
            height: !activatePremiumList ? 0 : MediaQuery.of(context).size.height * 0.025,
          ),
          premiumPropertyListTile(image: Image.asset('assets/free_trial/premium_no_adds_icon.png'), title: context.localizations.adFree),
        ],
      ),
    ),
  );

  Widget premiumPropertyListTile({required Widget image, required String title}) => Row(
    children: [
      ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        child: SizedBox(height: MediaQuery.of(context).size.height * 0.06, width: MediaQuery.of(context).size.height * 0.06, child: image),
      ),
      horizontalPadding(),
      FittedText(title, style: const TextStyle(color: Colors.white, fontSize: 18)),
    ],
  );

  Widget appOfTheDayWidget(double starCount, int totalDownload) => Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: Container(
      margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.06,
            width: MediaQuery.of(context).size.width * 0.3,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/free_trial/AOTD.png'), fit: BoxFit.contain),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/free_trial/rating.png'), fit: BoxFit.cover),
                ),
                height: MediaQuery.of(context).size.height * 0.016,
                width: MediaQuery.of(context).size.width * 0.2,
              ),
              const SizedBox(width: 5),
              FittedText("$starCount ($totalDownload)", style: const TextStyle(color: Colors.white, fontSize: 12)),
            ],
          ),
        ],
      ),
    ),
  );

  Widget userExperiencesWidget() {
    Widget _userExperienceWidget({required String photoPath, required String name, required String title, required String comment}) => Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(color: Colors.grey.withValues(alpha: 0.2), borderRadius: BorderRadius.circular(16)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 3),
                      borderRadius: BorderRadius.circular(64),
                      color: Colors.blue,
                    ),
                    height: MediaQuery.of(context).size.height * 0.07,
                    width: MediaQuery.of(context).size.height * 0.07,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(64),
                      child: Image.asset(photoPath, fit: BoxFit.cover),
                    ),
                  ),
                  const SizedBox(width: 10),
                  FittedText(name, style: const TextStyle(color: Colors.white)),
                ],
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [...List<Widget>.filled(5, Icon(Icons.star, color: Colors.amber, size: MediaQuery.of(context).size.width * 0.05))],
              ),
            ],
          ),
          FittedText(
            title,
            style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0, top: 4),
            child: FittedText(
              comment,
              maxLines: 4,
              textAlign: TextAlign.start,
              style: const TextStyle(color: Colors.white, fontSize: 15, overflow: TextOverflow.ellipsis),
            ),
          ),
        ],
      ),
    );
    final _userExperienceList = {
      for (Map<String, dynamic> comment in widget.userComments['comments'])
        _userExperienceWidget(
          photoPath: comment['userImage'],
          name: parseLocalized(comment['name']),
          comment: parseLocalized(comment['body']),
          title: parseLocalized(comment['title']),
        ): null,
    };

    return _CustomScrollableWidget(
      title: context.localizations.userReviews,
      childWidgets: _userExperienceList,
      widgetHeight: MediaQuery.of(context).size.height * 0.3,
      widgetWidth: MediaQuery.of(context).size.width,
      isSlider: false,
    );
  }

  Widget overviewToAppWidget() {
    final List<dynamic> features = widget.features['features'];
    final _appFeatures = {
      for (Map<String, dynamic> feature in features)
        ClipRRect(borderRadius: const BorderRadius.all(Radius.circular(8)), child: PaywallImageGallery.slider(List<String>.from(feature['images']))):
            parseLocalized(feature['name']),
    };

    return _CustomScrollableWidget(
      title: context.localizations.appOverview,
      childWidgets: _appFeatures,
      widgetHeight: MediaQuery.of(context).size.height * 0.33,
      widgetWidth: MediaQuery.of(context).size.width * .7,
      isSlider: true,
    );
  }

  Widget remindBeforeFreeTrialEnd() => Container(
    width: MediaQuery.of(context).size.width * 0.9,
    padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.05, vertical: MediaQuery.of(context).size.height * 0.02),
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: Colors.grey.withValues(alpha: 0.2)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(Icons.notifications, color: Colors.white70, size: 41),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.5,
          child: FittedText(
            context.localizations.freeTrialReminder,
            style: const TextStyle(color: Colors.white, fontSize: 15),
            textAlign: TextAlign.center,
            maxLines: 2,
          ),
        ),
        Switch(
          inactiveTrackColor: Colors.white.withAlpha(50),
          inactiveThumbColor: Colors.white,
          activeColor: Colors.white,
          trackOutlineColor: WidgetStateProperty.all(Colors.transparent),
          overlayColor: WidgetStateProperty.all(Colors.transparent),
          value: reminder,
          onChanged: (value) {
            setState(() {
              reminder = value;
            });
          },
        ),
      ],
    ),
  );

  Widget getCancelButton() => Align(
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

  bool selected = false;
  Widget getBigTitle(String title) => Center(
    child: SizedBox(
      height: MediaQuery.of(context).size.height * 0.08,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          AnimatedPositioned(
            duration: Duration(milliseconds: _fastAnimationDurationMs),
            curve: Curves.easeIn,
            left: !activateTitles ? _animatedFirstPos : MediaQuery.of(context).size.width * 0,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: FittedText(
                  title,
                  textAlign: TextAlign.center,
                  style: context.textTheme.displayLarge?.copyWith(color: Colors.white),
                  maxLines: 3,
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );

  Widget getSmallTitle(String title) => Center(
    child: SizedBox(
      width: MediaQuery.of(context).size.width * 0.85,
      height: MediaQuery.of(context).size.height * 0.07,
      child: Stack(
        children: [
          AnimatedPositioned(
            duration: Duration(milliseconds: _fastAnimationDurationMs),
            curve: Curves.easeIn,
            left: !activateTitles ? MediaQuery.of(context).size.width - _animatedFirstPos : MediaQuery.of(context).size.width * 0,
            child: Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.85,
                child: FittedText(
                  title,
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  style: context.textTheme.labelMedium?.copyWith(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );

  Widget getPropertiesList() => Column(
    children: [
      verticalPadding(),
      getPropertyListTile(
        Image.asset('assets/free_trial/property_check_icon.png'),
        context.localizations.freeTrialProperty1Big,
        context.localizations.freeTrialProperty1Small,
        0,
      ),
      getPropertyListTile(
        Image.asset('assets/free_trial/property_lock_icon.png'),
        context.localizations.freeTrialProperty2Big,
        context.localizations.freeTrialProperty2Small,
        1,
      ),
      getPropertyListTile(
        Image.asset('assets/free_trial/property_notification_icon.png'),
        context.localizations.freeTrialProperty3Big,
        context.localizations.freeTrialProperty3Small,
        2,
      ),
      getPropertyListTile(
        Image.asset('assets/free_trial/property_premium_icon.png'),
        context.localizations.freeTrialProperty4Big,
        context.localizations.freeTrialProperty4Small,
        3,
      ),
    ],
  );

  Widget getPropertyListTile(Widget image, String bigTitle, String smallTitle, int no) {
    double allHeight = MediaQuery.of(context).size.height * 0.1;
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.1,
      child: Stack(
        children: [
          AnimatedPositioned(
            duration: Duration(milliseconds: _fastAnimationDurationMs),
            curve: Curves.easeIn,
            left: !activateProperitesList[no] ? _animatedFirstPos : MediaQuery.of(context).size.width * 0,
            child: SizedBox(
              height: allHeight,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  horizontalPadding(),
                  horizontalPadding(),
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(8)),
                    child: SizedBox(height: allHeight, width: allHeight * 0.5, child: image),
                  ),
                  horizontalPadding(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: FittedText(bigTitle, maxLines: 2, style: context.textTheme.titleMedium?.copyWith(color: Colors.white)),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height * 0.005),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: FittedText(
                          smallTitle,
                          maxLines: 2,
                          style: context.textTheme.bodySmall?.copyWith(color: Colors.white.withValues(alpha: 0.8)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void propertiesListDeactivateFunction() {
    if (scrollController.position.pixels > MediaQuery.of(context).size.height * 0.7 && activateProperitesList[0] == true) {
      setState(() {
        activateProperitesList = List.filled(4, false);
      });
    }
  }

  void propertiesListActivateFunction() {
    for (int i = 0; i < 4; i++) {
      if (scrollController.position.pixels < MediaQuery.of(context).size.height * 0.7 && activateProperitesList[i] == false) {
        Future.delayed(Duration(milliseconds: 50 * (i + 1)), () {
          setState(() {
            activateProperitesList[i] = true;
          });
        });
      }
    }
  }

  void titlesScrollControllerFunction() {
    if (scrollController.position.pixels < MediaQuery.of(context).size.height * 0.3 && activateTitles == false) {
      setState(() {
        activateTitles = true;
      });
    }
    if (scrollController.position.pixels > MediaQuery.of(context).size.height * 0.7 && activateTitles == true) {
      setState(() {
        activateTitles = false;
      });
    }
  }

  void premiumPropertiesScrollControllerFunction() {
    if (scrollController.position.pixels > MediaQuery.of(context).size.height * 0.9 && activatePremiumList == false) {
      setState(() {
        activatePremiumList = true;
      });
    }
    if (scrollController.position.pixels < MediaQuery.of(context).size.height * 0.7 && activatePremiumList == true) {
      setState(() {
        activatePremiumList = false;
      });
    }
  }
}

class _CustomScrollableWidget extends StatelessWidget {
  final Map<Widget, String?> childWidgets;
  final double widgetHeight, widgetWidth;
  final String title;
  final bool isSlider;
  const _CustomScrollableWidget({
    required this.widgetHeight,
    required this.widgetWidth,
    required this.title,
    required this.childWidgets,
    required this.isSlider,
  });

  @override
  Widget build(BuildContext context) => SizedBox(
    height: widgetHeight,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.9,
          child: FittedText(
            title,
            style: const TextStyle(color: Colors.white, fontSize: 18),
            textAlign: TextAlign.start,
          ),
        ),
        CarouselSlider.builder(
          itemCount: childWidgets.length,
          options: CarouselOptions(viewportFraction: isSlider ? 0.8 : 0.8),
          itemBuilder: (context, index, realIndex) => Column(
            mainAxisAlignment: isSlider ? MainAxisAlignment.start : MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: isSlider ? widgetHeight * 0.5 : widgetHeight * 0.8,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
                  child: childWidgets.keys.elementAt(index),
                ),
              ),
              if (childWidgets.values.elementAt(index) != null)
                SizedBox(
                  height: widgetHeight * 0.1,
                  child: Center(
                    child: FittedText(
                      childWidgets.values.elementAt(index)!,
                      style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ],
    ),
  );
}
