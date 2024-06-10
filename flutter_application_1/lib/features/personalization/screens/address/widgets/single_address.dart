import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/styles/rounded_container.dart';
import 'package:flutter_application_1/utils/constants/colors.dart';
import 'package:flutter_application_1/utils/constants/size.dart';
import 'package:iconsax/iconsax.dart';

class TSingleAddress extends StatelessWidget {
  const TSingleAddress({Key? key, required this.selectedAddreess})
      : super(key: key);

  final bool selectedAddreess;

  @override
  Widget build(BuildContext context) {
    return TRoundedContainer(
      padding: const EdgeInsets.all(TSize.md),
      width: double.infinity,
      showBorder: true,
      backgroundColor:
          selectedAddreess ? Colors.blue.withOpacity(0.5) : Colors.transparent,
      borderColor: selectedAddreess ? Colors.transparent : TColors.darkerGrey,
      margin: const EdgeInsets.only(bottom: TSize.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
              right: 5,
              top: 0,
              child: Icon(
                selectedAddreess ? Iconsax.tick_circle5 : null,
                color: selectedAddreess ? TColors.dark : null,
              )),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Dimas Prayogo',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(
                height: TSize.sm / 2,
              ),
              const Text(
                '(+628) 287 739 6544',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(
                height: TSize.sm / 2,
              ),
              const Text('62556 Lampung, Bandar Lampung, Indonesia')
            ],
          )
        ],
      ),
    );
  }
}
