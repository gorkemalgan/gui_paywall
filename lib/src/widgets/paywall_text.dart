// Flutter imports:
import 'package:flutter/material.dart';

/// Simple text widget wrapper to replace MyText
class PaywallText extends StatelessWidget {
  final String data;
  final TextStyle? style;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;

  const PaywallText(this.data, {super.key, this.style, this.textAlign, this.maxLines, this.overflow});

  @override
  Widget build(BuildContext context) => Text(data, style: style, textAlign: textAlign, maxLines: maxLines, overflow: overflow);
}
