import 'package:flutter/material.dart';
import 'package:kasirsuper/core/core.dart';

class HeadingText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final TextAlign? align;

  const HeadingText(this.text, {super.key, this.align, this.style});

  @override
  Widget build(BuildContext context) {
    final baseStyle = context.theme.textTheme.headlineLarge;
    return Text(
      text,
      style: baseStyle?.merge(style),
      textAlign: align,
    );
  }
}
