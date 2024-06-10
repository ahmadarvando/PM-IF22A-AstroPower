import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/styles/rounded_container.dart';
import 'package:flutter_application_1/common/widgets/brands/brand_card.dart';
import 'package:flutter_application_1/utils/constants/colors.dart';
import 'package:flutter_application_1/utils/constants/size.dart';
import 'package:flutter_application_1/utils/helpers/helper_function.dart';

class TBrandShowCase extends StatelessWidget {
  const TBrandShowCase({
    Key? key,
    required this.images,
  }) : super(key: key);
  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return TRoundedContainer(
      showBorder: true,
      borderColor: TColors.darkerGrey,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(TSize.md),
      margin: const EdgeInsets.only(bottom: TSize.spaceBtwItems),
      child: Column(
        children: [
          // Brand with Product Count
          const TBrandCard(showBorder: false),
          // Brand Top 3 Product Images
          Row(
            children: images
                .map((image) => brandTopProductImage(image, context))
                .toList(),
          ),
        ],
      ),
    );
  }

  Widget brandTopProductImage(String image, BuildContext context) {
    return Expanded(
      child: TRoundedContainer(
        height: 100,
        backgroundColor: THelperFunctions.isDarkMode(context)
            ? TColors.darkerGrey
            : TColors.light,
        margin: const EdgeInsets.only(right: TSize.sm),
        padding: const EdgeInsets.all(TSize.md),
        child: Image(
          fit: BoxFit.contain,
          image: AssetImage(image),
        ),
      ),
    );
  }
}
