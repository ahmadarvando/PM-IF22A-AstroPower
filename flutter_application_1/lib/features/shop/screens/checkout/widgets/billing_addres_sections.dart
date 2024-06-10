import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/styles/rounded_container.dart';
import 'package:flutter_application_1/common/widgets/text/section_heading.dart';
import 'package:flutter_application_1/utils/constants/image_string.dart';
import 'package:flutter_application_1/utils/constants/size.dart';

class TBillingAddressSection extends StatelessWidget {
  const TBillingAddressSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TSectionHeading(
          title: 'Payment Method',
          buttonTitle: 'Change',
          onPressed: () {},
        ),
        const SizedBox(
          height: TSize.spaceBtwItems / 2,
        ),
        Row(
          children: [
            TRoundedContainer(
              width: 60,
              height: 35,
              padding: EdgeInsets.all(TSize.sm),
              child: Image(
                image: AssetImage(TImages.linkedin),
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(
              width: TSize.spaceBtwItems / 2,
            ),
            Text(
              'Dana',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        )
      ],
    );
  }
}
