import 'package:flutter/material.dart';
import 'package:kasirsuper/core/core.dart';
import 'package:kasirsuper/core/extensions/date_extension.dart';
import 'package:kasirsuper/core/templates/border_button.dart';
import 'package:kasirsuper/core/templates/empty_template.dart';
import 'package:kasirsuper/features/transaction/transaction.dart';

part "section/filter_section.dart";
part "section/item_section.dart";

class TransactionPage extends StatefulWidget {
  const TransactionPage({super.key});

  @override
  State<TransactionPage> createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: RegularText.medium(
            "Transaksi",
          ),
        ),
        body: true
            ? Column(
                children: [
                  _filterSection(),
                  Expanded(
                    child: ListView.builder(
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        return const _ItemSection();
                      },
                    ),
                  ),
                ],
              )
            : const EmptyTemplate(
                title: "Tidak Ada Transaksi",
                subtitle: "Kamu bisa memambahkan transaksi",
              ));
  }
}
