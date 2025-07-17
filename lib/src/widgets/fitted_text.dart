// Flutter imports:
import 'package:flutter/material.dart';

class FittedText extends StatelessWidget {
  final String text;
  final double minFontSize;
  final int? maxLines;
  final double maxFontSize;
  final TextStyle? style;
  final TextAlign textAlign;
  final TextOverflow? overflow;
  final bool? softWrap;

  const FittedText(
    this.text, {
    this.maxFontSize = double.infinity,
    this.textAlign = TextAlign.center,
    this.minFontSize = 1,
    this.maxLines,
    this.overflow,
    this.softWrap,
    this.style,
  });

  @override
  Widget build(BuildContext context) => LayoutBuilder(
    builder: (context, constraints) {
      final baseStyle = style ?? const TextStyle();
      final baseFontSize = baseStyle.fontSize ?? 14.0;
      final effectiveMaxFontSize = maxFontSize == double.infinity ? baseFontSize : maxFontSize;

      double fontSize = effectiveMaxFontSize;

      while (fontSize >= minFontSize) {
        final testStyle = baseStyle.copyWith(fontSize: fontSize);
        final textPainter = TextPainter(
          text: TextSpan(text: text, style: testStyle),
          maxLines: maxLines,
          textAlign: textAlign,
          textDirection: TextDirection.ltr,
        );

        textPainter.layout(maxWidth: constraints.maxWidth);

        if (textPainter.size.height <= constraints.maxHeight && !textPainter.didExceedMaxLines) {
          break;
        }

        fontSize -= 0.5;
      }

      return Text(
        text,
        style: baseStyle.copyWith(fontSize: fontSize),
        maxLines: maxLines,
        textAlign: textAlign,
        overflow: overflow ?? TextOverflow.ellipsis,
        softWrap: softWrap ?? true,
      );
    },
  );
}
