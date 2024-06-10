import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/styles/rounded_container.dart';
import 'package:flutter_application_1/common/widgets/appbar/appbar.dart';
import 'package:flutter_application_1/common/widgets/product/product_cart/cupon_widgets.dart';
import 'package:flutter_application_1/features/authentication/screens/login/verifikasi/succes_screen.dart';
import 'package:flutter_application_1/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:flutter_application_1/features/shop/screens/checkout/widgets/billing_addres_sections.dart';
import 'package:flutter_application_1/features/shop/screens/checkout/widgets/billing_amount_sections.dart';
import 'package:flutter_application_1/features/shop/screens/checkout/widgets/billing_paymant_section.dart';
import 'package:flutter_application_1/navigation_mene.dart';
import 'package:flutter_application_1/utils/constants/image_string.dart';
import 'package:flutter_application_1/utils/constants/size.dart';
import 'package:get/get.dart';

class Checkout extends StatelessWidget {
  const Checkout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: TAppBar(
          showBackArrow: true,
          title: Text(
            'Order Review',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(TSize.defaultSpace),
            child: Column(
              children: [
                /// Items In Cart
                const TCartItemes(showAddRemoveButtons: false),
                const SizedBox(
                  height: TSize.spaceBtwSection,
                ),

                /// Coupon Text Field
                TCuponCode(),
                const SizedBox(
                  height: TSize.spaceBtwSection,
                ),

                /// Billing Section
                TRoundedContainer(
                  showBorder: true,
                  child: Column(
                    children: [
                      ///Pricing
                      TBillingPaymantSection(),
                      const SizedBox(
                        height: TSize.spaceBtwItems,
                      ),

                      ///Divider
                      const Divider(),
                      const SizedBox(
                        height: TSize.spaceBtwItems,
                      ),

                      ///Payment
                      TBillingAddressSection(),
                      const SizedBox(
                        height: TSize.spaceBtwItems,
                      ),

                      ///Address
                      TBillingAmountSection()
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(TSize.defaultSpace),
          child: ElevatedButton(
              onPressed: () => Get.to(() => SuccessScreen(
                    image: TImages.google,
                    title: 'Payment Success!',
                    subTitle: 'Your item will be shipped soon!',
                    onPressed: () => Get.offAll(() => const NavigationMenu()),
                  )),
              child: Text('Chackout')),
        ));
  }
}
