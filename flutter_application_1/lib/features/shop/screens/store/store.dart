import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/widgets/appbar/appbar.dart';
import 'package:flutter_application_1/common/widgets/appbar/tabbar.dart';
import 'package:flutter_application_1/common/widgets/custom_shape/containers/search_container.dart';
import 'package:flutter_application_1/common/widgets/layouts/grid_layout.dart';
import 'package:flutter_application_1/common/widgets/brands/brand_card.dart';
import 'package:flutter_application_1/common/widgets/product/product_cart/cart_menu_icon.dart';
import 'package:flutter_application_1/common/widgets/text/section_heading.dart';
import 'package:flutter_application_1/features/shop/screens/store/widgets/catagory_tab.dart';
import 'package:flutter_application_1/utils/constants/colors.dart';
import 'package:flutter_application_1/utils/constants/size.dart';

class Store extends StatelessWidget {
  const Store({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5, // jumlah tab
      child: Scaffold(
        appBar: TAppBar(
          title: const Text('Store'),
          actions: [
            TCartCountainerIcon(
              onPressed: () {},
              iconColor: Colors.black,
            ),
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: TColors.Primary,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(TSize.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      ///--- Search bar
                      const SizedBox(height: TSize.spaceBtwItems),
                      const TSearchContainer(
                        text: 'Search in Store',
                        showBorder: true,
                        showBackground: false,
                        padding: EdgeInsets.zero,
                      ),
                      const SizedBox(height: TSize.spaceBtwSection),

                      ///--- Featured Brands
                      TSectionHeading(
                          title: 'Featured Brands', onPressed: () {}),
                      const SizedBox(height: TSize.spaceBtwItems / 1.5),

                      ///--- Grid Layout
                      TGridLayout(
                        itemCount: 4,
                        mainAxisExtent: 80,
                        itemBuilder: (_, index) {
                          return TBrandCard(showBorder: false);
                        },
                      )
                    ],
                  ),
                ),
                bottom: TTabBar(
                  tabs: const [
                    Tab(child: Text('PC Gaming')),
                    Tab(child: Text('Laptops')),
                    Tab(child: Text('Accessories')),
                    Tab(child: Text('Software')),
                    Tab(child: Text('Components')),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              TCatagoryTab(),
              TCatagoryTab(),
              TCatagoryTab(),
              TCatagoryTab(),
              TCatagoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}
