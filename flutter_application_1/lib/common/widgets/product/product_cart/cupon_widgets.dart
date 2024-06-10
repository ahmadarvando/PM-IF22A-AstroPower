import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/styles/rounded_container.dart';
import 'package:flutter_application_1/utils/constants/colors.dart';
import 'package:flutter_application_1/utils/constants/size.dart';

class TCuponCode extends StatelessWidget {
  const TCuponCode({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TRoundedContainer(
      showBorder: true,
      backgroundColor: Colors.white,
      padding: const EdgeInsets.only(
        top: TSize.sm,
        bottom: TSize.sm,
        right: TSize.sm,
        left: TSize.md,
      ),
      child: Row(
        children: [
          Flexible(
            child: TextFormField(
              decoration: const InputDecoration(
                  hintText: 'Have a promo code? Enter here',
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none),
            ),
          ),

          /// Button
          SizedBox(
              width: 50,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      foregroundColor: TColors.dark.withOpacity(0.5),
                      backgroundColor: Colors.grey.withOpacity(0.2),
                      side: BorderSide(color: Colors.grey.withOpacity(0.1))),
                  child: const Icon(Icons.send)))
        ],
      ),
    );
  }
}
