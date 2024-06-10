import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/widgets/text/section_heading.dart';
import 'package:flutter_application_1/utils/constants/size.dart';

class TBillingAmountSection extends StatelessWidget {
  const TBillingAmountSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TSectionHeading(
          title: 'Shipping Address',
          buttonTitle: 'Change',
          onPressed: () {},
        ),
        Text(
          'Dimas Prayogo',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const SizedBox(
          height: TSize.spaceBtwItems / 2,
        ),
        Row(
          children: [
            const Icon(
              Icons.phone,
              color: Colors.grey,
              size: 16,
            ),
            const SizedBox(
              width: TSize.spaceBtwItems,
            ),
            Text(
              '+628 1246 4934',
              style: Theme.of(context).textTheme.bodyMedium,
            )
          ],
        ),
        const SizedBox(
          height: TSize.spaceBtwItems / 2,
        ),
        Row(
          children: [
            const Icon(
              Icons.location_history,
              color: Colors.grey,
              size: 16,
            ),
            const SizedBox(
              width: TSize.spaceBtwItems,
            ),
            Expanded(
                child: Text(
              'Labuhan Ratu, Kosan Adip, Bandar Lampung, Lampung',
              style: Theme.of(context).textTheme.bodyMedium,
              softWrap: true,
            )),
          ],
        ),
        const SizedBox(
          height: TSize.spaceBtwItems / 2,
        ),
      ],
    );
  }
}
