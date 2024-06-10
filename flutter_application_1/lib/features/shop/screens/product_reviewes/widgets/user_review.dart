import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/styles/rounded_container.dart';
import 'package:flutter_application_1/common/widgets/product/rating/rating_indicator.dart';
import 'package:flutter_application_1/utils/constants/colors.dart';
import 'package:flutter_application_1/utils/constants/image_string.dart';
import 'package:flutter_application_1/utils/constants/size.dart';
import 'package:readmore/readmore.dart';

class UserRiviewCard extends StatelessWidget {
  const UserRiviewCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage(TImages.google),
                ),
                const SizedBox(
                  width: TSize.spaceBtwItems,
                ),
                Text(
                  'Dimas Prayogo',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
          ],
        ),
        const SizedBox(
          width: TSize.spaceBtwItems,
        ),

        /// Review
        Row(
          children: [
            const TRatingBarIndicator(rating: 4),
            const SizedBox(
              width: TSize.spaceBtwItems,
            ),
            Text(
              '01 Nov, 2023',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        const SizedBox(
          height: TSize.spaceBtwItems,
        ),
        const ReadMoreText(
          'The user interface of the app is quite intuitive. I was able to navigate and make purchases seamlessly. Great job!',
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimExpandedText: 'show less',
          trimCollapsedText: 'show more',
          moreStyle: TextStyle(
              fontSize: 14, fontWeight: FontWeight.bold, color: Colors.blue),
          lessStyle: TextStyle(
              fontSize: 14, fontWeight: FontWeight.bold, color: Colors.blue),
        ),
        const SizedBox(
          height: TSize.spaceBtwItems,
        ),

        /// Company Review
        TRoundedContainer(
          backgroundColor: TColors.darkgrey,
          child: Padding(
            padding: const EdgeInsets.all(TSize.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "tekno's Store",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      '20 Nov, 2023',
                      style: Theme.of(context).textTheme.bodyMedium,
                    )
                  ],
                ),
                const SizedBox(
                  height: TSize.spaceBtwItems,
                ),
                const ReadMoreText(
                  'The user interface of the app is quite intuitive. I was able to navigate and make purchases seamlessly. Great job!',
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimExpandedText: ' show less',
                  trimCollapsedText: 'show more',
                  moreStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                  lessStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: TSize.spaceBtwSection,
        )
      ],
    );
  }
}
