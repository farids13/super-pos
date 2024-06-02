import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:kasirsuper/core/core.dart';
import 'package:kasirsuper/core/preferences/dimens.dart';

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
      body: const EmptyTemplate(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        margin: const EdgeInsets.all(Dimens.defaultSize),
        padding: const EdgeInsets.all(Dimens.defaultSize),
        child: IntrinsicWidth(
          child: _buttonFloating(context, "Tambah Produk"),
        ),
      ),
    );
  }

  BorderButton _buttonFloating(BuildContext context, String text) {
    return BorderButton(
      text,
      isOutline: false,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: context.theme.primaryColor.withOpacity(0.5),
          blurRadius: 10,
          spreadRadius: 5,
          offset: const Offset(0, 1),
        ),
      ]),
      prefixIcon: Iconsax.add,
      prefixIconDimens: Dimens.dp6.width,
      style: const TextStyle(fontSize: Dimens.defaultSize),
    );
  }
}
