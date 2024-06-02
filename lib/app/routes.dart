import 'package:flutter/material.dart';
import 'package:kasirsuper/core/components/text/reguler_text.dart';
import 'package:kasirsuper/features/home/home.dart';
import 'package:kasirsuper/features/transaction/transaction.dart';

Route<dynamic> routes(RouteSettings setting) {
  switch (setting.name) {
    case HomePage.routeName:
      return MaterialPageRoute(builder: (context) => const Main());
    case DetailTransaction.routeName:
      return MaterialPageRoute(builder: (context) => const DetailTransaction());
    default:
      return MaterialPageRoute(
        builder: (context) => const Scaffold(
          body: Center(
            child: RegularText(
              "Page Not Found",
              textAlign: TextAlign.center,
            ),
          ),
        ),
      );
  }
}
