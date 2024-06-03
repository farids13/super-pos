part of "../transaction_page.dart";

class _FilterSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Dimens.defaultSize),
      child: Row(
        children: [
          const BorderButton(
            "Done",
            isSolid: true,
          ),
          Dimens.defaultSize.width,
          const BorderButton("Draft"),
        ],
      ),
    );
  }
}
