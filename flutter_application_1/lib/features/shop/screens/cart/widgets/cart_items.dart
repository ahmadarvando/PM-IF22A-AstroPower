import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/common/widgets/product/product_cart/add_remove_button.dart';
import 'package:flutter_application_1/common/widgets/product/product_cart/cart_item.dart';
import 'package:flutter_application_1/common/widgets/text/product_price_text.dart';
import 'package:flutter_application_1/utils/constants/size.dart';

class TCartItemes extends StatelessWidget {
  const TCartItemes({Key? key, this.showAddRemoveButtons = true})
      : super(key: key);

  final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        separatorBuilder: (_, __) => const SizedBox(
              height: TSize.spaceBtwSection,
            ),
        itemCount: 4,
        itemBuilder: (_, index) => Column(children: [
              const TCartItems(),
              if (showAddRemoveButtons)
                SizedBox(
                  height: TSize.spaceBtwItems,
                ),
              if (showAddRemoveButtons)
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const SizedBox(
                          width: 70,
                        ),

                        /// Add Remove Buttons
                        TProductQuantyWithAddRemove(),
                      ],
                    ),
                    TProductPriceText(price: ' 500000')
                  ],
                ),
            ]));
  }
}
