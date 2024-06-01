import 'package:flutter/material.dart';
import 'package:kasirsuper/core/components/text/reguler_text.dart';
import 'package:kasirsuper/features/home/home.dart';

Route<dynamic> routes(RouteSettings setting) {
  switch (setting.name) {
    case HomePage.routeName:
      return MaterialPageRoute(builder: (context) => const Main());
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
