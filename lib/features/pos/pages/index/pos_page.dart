import 'package:flutter/material.dart';
import 'package:kasirsuper/core/core.dart';
import 'package:kasirsuper/core/preferences/dimens.dart';
import 'package:kasirsuper/core/preferences/preferences.dart';

part "section/floating_button_section.dart";

class PosPage extends StatefulWidget {
  const PosPage({super.key});

  @override
  State<PosPage> createState() => _PosPageState();
}

class _PosPageState extends State<PosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: RegularText.medium("POS"),
        elevation: 4,
      ),
      body: Padding(
        padding: const EdgeInsets.all(Dimens.defaultSize),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const RegularInput(
              "Search ...",
              prefixIcon: AppIcons.search,
            ),
            EmptyTemplate(),
            Dimens.defaultSize.height,
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: _FloatingButtonSection(),
    );
  }
}
