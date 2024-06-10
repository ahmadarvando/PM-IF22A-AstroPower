import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/constants/size.dart';
import 'package:iconsax/iconsax.dart';

class TProfileMenu extends StatelessWidget {
  const TProfileMenu(
      {Key? key,
      required this.onPressed,
      required this.title,
      required this.value,
      this.icon = Iconsax.arrow_right_34})
      : super(key: key);

  final IconData icon;
  final VoidCallback onPressed;
  final String title, value;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding:
            const EdgeInsets.symmetric(vertical: TSize.spaceBtwItems / 1.5),
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Text(
                title,
                style: Theme.of(context).textTheme.bodyLarge,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Expanded(
                flex: 5,
                child: Text(
                  value,
                  style: Theme.of(context).textTheme.bodyMedium,
                  overflow: TextOverflow.ellipsis,
                )),
            Expanded(
                child: Icon(
              icon,
              size: 18,
            ))
          ],
        ),
      ),
    );
  }
}
