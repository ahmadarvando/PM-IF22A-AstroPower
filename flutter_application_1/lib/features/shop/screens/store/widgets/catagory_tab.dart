import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/widgets/brands/brans_show_case.dart';
import 'package:flutter_application_1/common/widgets/layouts/grid_layout.dart';
import 'package:flutter_application_1/common/widgets/product/product_cards/product_card_vertical.dart';
import 'package:flutter_application_1/common/widgets/text/section_heading.dart';
import 'package:flutter_application_1/utils/constants/image_string.dart';
import 'package:flutter_application_1/utils/constants/size.dart';

class TCatagoryTab extends StatelessWidget {
  const TCatagoryTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///--- Brands
              TBrandShowCase(
                images: [
                  TImages.productimg1,
                  TImages.productimg1,
                  TImages.productimg1
                ],
              ),
              const SizedBox(
                height: TSize.spaceBtwItems,
              ),

              ///--- Products
              TSectionHeading(
                title: 'You might like',
                onPressed: () {},
              ),
              const SizedBox(
                height: TSize.spaceBtwItems,
              ),

              TGridLayout(
                  itemCount: 6,
                  itemBuilder: (_, index) => TProductCardVertical()),
            ],
          ),
        ),
      ],
    );
  }
}
