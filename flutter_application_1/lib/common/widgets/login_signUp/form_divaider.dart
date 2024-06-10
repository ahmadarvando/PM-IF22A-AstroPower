import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/constants/colors.dart';
import 'package:flutter_application_1/utils/constants/text_string.dart';
import 'package:get/get.dart';

class formDivaider extends StatelessWidget {
  const formDivaider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
              color: TColors.darkerGrey,
              thickness: 0.5,
              indent: 60,
              endIndent: 5),
        ),
        Text(
          TTexts.orSignInWith.capitalize!,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Flexible(
          child: Divider(
              color: TColors.darkerGrey,
              thickness: 0.5,
              indent: 60,
              endIndent: 60),
        ),
      ],
    );
  }
}
