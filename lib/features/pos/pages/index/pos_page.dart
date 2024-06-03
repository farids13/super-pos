import 'package:flutter/material.dart';
import 'package:kasirsuper/core/core.dart';

part "item_section.dart";
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
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(Dimens.defaultSize),
            child: RegularInput(
              "Search ...",
              prefixIcon: AppIcons.search,
            ),
          ),
          Expanded(
            child: Builder(builder: (context) {
              if (false) return EmptyTemplate();
              return ListView.separated(
                  padding: const EdgeInsets.all(Dimens.defaultSize),
                  itemBuilder: (context, index) {
                    return _ItemSection();
                  },
                  itemCount: 10,
                  separatorBuilder: (context, index) => Dimens.dp16.height);
            }),
          ),
          Dimens.defaultSize.height,
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: _FloatingButtonSection(),
    );
  }
}
