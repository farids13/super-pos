import 'package:flutter/material.dart';
import 'package:kasirsuper/core/preferences/icons.dart';
import 'package:kasirsuper/features/home/home.dart';
import 'package:kasirsuper/features/home/pages/transaction/transaction.dart';

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    const pages = [HomePage(), TransactionPage()];
    const int index = 2;

    return Scaffold(
      body: pages[1],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(AppIcons.storefront),
            label: "Beranda",
          ),
          BottomNavigationBarItem(
            icon: Icon(AppIcons.receipt),
            label: "Transaksi",
          ),
          BottomNavigationBarItem(
            icon: Icon(AppIcons.pos),
            label: "POS",
          ),
          BottomNavigationBarItem(
            icon: Icon(AppIcons.product),
            label: "Produk",
          ),
          BottomNavigationBarItem(
            icon: Icon(AppIcons.settings),
            label: "Lainnya",
          ),
        ],
      ),
    );
  }
}
