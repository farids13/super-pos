import 'package:flutter/material.dart';
import 'package:kasirsuper/core/core.dart';

part 'section/cart_widget.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/home';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: RegularText.medium(
          'Beranda',
          style: const TextStyle(fontSize: Dimens.dp20),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(Dimens.defaultSize),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const _CardWidget(
              title: 'Total Penjualan',
              value: 'Rp 5.000.000',
            ),
            Dimens.defaultSize.height,
            const _CardWidget(
              title: 'Total Transaksi',
              value: '20',
            ),
            Dimens.defaultSize.height,
            const _CardWidget(
              title: 'Total Produk',
              value: '123',
            )
          ],
        ),
      ),
    );
  }
}
