import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:kasirsuper/core/core.dart';

class BorderButton extends StatelessWidget {
  final String label;
  final bool? isSolid;
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
  final double? paddingHorizontal;
  final double? paddingVertical;
  const BorderButton(
    this.label, {
    super.key,
    this.isSolid,
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
    this.paddingHorizontal,
    this.paddingVertical,
  });

  @override
  Widget build(BuildContext context) {
    final decor = decoration ?? const BoxDecoration();
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        padding: EdgeInsets.symmetric(
          horizontal: paddingHorizontal ?? Dimens.dp16,
          vertical: paddingVertical ?? Dimens.dp8,
        ),
        decoration: decor.copyWith(
          borderRadius: BorderRadius.circular(Dimens.dp8),
          color: isSolid != null ? context.theme.primaryColor : null,
          border: Border.all(color: context.theme.primaryColor),
        ),
        child: Row(
          mainAxisAlignment:
              mainAxisAlignment ?? MainAxisAlignment.spaceBetween,
          children: [
            if (prefixIcon != null)
              Icon(
                prefixIcon,
                color: isSolid != null
                    ? context.theme.scaffoldBackgroundColor
                    : textColor ?? AppColors.black[200],
              ),
            prefixIconDimens ?? const SizedBox(),
            RegularText.semiBold(
              label,
              textAlign: textAlign,
              style: TextStyle(
                fontSize: Dimens.dp12,
                color: isSolid != null
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
