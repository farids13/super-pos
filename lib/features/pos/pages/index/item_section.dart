part of "pos_page.dart";

class _ItemSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(Dimens.dp8),
          child: Image.network(
            'https://indonesiakaya.com/wp-content/uploads/2020/10/langsat1200.jpg',
            width: Dimens.dp100,
            height: Dimens.dp100,
            fit: BoxFit.cover,
          ),
        ),
        Dimens.dp16.width,
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RegularText.semiBold("SP XL 28 GB",
                  style: const TextStyle(fontSize: Dimens.dp18)),
              Dimens.dp8.height,
              const RegularText("Rp 12.000",
                  style: TextStyle(fontSize: Dimens.dp16)),
              Dimens.dp6.height,
              _cartProductButton()
            ],
          ),
        ),
      ],
    );
  }

  Row _cartProductButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const BorderButton(
          paddingHorizontal: Dimens.dp12,
          paddingVertical: Dimens.dp8,
          "-",
        ),
        Dimens.defaultSize.width,
        RegularText.semiBold("1"),
        Dimens.defaultSize.width,
        const BorderButton(
          "+",
          isSolid: true,
          paddingHorizontal: Dimens.dp12,
          paddingVertical: Dimens.dp8,
        ),
        Dimens.defaultSize.width,
      ],
    );
  }
}
