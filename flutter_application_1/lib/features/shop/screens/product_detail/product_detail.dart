import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/widgets/text/section_heading.dart';
import 'package:flutter_application_1/features/shop/screens/product_detail/widgets/bottom_add_to_cart_widget.dart';
import 'package:flutter_application_1/features/shop/screens/product_detail/widgets/product_atribut.dart';
import 'package:flutter_application_1/features/shop/screens/product_detail/widgets/product_detail_image_slider.dart';
import 'package:flutter_application_1/features/shop/screens/product_detail/widgets/product_meta_data.dart';
import 'package:flutter_application_1/features/shop/screens/product_detail/widgets/rating_share_widgets.dart';
import 'package:flutter_application_1/features/shop/screens/product_reviewes/product_rivews.dart';
import 'package:flutter_application_1/utils/constants/size.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: TBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// 1 - Product Image Slider
            TProductImageSlider(),

            /// 2 - Product Details
            Padding(
              padding: const EdgeInsets.only(
                  right: TSize.defaultSpace,
                  left: TSize.defaultSpace,
                  bottom: TSize.defaultSpace),
              child: Column(
                children: [
                  /// - Rating & Share
                  TRatingandShare(),

                  /// - Price, Title, Stock, & Brand
                  TProductMetaData(),

                  /// - Atrributes
                  TProductAtributs(),
                  const SizedBox(
                    height: TSize.spaceBtwSection,
                  ),

                  /// -- Chackout Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Checkout'),
                    ),
                  ),

                  /// - Description
                  const TSectionHeading(
                    title: 'Description',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    height: TSize.spaceBtwItems,
                  ),
                  ReadMoreText(
                    'smlkdnsncoijionfnjnfjndjkcnjkvkjnnfoinallknxcklnxzjkcnjknjkchuhidnkljndcjkvjksbfjkdsbjkfbjkdsbfjkdsbfjkdsbjkbsdjkbjksdbcjksbkjcbskjxbcjkbskjbsdkjvbkcsbvkjsbkjvbsdkjbvkdbsvbsdvjksbjkvbjk',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: ' show more',
                    trimExpandedText: ' less',
                    moreStyle: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.w800),
                  ),

                  /// - Reviews
                  const Divider(),
                  const SizedBox(
                    height: TSize.spaceBtwItems,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TSectionHeading(
                        title: 'Reviews(199)',
                        showActionButton: false,
                      ),
                      IconButton(
                          onPressed: () => Get.to(() => ProductReviewsScreen()),
                          icon: Icon(
                            Iconsax.arrow_right_3,
                            size: 18,
                          ))
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
