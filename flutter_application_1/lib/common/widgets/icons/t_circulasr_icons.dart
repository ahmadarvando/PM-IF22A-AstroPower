import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/constants/colors.dart';
import 'package:flutter_application_1/utils/constants/size.dart';
import 'package:flutter_application_1/utils/helpers/helper_function.dart';
import 'package:iconsax/iconsax.dart';

class TCircularIcon extends StatelessWidget {
  const TCircularIcon({
    Key? key,
    this.width,
    this.height,
    this.size = TSize.lg,
    this.icon = Iconsax.heart5,
    this.color,
    this.backgroundColor,
    this.onPressed,
  }) : super(key: key);

  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      width: width,
      height: height,
      child: Container(
        decoration: BoxDecoration(
          color: backgroundColor != null
              ? backgroundColor!
              : THelperFunctions.isDarkMode(context)
                  ? TColors.black.withOpacity(0.9)
                  : Colors.white.withOpacity(0.9),
          borderRadius: BorderRadius.circular(100),
        ),
        child: IconButton(
          onPressed: onPressed,
          icon: Icon(icon, size: size, color: color),
        ),
      ),
    );
  }
}
