part of '../transaction_page.dart';

class _ItemSection extends StatelessWidget {
  const _ItemSection();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, DetailTransaction.routeName);
      },
      child: Padding(
        padding: const EdgeInsets.all(Dimens.dp16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: Dimens.dp12,
                    vertical: Dimens.dp4,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimens.dp4),
                    border: Border.all(color: context.theme.primaryColor),
                  ),
                  child: RegularText.semiBold(
                    "Done",
                    style: TextStyle(
                      fontSize: Dimens.dp10,
                      color: context.theme.primaryColor,
                    ),
                  ),
                ),
                Expanded(
                  child: RegularText.semiBold(
                    DateTime.now().toDateTransaction,
                    style: const TextStyle(fontSize: Dimens.dp10),
                    textAlign: TextAlign.end,
                  ),
                ),
              ],
            ),
            Dimens.dp16.height,
            RegularText.semiBold(
              "Name Product",
            ),
            Dimens.dp8.height,
            RegularText.semiBold(
              "Rp 12.000",
              style: TextStyle(color: context.theme.primaryColor),
            ),
          ],
        ),
      ),
    );
  }
}
