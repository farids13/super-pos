part of "../pos_page.dart";

class _FloatingButtonSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(Dimens.defaultSize),
      padding: const EdgeInsets.all(Dimens.defaultSize),
      child: false
          ? IntrinsicWidth(
              child: _buttonFloating(context, "Tambah Produk", Iconsax.add))
          : Container(
              padding: const EdgeInsets.all(Dimens.defaultSize),
              decoration: BoxDecoration(
                  color: context.theme.primaryColor,
                  borderRadius: BorderRadius.circular(Dimens.defaultSize),
                  boxShadow: [
                    BoxShadow(
                      color: context.theme.primaryColor.withOpacity(0.5),
                      blurRadius: 5,
                      spreadRadius: 2,
                      offset: const Offset(0, 2),
                    ),
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    AppIcons.shoppingCart,
                    color: context.theme.scaffoldBackgroundColor,
                  ),
                  Dimens.defaultSize.width,
                  IntrinsicHeight(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RegularText(
                          "3 Item",
                          style: TextStyle(
                            color: context.theme.scaffoldBackgroundColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        RegularText(
                          "Rp 50.000",
                          style: TextStyle(
                            color: context.theme.scaffoldBackgroundColor,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Icon(Icons.arrow_forward_rounded,
                      color: context.theme.scaffoldBackgroundColor),
                ],
              ),
            ),
    );
  }
}

BorderButton _buttonFloating(
    BuildContext context, String text, IconData prefixIcon) {
  return BorderButton(
    text,
    isSolid: false,
    decoration: BoxDecoration(boxShadow: [
      BoxShadow(
        color: context.theme.primaryColor.withOpacity(0.5),
        blurRadius: 10,
        spreadRadius: 5,
        offset: const Offset(0, 1),
      ),
    ]),
    prefixIcon: prefixIcon,
    prefixIconDimens: Dimens.dp6.width,
    style: const TextStyle(fontSize: Dimens.defaultSize),
  );
}
