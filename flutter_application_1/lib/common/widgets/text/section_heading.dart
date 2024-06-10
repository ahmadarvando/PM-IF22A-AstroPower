import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TSectionHeading extends StatelessWidget {
  const TSectionHeading({
    Key? key,
    required this.title,
    this.showActionButton = true,
    this.buttonTitle = 'View all',
    this.textColor,
    this.onPressed,
  }) : super(key: key);

  final String title;
  final bool showActionButton;
  final String buttonTitle;
  final Color? textColor;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: textColor),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          if (showActionButton)
            TextButton(
              onPressed: onPressed,
              child: Text(buttonTitle),
            ),
        ],
      ),
    );
  }
}
