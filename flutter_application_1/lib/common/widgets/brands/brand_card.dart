import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/styles/rounded_container.dart';
import 'package:flutter_application_1/common/widgets/images/t_circular_image.dart';
import 'package:flutter_application_1/common/widgets/text/t_brand_title_text_with_verified_icon.dart';
import 'package:flutter_application_1/utils/constants/enums.dart';
import 'package:flutter_application_1/utils/constants/image_string.dart';
import 'package:flutter_application_1/utils/constants/size.dart';

class TBrandCard extends StatelessWidget {
  const TBrandCard({Key? key, required this.showBorder, this.onTap})
      : super(key: key);

  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: TRoundedContainer(
        padding: const EdgeInsets.all(TSize.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            /// -- Icon
            Flexible(
              child: TCircularImage(
                isNetworkImage: false,
                image: TImages.katagori1,
                backgroundColor: Colors.transparent,
              ),
            ),
            const SizedBox(
              width: TSize.spaceBtwItems / 2,
            ),

            /// -- Text
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TBrandTitleWithVerifiedIcon(
                    title: 'Asus',
                    brandTextSize: TextSizes.large,
                  ),
                  Text(
                    '256 products',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
