import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/widgets/appbar/appbar.dart';
import 'package:flutter_application_1/common/widgets/product/product_cart/cart_menu_icon.dart';
import 'package:flutter_application_1/utils/constants/text_string.dart';

class THomeAppBar extends StatelessWidget {
  const THomeAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            TTexts.homeAppBarTitle,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: Colors.white), // Ubah warna untuk tes
          ),
          Text(
            'A.Arvando Raka Siwi',
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: Colors.white), // Ubah warna untuk tes
          )
        ],
      ),
      actions: [
        TCartCountainerIcon(
          onPressed: () {},
          iconColor: Colors.white,
        )
      ],
    );
  }
}
