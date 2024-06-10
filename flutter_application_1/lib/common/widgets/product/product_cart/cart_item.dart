import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/widgets/images/t_rounded_images.dart';
import 'package:flutter_application_1/common/widgets/text/product_title_text.dart';
import 'package:flutter_application_1/common/widgets/text/t_brand_title_text_with_verified_icon.dart';
import 'package:flutter_application_1/utils/constants/colors.dart';
import 'package:flutter_application_1/utils/constants/image_string.dart';
import 'package:flutter_application_1/utils/constants/size.dart';

class TCartItems extends StatelessWidget {
  const TCartItems({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        /// Image
        TRoundedImage(
          imageUrl: TImages.productimg1,
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(TSize.sm),
          backgroundColor: TColors.light,
        ),
        SizedBox(
          width: TSize.spaceBtwItems,
        ),

        /// Title, Size, & Price
        Expanded(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TBrandTitleWithVerifiedIcon(title: 'Asus'),
            Flexible(
              child: TProductTitleText(
                title: 'Casing RGB',
                maxLines: 1,
              ),
            ),

            /// Atributes
            Text.rich(TextSpan(children: [
              TextSpan(
                  text: 'Type ', style: Theme.of(context).textTheme.bodyLarge),
              TextSpan(
                  text: 'A12 ', style: Theme.of(context).textTheme.bodyMedium),
              TextSpan(
                  text: 'Color ', style: Theme.of(context).textTheme.bodyLarge),
              TextSpan(
                  text: 'White ',
                  style: Theme.of(context).textTheme.bodyMedium),
            ]))
          ],
        ))
      ],
    );
  }
}
