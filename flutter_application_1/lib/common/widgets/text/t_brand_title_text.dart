import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/constants/enums.dart';

class TBrandTitleText extends StatelessWidget {
  const TBrandTitleText({
    Key? key,
    required this.title,
    this.color,
    this.maxLines = 1,
    this.textAlign,
    this.brandTextSize = TextSizes.medium,
  }) : super(key: key);

  final Color? color;
  final String title;
  final int maxLines;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle;
    switch (brandTextSize) {
      case TextSizes.small:
        textStyle = Theme.of(context).textTheme.labelSmall!;
        break;
      case TextSizes.medium:
        textStyle = Theme.of(context).textTheme.bodyLarge!;
        break;
      case TextSizes.large:
        textStyle = Theme.of(context).textTheme.titleLarge!;
        break;
      default:
        textStyle = Theme.of(context).textTheme.bodyMedium!;
    }

    return Text(
      title,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: textStyle.apply(color: color),
    );
  }
}
