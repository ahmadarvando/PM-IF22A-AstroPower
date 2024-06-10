import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/widgets/images/t_circular_image.dart';
import 'package:flutter_application_1/utils/constants/image_string.dart';
import 'package:iconsax/iconsax.dart';

class TUserProfile extends StatelessWidget {
  const TUserProfile({Key? key, required this.onPressed}) : super(key: key);

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: TCircularImage(
        image: TImages.google,
        width: 50,
        height: 50,
        padding: 0,
      ),
      title: Text(
        'A.Arvando Raka Siwi',
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .apply(color: Colors.white),
      ),
      subtitle: Text(
        'a.arvando_raka_siw@teknokrat.ac.id',
        style:
            Theme.of(context).textTheme.labelMedium!.apply(color: Colors.white),
      ),
      trailing: IconButton(
        onPressed: onPressed,
        icon: const Icon(
          Iconsax.edit,
          color: Colors.white,
        ),
      ),
    );
  }
}
