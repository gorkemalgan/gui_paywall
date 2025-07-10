/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

// Flutter imports:
import 'package:flutter/widgets.dart';

class $AssetsFreeTrialGen {
  const $AssetsFreeTrialGen();

  /// File path: assets/free_trial/AOTD.png
  AssetGenImage get aotd => const AssetGenImage('assets/free_trial/AOTD.png');

  /// File path: assets/free_trial/background.jpg
  AssetGenImage get background => const AssetGenImage('assets/free_trial/background.jpg');

  /// File path: assets/free_trial/premium_download_icon.png
  AssetGenImage get premiumDownloadIcon => const AssetGenImage('assets/free_trial/premium_download_icon.png');

  /// File path: assets/free_trial/premium_hd_icon.png
  AssetGenImage get premiumHdIcon => const AssetGenImage('assets/free_trial/premium_hd_icon.png');

  /// File path: assets/free_trial/premium_no_adds_icon.png
  AssetGenImage get premiumNoAddsIcon => const AssetGenImage('assets/free_trial/premium_no_adds_icon.png');

  /// File path: assets/free_trial/property_check_icon.png
  AssetGenImage get propertyCheckIcon => const AssetGenImage('assets/free_trial/property_check_icon.png');

  /// File path: assets/free_trial/property_lock_icon.png
  AssetGenImage get propertyLockIcon => const AssetGenImage('assets/free_trial/property_lock_icon.png');

  /// File path: assets/free_trial/property_notification_icon.png
  AssetGenImage get propertyNotificationIcon => const AssetGenImage('assets/free_trial/property_notification_icon.png');

  /// File path: assets/free_trial/property_premium_icon.png
  AssetGenImage get propertyPremiumIcon => const AssetGenImage('assets/free_trial/property_premium_icon.png');

  /// File path: assets/free_trial/rating.png
  AssetGenImage get rating => const AssetGenImage('assets/free_trial/rating.png');

  /// List of all assets
  List<AssetGenImage> get values => [
    aotd,
    background,
    premiumDownloadIcon,
    premiumHdIcon,
    premiumNoAddsIcon,
    propertyCheckIcon,
    propertyLockIcon,
    propertyNotificationIcon,
    propertyPremiumIcon,
    rating,
  ];
}

class PaywallAssets {
  const PaywallAssets._();

  static const String package = 'gui_paywall';

  static const $AssetsFreeTrialGen freeTrial = $AssetsFreeTrialGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName, {this.size, this.flavors = const {}});

  final String _assetName;

  static const String package = 'gui_paywall';

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    @Deprecated('Do not specify package for a generated library asset') String? package = package,
    FilterQuality filterQuality = FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({AssetBundle? bundle, @Deprecated('Do not specify package for a generated library asset') String? package = package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => 'packages/gui_paywall/$_assetName';
}
