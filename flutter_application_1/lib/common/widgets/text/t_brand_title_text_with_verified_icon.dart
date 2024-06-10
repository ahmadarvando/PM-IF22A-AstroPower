import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/common/widgets/text/t_brand_title_text.dart';
import 'package:flutter_application_1/utils/constants/enums.dart';
import 'package:flutter_application_1/utils/constants/size.dart';
import 'package:iconsax/iconsax.dart';

class TBrandTitleWithVerifiedIcon extends StatelessWidget {
  const TBrandTitleWithVerifiedIcon({
    Key? key,
    required this.title,
    this.maxLines = 1,
    this.textColor,
    this.iconColor = Colors.blue,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
  }) : super(key: key);

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: TBrandTitleText(
            title: title,
            color: textColor,
            maxLines: maxLines,
            textAlign: textAlign,
            brandTextSize: brandTextSize,
          ),
        ),
        const SizedBox(width: TSize.xs),
        Icon(Iconsax.verify5, color: iconColor, size: TSize.iconXs)
      ],
    );
  }
}
