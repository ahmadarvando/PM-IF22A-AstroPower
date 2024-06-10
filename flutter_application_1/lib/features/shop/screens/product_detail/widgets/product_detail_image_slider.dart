import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/widgets/appbar/appbar.dart';
import 'package:flutter_application_1/common/widgets/custom_shape/curved_egdes/curved_edge_widget.dart';
import 'package:flutter_application_1/common/widgets/icons/t_circulasr_icons.dart';
import 'package:flutter_application_1/common/widgets/images/t_rounded_images.dart';
import 'package:flutter_application_1/utils/constants/colors.dart';
import 'package:flutter_application_1/utils/constants/image_string.dart';
import 'package:flutter_application_1/utils/constants/size.dart';
import 'package:iconsax/iconsax.dart';

class TProductImageSlider extends StatelessWidget {
  const TProductImageSlider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TCurvedEdgeWidget(
      child: Container(
        child: Stack(
          children: [
            /// Main Large Image
            SizedBox(
                height: 400,
                child: Padding(
                  padding: EdgeInsets.all(TSize.productImageRadius),
                  child: Center(
                    child: Image(image: AssetImage(TImages.productimg1)),
                  ),
                )),

            /// Image Slider
            Positioned(
              right: 0,
              bottom: 30,
              left: TSize.defaultSpace,
              child: SizedBox(
                  height: 80,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    physics: const AlwaysScrollableScrollPhysics(),
                    itemBuilder: (_, index) => TRoundedImage(
                        width: 80,
                        border: Border.all(color: TColors.Primary),
                        padding: const EdgeInsets.all(TSize.sm),
                        imageUrl: TImages.productimg1),
                    separatorBuilder: (_, __) => const SizedBox(
                      width: TSize.spaceBtwItems,
                    ),
                    itemCount: 7,
                    shrinkWrap: true,
                  )),
            ),

            /// Appbar Icon
            TAppBar(
              showBackArrow: true,
              actions: [
                TCircularIcon(
                  icon: Iconsax.heart5,
                  color: Colors.red,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
