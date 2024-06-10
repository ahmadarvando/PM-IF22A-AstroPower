import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/widgets/icons/t_circulasr_icons.dart';
import 'package:flutter_application_1/utils/constants/colors.dart';
import 'package:flutter_application_1/utils/constants/size.dart';
import 'package:iconsax/iconsax.dart';

class TBottomAddToCart extends StatelessWidget {
  const TBottomAddToCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: TSize.defaultSpace, vertical: TSize.defaultSpace / 2),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(TSize.cardRadiusLg),
            topRight: Radius.circular(TSize.cardRadiusLg)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const TCircularIcon(
                icon: Iconsax.minus,
                backgroundColor: TColors.darkgrey,
                width: 40,
                height: 40,
                color: Colors.white,
              ),
              const SizedBox(
                width: TSize.spaceBtwItems,
              ),
              Text(
                '2',
                style: Theme.of(context).textTheme.titleSmall,
              ),
              const SizedBox(
                width: TSize.spaceBtwItems,
              ),
              const TCircularIcon(
                icon: Iconsax.add,
                backgroundColor: TColors.darkgrey,
                width: 40,
                height: 40,
                color: Colors.black,
              ),
            ],
          ),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(TSize.md),
                  backgroundColor: TColors.black,
                  side: const BorderSide(color: TColors.black)),
              child: const Text('Add to Cart'))
        ],
      ),
    );
  }
}
