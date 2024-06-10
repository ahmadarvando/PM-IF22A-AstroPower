import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/widgets/custom_shape/containers/primary_header_container.dart';
import 'package:flutter_application_1/common/widgets/custom_shape/containers/search_container.dart';
import 'package:flutter_application_1/common/widgets/product/product_cards/product_card_vertical.dart';
import 'package:flutter_application_1/common/widgets/text/section_heading.dart';
import 'package:flutter_application_1/features/shop/screens/home/widgets/Home_AppBar.dart';
import 'package:flutter_application_1/features/shop/screens/home/widgets/homeCategories.dart';
import 'package:flutter_application_1/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:flutter_application_1/utils/constants/image_string.dart';
import 'package:flutter_application_1/common/widgets/layouts/grid_layout.dart';
import 'package:flutter_application_1/utils/constants/size.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  // AppBar
                  const THomeAppBar(),
                  const SizedBox(
                    height: TSize.spaceBtwSection,
                  ),

                  // Search Bar
                  const TSearchContainer(text: 'Search in Store'),
                  const SizedBox(
                    height: TSize.spaceBtwSection,
                  ),

                  // Categories
                  Padding(
                    padding: const EdgeInsets.only(left: TSize.defaultSpace),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Heading
                        TSectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: Colors.white,
                          onPressed: () {},
                        ),
                        const SizedBox(
                          height: TSize.spaceBtwItems,
                        ),

                        // Categories List
                        const THomeCategoris(),
                        const SizedBox(
                          height: TSize.spaceBtwSection,
                        ), // Pastikan widget ini diimpor dengan benar
                      ],
                    ),
                  ),
                ],
              ),
            ),

            /// Body
            Padding(
              padding: EdgeInsets.all(TSize.defaultSpace),
              child: Column(
                children: [
                  /// Promo Slider
                  const TPromoSlider(
                    banners: [
                      TImages.corousel1,
                      TImages.corousel2,
                      TImages.corousel3
                    ],
                  ),
                  const SizedBox(
                    height: TSize.spaceBtwSection,
                  ),

                  ///Popular Product
                  TGridLayout(
                    itemCount: 4,
                    itemBuilder: (_, index) => const TProductCardVertical(),
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
