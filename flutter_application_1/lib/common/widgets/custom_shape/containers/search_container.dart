import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/constants/colors.dart';
import 'package:flutter_application_1/utils/constants/size.dart';
import 'package:flutter_application_1/utils/device/device_utility.dart';
import 'package:iconsax/iconsax.dart';

class TSearchContainer extends StatelessWidget {
  const TSearchContainer({
    Key? key,
    required this.text,
    this.icon,
    this.showBackground = true,
    this.showBorder = true,
    this.onTap,
    this.padding = const EdgeInsets.symmetric(horizontal: TSize.defaultSpace),
  }) : super(key: key);

  final String text;
  final IconData? icon;
  final bool showBackground;
  final bool showBorder;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: padding,
        child: Container(
          width: TDeviceUtils.getScreenWidth(context),
          padding: const EdgeInsets.all(TSize.md),
          decoration: BoxDecoration(
            color: showBackground ? (TColors.light) : Colors.transparent,
            borderRadius: BorderRadius.circular(TSize.cardRadiusLg),
            border: showBorder ? Border.all(color: TColors.grey) : null,
          ),
          child: Row(
            children: [
              Icon(
                icon ?? Iconsax.search_normal_1,
                color: TColors.darkerGrey,
              ),
              const SizedBox(width: TSize.spaceBtwItems),
              Text(
                text,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
