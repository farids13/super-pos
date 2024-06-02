import 'package:flutter/material.dart';
import 'package:kasirsuper/core/core.dart';

class BorderButton extends StatelessWidget {
  final String label;
  final bool? isOutline;
  final Function()? onTap;
  const BorderButton(this.label, {super.key, this.isOutline, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: Dimens.dp16,
          vertical: Dimens.dp8,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimens.dp8),
          color: isOutline != null ? context.theme.primaryColor : null,
          border: Border.all(color: context.theme.primaryColor),
        ),
        child: RegularText.semiBold(
          label,
          style: TextStyle(
            fontSize: Dimens.dp12,
            color: isOutline != null
                ? context.theme.scaffoldBackgroundColor
                : AppColors.black[200],
          ),
        ),
      ),
    );
  }
}
