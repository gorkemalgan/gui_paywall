# gui_paywall

Dedicated paywall and monetization UI templates for Flutter applications with multiple design variants and conversion-optimized layouts.

## Features

- **Multiple Paywall Templates**: Choose from different pre-built paywall designs
- **Localization Support**: Built-in support for multiple languages
- **Customizable**: Configure products, actions, and UI elements
- **Platform Independent**: Works with any in-app purchase implementation
- **Analytics Ready**: Built-in analytics event tracking

## Getting Started

### Installation

Add `gui_paywall` to your `pubspec.yaml`:

```yaml
dependencies:
  gui_paywall:
    path: ../packages_gui/gui_paywall # or git/pub.dev reference
```

### Basic Usage

1. **Define your products:**

```dart
final products = [
  PaywallProduct(
    id: 'monthly',
    storeId: 'com.example.monthly',
    price: 9.99,
    currency: '\$',
    priceString: '\$9.99',
    period: ProductPeriod.monthly,
    freeTrialDays: 7,
  ),
  PaywallProduct(
    id: 'yearly',
    storeId: 'com.example.yearly',
    price: 49.99,
    currency: '\$',
    priceString: '\$49.99',
    period: ProductPeriod.yearly,
  ),
];
```

2. **Create a configuration:**

```dart
final config = PaywallConfig(
  products: products,
  onPurchase: (product) async {
    // Your purchase implementation
    return await purchaseService.purchase(product.storeId);
  },
  onAnalyticsEvent: (event, params) {
    // Your analytics implementation
    analytics.logEvent(event, params);
  },
  onLog: (message, {level}) {
    // Your logging implementation
    logger.log(level ?? 'info', message);
  },
);
```

3. **Show the paywall:**

```dart
Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => PaywallScreen(
      config: config,
      type: PaywallType.freeTrial,
    ),
  ),
);
```

## Paywall Types

- `PaywallType.freeTrial` - Emphasizes free trial with feature showcase
- `PaywallType.paywall3` - Premium design with video background

## Customization

### Assets

Place your paywall assets in your app's assets folder and configure the path:

```dart
PaywallConfig(
  // ...
  assetPath: 'assets/custom_paywall',
)
```

### Localization

The package includes built-in localizations. To use them:

1. Add the localization delegates to your app:

```dart
MaterialApp(
  localizationsDelegates: [
    PaywallLocalizations.delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
  ],
  supportedLocales: [
    const Locale('en', ''),
    // Add more locales as needed
  ],
)
```

2. Create custom translations by adding `.arb` files in your app

## Advanced Features

### Notifications

Enable trial reminder notifications:

```dart
PaywallConfig(
  enableNotifications: true,
  onScheduleNotification: (config) async {
    await notificationService.schedule(
      config.title,
      config.body,
      config.waitDuration,
    );
  },
)
```

### Custom UI Processing

Show loading indicators during purchases:

```dart
PaywallConfig(
  processUI: <T>(action) async {
    showLoadingDialog();
    try {
      return await action();
    } finally {
      hideLoadingDialog();
    }
  },
)
```

## License

See the main project license.