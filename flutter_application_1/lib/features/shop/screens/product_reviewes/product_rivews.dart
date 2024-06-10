import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/widgets/appbar/appbar.dart';
import 'package:flutter_application_1/common/widgets/product/rating/rating_indicator.dart';
import 'package:flutter_application_1/features/shop/screens/product_reviewes/widgets/rating_progres_indicator.dart';
import 'package:flutter_application_1/features/shop/screens/product_reviewes/widgets/user_review.dart';
import 'package:flutter_application_1/utils/constants/size.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// -- Appbar
      appBar: TAppBar(
        title: Text('Reviews & Ratings'),
        showBackArrow: true,
      ),

      /// -- Body
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  "Rating and reviews are verified and are from people who use the same type of device that you use."),
              SizedBox(
                height: TSize.spaceBtwItems,
              ),

              /// Overall Product Ratings
              TOverallProductRating(),
              TRatingBarIndicator(
                rating: 3.5,
              ),
              Text(
                "12,611",
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(
                height: TSize.spaceBtwSection,
              ),

              /// User Reviews List
              const UserRiviewCard(),
              const UserRiviewCard(),
              const UserRiviewCard(),
              const UserRiviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}
