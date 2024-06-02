import 'package:flutter/material.dart';
import 'package:kasirsuper/core/core.dart';

class RegularInput extends StatelessWidget {
  final String hintText;
  final IconData? prefixIcon;
  final TextEditingController? controller;
  const RegularInput(
    this.hintText, {
    super.key,
    this.prefixIcon,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: prefixIcon != null
            ? Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: Dimens.defaultSize),
                child: Icon(prefixIcon),
              )
            : null,
        fillColor: AppColors.white[400]!,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: Dimens.defaultSize),
      ),
    );
  }
}
