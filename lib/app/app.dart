import 'package:flutter/material.dart';
import 'package:kasirsuper/core/core.dart';
import 'package:kasirsuper/features/home/home.dart';
import 'package:kasirsuper/features/settings/pages/splash/page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: MyLightTheme(MyAppColors.green).theme,
      home: const SplashPage(),
      onGenerateRoute: (setting) {
        switch (setting.name) {
          case HomePage.routeName:
            return MaterialPageRoute(builder: (context) => const HomePage());
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
      },
    );
  }
}
