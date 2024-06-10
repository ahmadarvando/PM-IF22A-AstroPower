import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/styles/rounded_container.dart';
import 'package:flutter_application_1/common/styles/shadow.dart';
import 'package:flutter_application_1/common/widgets/icons/t_circulasr_icons.dart';
import 'package:flutter_application_1/common/widgets/images/t_rounded_images.dart';
import 'package:flutter_application_1/common/widgets/text/t_brand_title_text_with_verified_icon.dart';
import 'package:flutter_application_1/features/shop/screens/product_detail/product_detail.dart';
import 'package:flutter_application_1/utils/constants/colors.dart';
import 'package:flutter_application_1/utils/constants/enums.dart';
import 'package:flutter_application_1/utils/constants/image_string.dart';
import 'package:flutter_application_1/utils/constants/size.dart';
import 'package:flutter_application_1/utils/helpers/helper_function.dart';
import 'package:flutter_application_1/common/widgets/text/product_title_text.dart';
import 'package:flutter_application_1/common/widgets/text/product_price_text.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return GestureDetector(
        onTap: () => Get.to(() => const ProductDetail()),
        child: Container(
          width: 180,
          padding: const EdgeInsets.all(1),
          decoration: BoxDecoration(
            boxShadow: [TShadowStyle.verticalProductShadow],
            borderRadius: BorderRadius.circular(TSize.productImageRadius),
            color: dark ? TColors.darkerGrey : Colors.white,
          ),
          child: Column(
            children: [
              // Thumbnail, Wishlist Button, Discount Tag
              TRoundedContainer(
                height: 180,
                padding: const EdgeInsets.all(TSize.sm),
                backgroundColor: dark ? TColors.dark : TColors.light,
                child: Stack(
                  children: [
                    // Thumbnail Image
                    const TRoundedImage(
                      imageUrl: TImages.productimg1,
                      applayImageRadius: true,
                    ),

                    // Sale Tag
                    Positioned(
                      top: 12,
                      child: TRoundedContainer(
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
                    ),

                    // Favorite Icon Button
                    const Positioned(
                      top: 0,
                      right: 0,
                      child: TCircularIcon(
                          icon: Iconsax.heart5, color: Colors.red),
                    ),
                  ],
                ),
              ),
              // Details
              Padding(
                padding: EdgeInsets.all(TSize.sm),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Product Name
                    TProductTitleText(title: 'Casing Gaming RGB'),
                    SizedBox(height: TSize.spaceBtwItems / 2),
                    TBrandTitleWithVerifiedIcon(
                      title: 'Asus',
                      brandTextSize: TextSizes.large,
                    ),
                  ],
                ),
              ),
              Spacer(),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Price
                  const Padding(
                    padding: EdgeInsets.only(left: TSize.sm),
                    child: TProductPriceText(
                      price: '500.000',
                    ),
                  ),
                  Container(
                      decoration: const BoxDecoration(
                        color: TColors.dark,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(TSize.cardRadiusMd),
                          bottomRight:
                              Radius.circular(TSize.productImageRadius),
                        ),
                      ),
                      child: const SizedBox(
                          width: TSize.iconLg,
                          height: TSize.iconLg,
                          child: Center(
                            child: Icon(Iconsax.add, color: Colors.white),
                          )))
                ],
              ),
            ],
          ),
        ));
  }
}
