import 'package:flutter/material.dart';
import 'package:kasirsuper/core/preferences/icons.dart';
import 'package:kasirsuper/features/home/home.dart';

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    const pages = [HomePage()];

    return Scaffold(
      body: pages[0],
      bottomNavigationBar: BottomNavigationBar(
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
