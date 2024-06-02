part of "../transaction_page.dart";

class _filterSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Dimens.defaultSize),
      child: Row(
        children: [
          BorderButton(
            "Done",
            isOutline: true,
          ),
          Dimens.defaultSize.width,
          BorderButton("Draft"),
        ],
      ),
    );
  }
}
