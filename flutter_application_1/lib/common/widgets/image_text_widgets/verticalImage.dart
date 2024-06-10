import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/constants/size.dart';

class TVerticalImage extends StatelessWidget {
  const TVerticalImage({
    Key? key,
    required this.image,
    required this.title,
    this.textColor = Colors.white,
    this.backgroundColor,
    this.onTap,
  }) : super(key: key);
  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: TSize.spaceBtwItems),
        child: Column(
          children: [
            // Circular Icon
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(TSize.sm),
              decoration: BoxDecoration(
                color: backgroundColor ?? Colors.white,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            // Text
            const SizedBox(
              height: TSize.spaceBtwItems / 2,
            ),
            SizedBox(
              width: 55,
              child: Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .apply(color: textColor),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
