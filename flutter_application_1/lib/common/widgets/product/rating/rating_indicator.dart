import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/constants/colors.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';

class TRatingBarIndicator extends StatelessWidget {
  const TRatingBarIndicator({Key? key, required this.rating}) : super(key: key);
  final double rating;

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
        rating: rating,
        itemSize: 20,
        unratedColor: TColors.darkgrey,
        itemBuilder: (_, __) => const Icon(
              Iconsax.star1,
              color: Colors.blue,
            ));
  }
}
