part of '../page.dart';

class _CardWidget extends StatelessWidget {
  final String title;
  final String value;
  const _CardWidget({
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(Dimens.dp24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RegularText(
              title,
              style: const TextStyle(fontSize: Dimens.dp14),
            ),
            Dimens.dp4.height,
            HeadingText(value),
            Dimens.dp4.height,
            RegularText(
              "Lihat Detail",
              style: TextStyle(
                fontSize: Dimens.dp14,
                color: context.theme.primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
