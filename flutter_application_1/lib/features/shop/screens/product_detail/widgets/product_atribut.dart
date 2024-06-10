import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/styles/rounded_container.dart';
import 'package:flutter_application_1/common/widgets/chips/chois_chip.dart';
import 'package:flutter_application_1/common/widgets/text/product_price_text.dart';
import 'package:flutter_application_1/common/widgets/text/product_title_text.dart';
import 'package:flutter_application_1/common/widgets/text/section_heading.dart';
import 'package:flutter_application_1/utils/constants/colors.dart';
import 'package:flutter_application_1/utils/constants/size.dart';

class TProductAtributs extends StatelessWidget {
  const TProductAtributs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// -- Selected Attribute Pricing & Description
        TRoundedContainer(
          padding: const EdgeInsets.all(TSize.md),
          backgroundColor: TColors.darkgrey,
          child: Column(
            children: [
              /// Title, Price and Stock Status
              Row(
                children: [
                  const TSectionHeading(
                    title: 'Variation',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    width: TSize.spaceBtwItems,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const TProductTitleText(
                            title: 'Price : ',
                            smallSize: true,
                          ),
                          const SizedBox(
                            width: TSize.spaceBtwItems,
                          ),

                          /// Actual Price
                          Text(
                            '\Rp.400000',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(
                            width: TSize.spaceBtwItems,
                          ),

                          /// Sale Price (adjust as needed)
                          const TProductPriceText(price: '500000'),
                        ],
                      ),

                      /// Stock
                      Row(
                        children: [
                          const TProductTitleText(
                            title: 'Stock : ',
                            smallSize: true,
                          ),
                          Text(
                            '   In Stock',
                            style: Theme.of(context).textTheme.titleMedium,
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),

              /// Variation Description
              TProductTitleText(
                title:
                    'This is the Description of the Product and it can go up to max 4 lines',
                smallSize: true,
                maxLines: 4,
              )
            ],
          ),
        ),

        const SizedBox(
          height: TSize.spaceBtwItems,
        ),

        /// -- Atributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TSectionHeading(
              title: 'Colors',
              showActionButton: false,
            ),
            SizedBox(
              height: TSize.spaceBtwItems / 2,
            ),
            Wrap(
              spacing: 8,
              children: [
                TChoisChip(
                  text: 'White',
                  selected: true,
                  onSelected: (value) {},
                ),
                TChoisChip(
                  text: 'Black',
                  selected: false,
                  onSelected: (value) {},
                ),
              ],
            ),
          ],
        ),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TSectionHeading(
              title: 'Type',
              showActionButton: false,
            ),
            SizedBox(
              height: TSize.spaceBtwItems / 2,
            ),
            Wrap(
              spacing: 8,
              children: [
                TChoisChip(
                  text: 'A13',
                  selected: true,
                  onSelected: (value) {},
                ),
                TChoisChip(
                  text: 'B34',
                  selected: false,
                  onSelected: (value) {},
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
