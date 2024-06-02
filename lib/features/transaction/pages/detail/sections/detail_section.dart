part of "../detail_page.dart";

class _DetailSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(Dimens.defaultSize + 10),
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.black[200]!),
              borderRadius: BorderRadius.circular(Dimens.dp10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RegularText.semiBold(
                  "Pesanan",
                  style: TextStyle(
                      color: AppColors.black[800]!, fontSize: Dimens.dp20),
                ),
                Dimens.dp10.height,
                const Divider(
                  thickness: 1,
                ),
                _listItem(),
                DottedDivider(
                  color: AppColors.white[500]!,
                ),
                Dimens.dp10.height,
                _spaceBeetweenText("Jumlah Pesanan", "Rp 20.000"),
                _spaceBeetweenText("Subtotal", "Rp 20.000"),
                _spaceBeetweenText("Pajak", "Rp 0"),
                _spaceBeetweenText("Diskon", "Rp 0"),
                _spaceBeetweenText("Total", "Rp 20.000"),
                Dimens.dp10.height,
                DottedDivider(
                  color: AppColors.white[500]!,
                ),
                Dimens.dp10.height,
                _spaceBeetweenText("Dibayar", "Rp 50.000"),
                _spaceBeetweenText("Kembalian", "Rp 0"),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Padding _spaceBeetweenText(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: Dimens.dp6, top: Dimens.dp6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RegularText(
            label,
            style: TextStyle(
                color: AppColors.black[800]!, fontSize: Dimens.defaultSize),
          ),
          RegularText.semiBold(
            value,
            style:
                TextStyle(color: AppColors.black[800]!, fontSize: Dimens.dp16),
          ),
        ],
      ),
    );
  }

  ListTile _listItem() {
    return ListTile(
      contentPadding: const EdgeInsets.only(bottom: Dimens.defaultSize),
      title: RegularText.semiBold(
        "Bakso",
        style: TextStyle(color: AppColors.black[800]!, fontSize: Dimens.dp20),
      ),
      subtitle: RegularText(
        "Rp 10.000",
        style: TextStyle(color: AppColors.black[800]!, fontSize: Dimens.dp18),
      ),
      trailing: RegularText.semiBold(
        "2x",
        style: TextStyle(color: AppColors.black[800]!, fontSize: Dimens.dp16),
      ),
    );
  }
}
