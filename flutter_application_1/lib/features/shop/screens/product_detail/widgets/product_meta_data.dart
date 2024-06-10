import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/styles/rounded_container.dart';
import 'package:flutter_application_1/common/widgets/images/t_circular_image.dart';
import 'package:flutter_application_1/common/widgets/text/product_price_text.dart';
import 'package:flutter_application_1/common/widgets/text/product_title_text.dart';
import 'package:flutter_application_1/common/widgets/text/t_brand_title_text_with_verified_icon.dart';
import 'package:flutter_application_1/utils/constants/colors.dart';
import 'package:flutter_application_1/utils/constants/enums.dart';
import 'package:flutter_application_1/utils/constants/image_string.dart';
import 'package:flutter_application_1/utils/constants/size.dart';

class TProductMetaData extends StatelessWidget {
  const TProductMetaData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Price & Sale Price
        Row(
          children: [
            /// Sale Tag
            TRoundedContainer(
              radius: TSize.sm,
              backgroundColor: TColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(
                  horizontal: TSize.sm, vertical: TSize.xs),
              child: Text('25%',
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .apply(color: TColors.grey)),
            ),
            const SizedBox(
              width: TSize.spaceBtwItems,
            ),

            /// Price
            Text('\Rp.700000',
                style: Theme.of(context).textTheme.titleSmall!.apply(
                      decoration: TextDecoration.lineThrough,
                    )),
            const SizedBox(
              width: TSize.spaceBtwItems,
            ),
            TProductPriceText(
              price: '500000',
            )
          ],
        ),
        const SizedBox(width: TSize.spaceBtwItems / 1.5),

        /// Title
        const TProductTitleText(title: 'Casing Gaming RGB'),
        const SizedBox(width: TSize.spaceBtwItems / 1.5),

        /// Stock Status
        Row(children: [
          const TProductTitleText(title: 'Status'),
          const SizedBox(
            width: TSize.spaceBtwItems,
          ),
          Text(
            'In Stock',
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ]),
        const SizedBox(width: TSize.spaceBtwItems / 1.5),

        /// Brand
        Row(children: [
          TCircularImage(
            image: TImages.katagori1,
            width: 32,
            height: 32,
          ),
          const TBrandTitleWithVerifiedIcon(
            title: 'Asus',
            brandTextSize: TextSizes.medium,
          ),
        ]),
      ],
    );
  }
}
