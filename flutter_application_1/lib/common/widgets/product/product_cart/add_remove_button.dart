import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/widgets/icons/t_circulasr_icons.dart';
import 'package:flutter_application_1/utils/constants/colors.dart';
import 'package:flutter_application_1/utils/constants/size.dart';
import 'package:iconsax/iconsax.dart';

class TProductQuantyWithAddRemove extends StatelessWidget {
  const TProductQuantyWithAddRemove({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        TCircularIcon(
          icon: Iconsax.minus,
          width: 20,
          height: 20,
          size: TSize.md,
          color: TColors.black,
          backgroundColor: TColors.light,
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
        TCircularIcon(
          icon: Iconsax.add,
          width: 20,
          height: 20,
          size: TSize.md,
          color: TColors.black,
          backgroundColor: Colors.blue,
        ),
      ],
    );
  }
}
