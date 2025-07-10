// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:carousel_slider/carousel_slider.dart';

// Project imports:
import 'package:gui_paywall/src/context_extensions.dart';
import '../generated/assets.gen.dart';
import '../gui_paywall.dart';
import 'my_localizations.dart';

// Local imports:

int _animationDurationMs = 300;
int _fastAnimationDurationMs = 300;
double _animatedFirstPos = -100;

class PaywallFreeTrial extends StatefulWidget {
  final PaywallConfig paywall;
  final Map<String, dynamic> userComments;
  final Map<String, dynamic> features;
  const PaywallFreeTrial(this.paywall, {super.key, required this.userComments, required this.features});

  @override
  State<PaywallFreeTrial> createState() => _PaywallFreeTrialState();
}

class _PaywallFreeTrialState extends State<PaywallFreeTrial> {
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
          Positioned.fill(child: PaywallAssets.freeTrial.background.image(fit: BoxFit.fill)),
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
            bottom: MediaQuery.of(context).viewInsets.bottom,
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
        child: Text(
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
          Text(
            context.localizations.exclusiveFeatures,
            style: const TextStyle(color: Colors.white, fontSize: 18),
            textAlign: TextAlign.start,
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          premiumPropertyListTile(image: PaywallAssets.freeTrial.premiumDownloadIcon.image(), title: context.localizations.unlimitedDownload),
          AnimatedContainer(
            duration: Duration(milliseconds: _animationDurationMs),
            curve: Curves.ease,
            height: !activatePremiumList ? 0 : MediaQuery.of(context).size.height * 0.025,
          ),
          premiumPropertyListTile(image: PaywallAssets.freeTrial.premiumHdIcon.image(), title: context.localizations.hdQuality),
          AnimatedContainer(
            duration: Duration(milliseconds: _animationDurationMs),
            curve: Curves.ease,
            height: !activatePremiumList ? 0 : MediaQuery.of(context).size.height * 0.025,
          ),
          premiumPropertyListTile(image: PaywallAssets.freeTrial.premiumNoAddsIcon.image(), title: context.localizations.adFree),
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
      Text(title, style: const TextStyle(color: Colors.white, fontSize: 18)),
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
              image: DecorationImage(image: PaywallAssets.freeTrial.aotd.provider(), fit: BoxFit.contain),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(image: PaywallAssets.freeTrial.rating.provider(), fit: BoxFit.cover),
                ),
                height: MediaQuery.of(context).size.height * 0.016,
                width: MediaQuery.of(context).size.width * 0.2,
              ),
              const SizedBox(width: 5),
              Text("$starCount ($totalDownload)", style: const TextStyle(color: Colors.white, fontSize: 12)),
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
                  Text(name, style: const TextStyle(color: Colors.white)),
                ],
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [...List<Widget>.filled(5, Icon(Icons.star, color: Colors.amber, size: MediaQuery.of(context).size.width * 0.05))],
              ),
            ],
          ),
          Text(
            title,
            style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0, top: 4),
            child: Text(
              comment,
              maxLines: 4,
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
          child: Text(
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
                child: Text(
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
      height: MediaQuery.of(context).size.height * 0.05,
      child: Stack(
        children: [
          AnimatedPositioned(
            duration: Duration(milliseconds: _fastAnimationDurationMs),
            curve: Curves.easeIn,
            left: !activateTitles ? MediaQuery.of(context).size.width - _animatedFirstPos : MediaQuery.of(context).size.width * 0,
            child: Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.85,
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  maxLines: 3,
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
        PaywallAssets.freeTrial.propertyCheckIcon.image(),
        context.localizations.freeTrialProperty1Big,
        context.localizations.freeTrialProperty1Small,
        0,
      ),
      getPropertyListTile(
        PaywallAssets.freeTrial.propertyLockIcon.image(),
        context.localizations.freeTrialProperty2Big,
        context.localizations.freeTrialProperty2Small,
        1,
      ),
      getPropertyListTile(
        PaywallAssets.freeTrial.propertyNotificationIcon.image(),
        context.localizations.freeTrialProperty3Big,
        context.localizations.freeTrialProperty3Small,
        2,
      ),
      getPropertyListTile(
        PaywallAssets.freeTrial.propertyPremiumIcon.image(),
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
                        child: Text(bigTitle, style: const TextStyle(fontSize: 18, color: Colors.white)),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height * 0.005),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: Text(smallTitle, maxLines: 2, style: TextStyle(fontSize: 12, color: Colors.white.withValues(alpha: 0.7))),
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
          child: Text(
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
                    child: Text(
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
