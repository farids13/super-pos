part of "../detail_page.dart";

class _ButtonSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.black[200]!),
              borderRadius: BorderRadius.circular(Dimens.dp8),
            ),
            child: Padding(
              padding: const EdgeInsets.all(Dimens.defaultSize),
              child: Column(
                children: [
                  BorderButton(
                    "Bayar",
                    width: double.infinity,
                    textAlign: TextAlign.center,
                    textColor: context.theme.primaryColor,
                  ),
                  Dimens.defaultSize.height,
                  BorderButton(
                    "Kirim Struk",
                    width: double.infinity,
                    textAlign: TextAlign.center,
                    textColor: context.theme.primaryColor,
                  ),
                  Dimens.defaultSize.height,
                  BorderButton(
                    "Cetak Struk",
                    width: double.infinity,
                    textAlign: TextAlign.center,
                    isOutline: false,
                    textColor: context.theme.primaryColor,
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
