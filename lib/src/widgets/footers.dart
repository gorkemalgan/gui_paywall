// Flutter imports:
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

// Project imports:
import '../extensions.dart';
import '../models/paywall_config.dart';

/// A footer widget with payment agreement, restore button, and legal links
class PaywallFullFooter extends StatelessWidget {
  const PaywallFullFooter({
    super.key,
    required this.paywallConfig,
    this.isFreeTrial = false,
    this.isLoading = false,
    this.textAlign = TextAlign.center,
    this.padding = const EdgeInsets.only(top: 16.0, left: 20, right: 20, bottom: 16.0),
  });

  /// The paywall configuration containing callbacks
  final PaywallConfig paywallConfig;

  /// Whether to show free trial agreement text instead of standard payment agreement
  final bool isFreeTrial;

  /// Whether the restore is in progress
  final bool isLoading;

  /// Text alignment for the footer text
  final TextAlign textAlign;

  /// Padding around the footer content
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;
    final l10n = context.localizations;

    return Padding(
      padding: padding,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Links row with Terms, Privacy, and Restore
          RichText(
            textAlign: textAlign,
            text: TextSpan(
              style: textTheme.bodySmall?.copyWith(color: Colors.grey.withAlpha(179), decoration: TextDecoration.underline),
              children: [
                TextSpan(
                  text: l10n.termsOfUse,
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      paywallConfig.logEvent('terms_of_use_clicked', parameters: {'paywall': paywallConfig.name});
                      paywallConfig.onTermsOfUse();
                    },
                ),
                const TextSpan(text: '    •    '),
                TextSpan(
                  text: l10n.privacyPolicy,
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      paywallConfig.logEvent('privacy_policy_clicked', parameters: {'paywall': paywallConfig.name});
                      paywallConfig.onPrivacyPolicy();
                    },
                ),
                const TextSpan(text: '    •    '),
                TextSpan(
                  text: l10n.restore,

                  recognizer: isLoading
                      ? null
                      : (TapGestureRecognizer()
                          ..onTap = () {
                            paywallConfig.logEvent('restore_clicked', parameters: {'paywall': paywallConfig.name});
                            paywallConfig.onRestore();
                          }),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          // Payment agreement text
          Text(
            isFreeTrial ? l10n.paymentAgreementFreeTrial : l10n.paymentAgreement,
            style: textTheme.labelSmall?.copyWith(color: Colors.grey.withAlpha(179), height: 1.3),
            textAlign: textAlign,
          ),
        ],
      ),
    );
  }
}
