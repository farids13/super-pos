import 'package:flutter/material.dart';
import 'package:kasirsuper/core/core.dart';

class BorderButton extends StatelessWidget {
  final String label;
  final bool? isOutline;
  final Function()? onTap;
  final double? width;
  final double? height;
  final TextAlign? textAlign;
  final Color? textColor;
  final TextStyle? style;
  final IconData? prefixIcon;
  final SizedBox? prefixIconDimens;
  final IconData? suffixIcon;
  final SizedBox? suffixIconDimens;
  final MainAxisAlignment? mainAxisAlignment;
  final BoxDecoration? decoration;
  const BorderButton(
    this.label, {
    super.key,
    this.isOutline,
    this.onTap,
    this.width,
    this.height,
    this.textAlign,
    this.textColor,
    this.style,
    this.prefixIcon,
    this.suffixIcon,
    this.mainAxisAlignment,
    this.prefixIconDimens,
    this.suffixIconDimens,
    this.decoration,
  });

  @override
  Widget build(BuildContext context) {
    final decor = decoration ?? const BoxDecoration();
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        padding: const EdgeInsets.symmetric(
          horizontal: Dimens.dp16,
          vertical: Dimens.dp8,
        ),
        decoration: decor.copyWith(
          borderRadius: BorderRadius.circular(Dimens.dp8),
          color: isOutline != null ? context.theme.primaryColor : null,
          border: Border.all(color: context.theme.primaryColor),
        ),
        child: Row(
          mainAxisAlignment:
              mainAxisAlignment ?? MainAxisAlignment.spaceBetween,
          children: [
            if (prefixIcon != null)
              Icon(
                prefixIcon,
                color: isOutline != null
                    ? context.theme.scaffoldBackgroundColor
                    : textColor ?? AppColors.black[200],
              ),
            prefixIconDimens ?? Dimens.dp10.width,
            RegularText.semiBold(
              label,
              textAlign: textAlign,
              style: TextStyle(
                fontSize: Dimens.dp12,
                color: isOutline != null
                    ? context.theme.scaffoldBackgroundColor
                    : textColor ?? AppColors.black[200],
              ).merge(style),
            ),
            suffixIconDimens ?? const SizedBox(),
            if (suffixIcon != null) Icon(suffixIcon),
          ],
        ),
      ),
    );
  }
}
