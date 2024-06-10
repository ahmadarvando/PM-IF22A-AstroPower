import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/widgets/appbar/appbar.dart';
import 'package:flutter_application_1/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:flutter_application_1/features/shop/screens/checkout/chackout.dart';
import 'package:flutter_application_1/utils/constants/size.dart';
import 'package:get/get.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: TAppBar(
          showBackArrow: true,
          title: Text(
            'Cart',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(TSize.defaultSpace),
          child: TCartItemes(),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(TSize.defaultSpace),
          child: ElevatedButton(
              onPressed: () => Get.to(() => Checkout()),
              child: Text('Chackout')),
        ));
  }
}
