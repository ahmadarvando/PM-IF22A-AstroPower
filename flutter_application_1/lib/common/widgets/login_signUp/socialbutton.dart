import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/constants/colors.dart';
import 'package:flutter_application_1/utils/constants/image_string.dart';
import 'package:flutter_application_1/utils/constants/size.dart';

class socialButton extends StatelessWidget {
  const socialButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: TColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: TSize.iconMd,
              height: TSize.iconMd,
              image: AssetImage(TImages.google),
            ),
          ),
        ),
        const SizedBox(height: TSize.spaceBtwSection),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: TColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: TSize.iconMd,
              height: TSize.iconMd,
              image: AssetImage(TImages.facebook),
            ),
          ),
        ),
        const SizedBox(height: TSize.spaceBtwSection),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: TColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: TSize.iconMd,
              height: TSize.iconMd,
              image: AssetImage(TImages.linkedin),
            ),
          ),
        ),
      ],
    );
  }
}
