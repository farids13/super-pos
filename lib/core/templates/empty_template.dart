import 'package:flutter/material.dart';
import 'package:kasirsuper/core/core.dart';

class EmptyTemplate extends StatelessWidget {
  final String? title;
  final String? subtitle;
  const EmptyTemplate({super.key, this.title, this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(Dimens.dp16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              MainAssets.empty,
              width: Dimens.width(context) / 2,
            ),
            Dimens.dp32.height,
            SubtitleText(
              title ?? 'There are no products here',
              align: TextAlign.center,
            ),
            Dimens.dp16.height,
            RegularText(
              subtitle ??
                  'You do not have a product in the shop. '
                      'Please add products first to start selling.',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
