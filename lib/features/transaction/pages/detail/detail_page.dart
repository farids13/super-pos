import 'package:flutter/material.dart';
import 'package:kasirsuper/core/core.dart';
import 'package:kasirsuper/core/preferences/dimens.dart';

part "sections/detail_section.dart";
part "sections/button_section.dart";
part "sections/heading_section.dart";

class DetailTransaction extends StatefulWidget {
  const DetailTransaction({super.key});

  static const routeName = '/transaction/detail';

  @override
  State<DetailTransaction> createState() => _DetailTransactionState();
}

class _DetailTransactionState extends State<DetailTransaction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: RegularText.medium("Detail Transaction"),
        elevation: 4,
      ),
      body: Padding(
        padding: const EdgeInsets.all(Dimens.defaultSize + 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _HeadingSection(),
            Dimens.defaultSize.height,
            _ButtonSection(),
            Dimens.dp40.height,
            _DetailSection()
          ],
        ),
      ),
    );
  }
}
