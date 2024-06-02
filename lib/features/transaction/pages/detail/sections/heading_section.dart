part of "../detail_page.dart";

class _HeadingSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RegularText.medium(
          "# TRX-123-1201020",
          style: const TextStyle(fontSize: Dimens.dp20, color: AppColors.black),
        ),
        Dimens.dp8.height,
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: Dimens.dp12,
            vertical: Dimens.dp4,
          ),
          decoration: BoxDecoration(
            color: AppColors.yellow,
            borderRadius: BorderRadius.circular(Dimens.dp100),
          ),
          child: IntrinsicWidth(
            child: Row(
              children: [
                ClipOval(
                  child: Container(
                    color: AppColors.yellow[800],
                    height: 10,
                    width: 10,
                  ),
                ),
                Dimens.dp10.width,
                const RegularText(
                  "Tunai",
                  style: TextStyle(
                    fontSize: Dimens.dp12,
                    color: AppColors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
        Dimens.dp8.height,
        RegularText(DateTime.now().toDateTransaction),
      ],
    );
  }
}
