// Dart imports:
import 'dart:async';

// Flutter imports:
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

// Package imports:
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

// Project imports:
import 'messages_ar.dart';
import 'messages_ca.dart';
import 'messages_cs.dart';
import 'messages_da.dart';
import 'messages_de.dart';
import 'messages_el.dart';
import 'messages_en.dart';
import 'messages_es.dart';
import 'messages_fi.dart';
import 'messages_fr.dart';
import 'messages_he.dart';
import 'messages_hi.dart';
import 'messages_hr.dart';
import 'messages_hu.dart';
import 'messages_id.dart';
import 'messages_it.dart';
import 'messages_ja.dart';
import 'messages_ko.dart';
import 'messages_ms.dart';
import 'messages_nl.dart';
import 'messages_no.dart';
import 'messages_pl.dart';
import 'messages_pt.dart';
import 'messages_ro.dart';
import 'messages_ru.dart';
import 'messages_sk.dart';
import 'messages_sv.dart';
import 'messages_th.dart';
import 'messages_tr.dart';
import 'messages_uk.dart';
import 'messages_vi.dart';
import 'messages_zh.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of PaywallLocalizations
/// returned by `PaywallLocalizations.of(context)`.
///
/// Applications need to include `PaywallLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'intl/messages.dart';
///
/// return MaterialApp(
///   localizationsDelegates: PaywallLocalizations.localizationsDelegates,
///   supportedLocales: PaywallLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the PaywallLocalizations.supportedLocales
/// property.
abstract class PaywallLocalizations {
  PaywallLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static PaywallLocalizations? of(BuildContext context) {
    return Localizations.of<PaywallLocalizations>(context, PaywallLocalizations);
  }

  static const LocalizationsDelegate<PaywallLocalizations> delegate = _PaywallLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('ca'),
    Locale('cs'),
    Locale('da'),
    Locale('de'),
    Locale('el'),
    Locale('en'),
    Locale('es'),
    Locale('fi'),
    Locale('fr'),
    Locale('he'),
    Locale('hi'),
    Locale('hr'),
    Locale('hu'),
    Locale('id'),
    Locale('it'),
    Locale('ja'),
    Locale('ko'),
    Locale('ms'),
    Locale('nl'),
    Locale('no'),
    Locale('pl'),
    Locale('pt'),
    Locale('ro'),
    Locale('ru'),
    Locale('sk'),
    Locale('sv'),
    Locale('th'),
    Locale('tr'),
    Locale('uk'),
    Locale('vi'),
    Locale('zh'),
    Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hans'),
    Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hant'),
  ];

  ///
  ///
  /// In en, this message translates to:
  /// **'Ad Free'**
  String get adFree;

  ///
  ///
  /// In en, this message translates to:
  /// **'App Overview'**
  String get appOverview;

  /// product name for premium version
  ///
  /// In en, this message translates to:
  /// **'{appName} Pro'**
  String appPro(String appName);

  ///
  ///
  /// In en, this message translates to:
  /// **'BEST OFFER'**
  String get bestOffer;

  ///
  ///
  /// In en, this message translates to:
  /// **'Cancel at any time'**
  String get cancelAtAnyTime;

  /// Title for plan selection screen
  ///
  /// In en, this message translates to:
  /// **'Choose Your Plan'**
  String get chooseYourPlan;

  ///
  ///
  /// In en, this message translates to:
  /// **'You will pay {price} after {freeTrialDay} days {invoiceDuration} until it cancel'**
  String chargingInfoFreeTrial(String price, String freeTrialDay, String invoiceDuration);

  ///
  ///
  /// In en, this message translates to:
  /// **'Pay {price} once for lifetime access. No extra charges or subscriptions.'**
  String chargingInfoLifeTime(String price);

  ///
  ///
  /// In en, this message translates to:
  /// **'Auto-renews for {price} {invoiceDuration} until cancelled'**
  String chargingInfoStandart(String price, String invoiceDuration);

  /// Continue button text
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continueBtn;

  /// Text to enable free trial
  ///
  /// In en, this message translates to:
  /// **'Enable Free Trial'**
  String get enableFreeTrial;

  ///
  ///
  /// In en, this message translates to:
  /// **'Exclusive Features'**
  String get exclusiveFeatures;

  /// free price label
  ///
  /// In en, this message translates to:
  /// **'Free'**
  String get free;

  ///
  ///
  /// In en, this message translates to:
  /// **'{numDays} days FREE'**
  String freeTrialDaysFree(String numDays);

  ///
  ///
  /// In en, this message translates to:
  /// **'Enhance your creativity and get unlimited access with a premium membership'**
  String get freeTrialDesc;

  /// free trial price information
  ///
  /// In en, this message translates to:
  /// **'Free {freeTrialDays} days then {priceString}/{periodInvoiceStr}'**
  String freeTrialPriceInfoText(String freeTrialDays, String priceString, String periodInvoiceStr);

  ///
  ///
  /// In en, this message translates to:
  /// **'Use Your Free Trial Period'**
  String get freeTrialProperty1Big;

  ///
  ///
  /// In en, this message translates to:
  /// **'Easily activate with one click'**
  String get freeTrialProperty1Small;

  ///
  ///
  /// In en, this message translates to:
  /// **'Today: Instantly unlock all features'**
  String get freeTrialProperty2Big;

  ///
  ///
  /// In en, this message translates to:
  /// **'Access all features now'**
  String get freeTrialProperty2Small;

  ///
  ///
  /// In en, this message translates to:
  /// **'Reminder end of trial'**
  String get freeTrialProperty3Big;

  ///
  ///
  /// In en, this message translates to:
  /// **'We will send you a notification when your trial ends'**
  String get freeTrialProperty3Small;

  ///
  ///
  /// In en, this message translates to:
  /// **'Enjoy unlimited downloads'**
  String get freeTrialProperty4Big;

  ///
  ///
  /// In en, this message translates to:
  /// **'Easy to use and customize'**
  String get freeTrialProperty4Small;

  ///
  ///
  /// In en, this message translates to:
  /// **'Remind me before the free trial expires'**
  String get freeTrialReminder;

  /// subtitle for premium features
  ///
  /// In en, this message translates to:
  /// **'Get unlimited access to all features!'**
  String get getUnlimitedAccess;

  ///
  ///
  /// In en, this message translates to:
  /// **'HD Quality'**
  String get hdQuality;

  /// lifetime subscription period
  ///
  /// In en, this message translates to:
  /// **'Lifetime'**
  String get lifetime;

  /// monthly subscription period
  ///
  /// In en, this message translates to:
  /// **'Monthly'**
  String get monthly;

  /// Asks user if he is not sure to but subscription yet
  ///
  /// In en, this message translates to:
  /// **'Not Sure Yet?'**
  String get notSureYet;

  /// Text showing free trial duration in weeks
  ///
  /// In en, this message translates to:
  /// **'{weeks, plural, =1{1 week free trial} other{{weeks} weeks free trial}}'**
  String weekFreeTrial(int weeks);

  /// Link to see other subscription plans
  ///
  /// In en, this message translates to:
  /// **'Other plans'**
  String get otherPlans;

  /// per week suffix for pricing
  ///
  /// In en, this message translates to:
  /// **' / week'**
  String get perWeek;

  /// discount percentage badge
  ///
  /// In en, this message translates to:
  /// **'{percent}% OFF'**
  String percentOff(int percent);

  /// to show popular options
  ///
  /// In en, this message translates to:
  /// **'Popular'**
  String get popular;

  /// Button to restore previous purchases
  ///
  /// In en, this message translates to:
  /// **'Restore Purchases'**
  String get restorePurchases;

  /// to save the image
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// to see all options
  ///
  /// In en, this message translates to:
  /// **'See All Options'**
  String get seeAllOptions;

  /// button to see more subscription options
  ///
  /// In en, this message translates to:
  /// **'See other options'**
  String get seeOtherOptions;

  ///
  ///
  /// In en, this message translates to:
  /// **'SHORT TERM'**
  String get shortTerm;

  /// to start free trial for premium subscription
  ///
  /// In en, this message translates to:
  /// **'Start Free Trial'**
  String get startFreeTrial;

  /// Price per week after free trial
  ///
  /// In en, this message translates to:
  /// **'then \${price}/week'**
  String thenPerWeek(String price);

  /// trial option with number of days
  ///
  /// In en, this message translates to:
  /// **'{days} Day Trial'**
  String trialDays(int days);

  ///
  ///
  /// In en, this message translates to:
  /// **'Unlimited Download'**
  String get unlimitedDownload;

  /// Subtitle for plan selection
  ///
  /// In en, this message translates to:
  /// **'Unlock Full Power'**
  String get unlockFullPower;

  ///
  ///
  /// In en, this message translates to:
  /// **'Upgrade now!'**
  String get upgradeNow;

  ///
  ///
  /// In en, this message translates to:
  /// **'User Reviews'**
  String get userReviews;

  /// week as a time unit
  ///
  /// In en, this message translates to:
  /// **'Week'**
  String get week;

  /// weekly subscription period
  ///
  /// In en, this message translates to:
  /// **'Weekly'**
  String get weekly;

  /// yearly subscription period
  ///
  /// In en, this message translates to:
  /// **'Yearly'**
  String get yearly;

  /// Yearly price display
  ///
  /// In en, this message translates to:
  /// **'\${price}/year'**
  String yearlyPrice(String price);
}

class _PaywallLocalizationsDelegate extends LocalizationsDelegate<PaywallLocalizations> {
  const _PaywallLocalizationsDelegate();

  @override
  Future<PaywallLocalizations> load(Locale locale) {
    return SynchronousFuture<PaywallLocalizations>(lookupPaywallLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
    'ar',
    'ca',
    'cs',
    'da',
    'de',
    'el',
    'en',
    'es',
    'fi',
    'fr',
    'he',
    'hi',
    'hr',
    'hu',
    'id',
    'it',
    'ja',
    'ko',
    'ms',
    'nl',
    'no',
    'pl',
    'pt',
    'ro',
    'ru',
    'sk',
    'sv',
    'th',
    'tr',
    'uk',
    'vi',
    'zh',
  ].contains(locale.languageCode);

  @override
  bool shouldReload(_PaywallLocalizationsDelegate old) => false;
}

PaywallLocalizations lookupPaywallLocalizations(Locale locale) {
  // Lookup logic when language+script codes are specified.
  switch (locale.languageCode) {
    case 'zh':
      {
        switch (locale.scriptCode) {
          case 'Hans':
            return PaywallLocalizationsZhHans();
          case 'Hant':
            return PaywallLocalizationsZhHant();
        }
        break;
      }
  }

  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return PaywallLocalizationsAr();
    case 'ca':
      return PaywallLocalizationsCa();
    case 'cs':
      return PaywallLocalizationsCs();
    case 'da':
      return PaywallLocalizationsDa();
    case 'de':
      return PaywallLocalizationsDe();
    case 'el':
      return PaywallLocalizationsEl();
    case 'en':
      return PaywallLocalizationsEn();
    case 'es':
      return PaywallLocalizationsEs();
    case 'fi':
      return PaywallLocalizationsFi();
    case 'fr':
      return PaywallLocalizationsFr();
    case 'he':
      return PaywallLocalizationsHe();
    case 'hi':
      return PaywallLocalizationsHi();
    case 'hr':
      return PaywallLocalizationsHr();
    case 'hu':
      return PaywallLocalizationsHu();
    case 'id':
      return PaywallLocalizationsId();
    case 'it':
      return PaywallLocalizationsIt();
    case 'ja':
      return PaywallLocalizationsJa();
    case 'ko':
      return PaywallLocalizationsKo();
    case 'ms':
      return PaywallLocalizationsMs();
    case 'nl':
      return PaywallLocalizationsNl();
    case 'no':
      return PaywallLocalizationsNo();
    case 'pl':
      return PaywallLocalizationsPl();
    case 'pt':
      return PaywallLocalizationsPt();
    case 'ro':
      return PaywallLocalizationsRo();
    case 'ru':
      return PaywallLocalizationsRu();
    case 'sk':
      return PaywallLocalizationsSk();
    case 'sv':
      return PaywallLocalizationsSv();
    case 'th':
      return PaywallLocalizationsTh();
    case 'tr':
      return PaywallLocalizationsTr();
    case 'uk':
      return PaywallLocalizationsUk();
    case 'vi':
      return PaywallLocalizationsVi();
    case 'zh':
      return PaywallLocalizationsZh();
  }

  throw FlutterError(
    'PaywallLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
