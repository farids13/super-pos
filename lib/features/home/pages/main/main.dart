import 'package:flutter/material.dart';
import 'package:kasirsuper/core/components/components.dart';
import 'package:kasirsuper/core/components/text/header_text.dart';
import 'package:kasirsuper/core/core.dart';

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
          style: const TextStyle(fontSize: MyDimens.dp20),
        ),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(MyDimens.defaultSize),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _CardWidget(
              title: 'test',
              value: '123',
            )
          ],
        ),
      ),
    );
  }
}

class _CardWidget extends StatelessWidget {
  final String title;
  final String value;
  const _CardWidget({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(MyDimens.dp24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RegularText(
              title,
              style: const TextStyle(fontSize: MyDimens.dp14),
            ),
            MyDimens.dp4.height,
            const HeadingText("Rp 5.000.000.000"),
            MyDimens.dp4.height,
            RegularText(
              "Lihat Detail",
              style: TextStyle(
                fontSize: MyDimens.dp14,
                color: context.theme.primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
