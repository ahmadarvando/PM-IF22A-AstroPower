import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/widgets/appbar/appbar.dart';
import 'package:flutter_application_1/common/widgets/images/t_circular_image.dart';
import 'package:flutter_application_1/common/widgets/text/section_heading.dart';
import 'package:flutter_application_1/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:flutter_application_1/utils/constants/image_string.dart';
import 'package:flutter_application_1/utils/constants/size.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text('Profile'),
      ),

      /// Body
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            children: [
              ///Profile Picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    TCircularImage(
                      image: TImages.google,
                      width: 80,
                      height: 80,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text('Change Profile Picture'))
                  ],
                ),
              ),

              /// Details
              const SizedBox(
                height: TSize.spaceBtwItems / 2,
              ),
              const Divider(),
              const SizedBox(
                height: TSize.spaceBtwItems,
              ),

              /// Heading Profile Info
              const TSectionHeading(
                title: 'Profile Information',
                showActionButton: false,
              ),
              const SizedBox(
                height: TSize.spaceBtwItems,
              ),

              TProfileMenu(
                  onPressed: () {},
                  title: 'Name',
                  value: 'A.Arvando Raka Siwi'),
              TProfileMenu(
                  onPressed: () {},
                  title: 'Username',
                  value: 'a.arvando_raka_siwi'),

              const SizedBox(
                height: TSize.spaceBtwItems / 2,
              ),
              const Divider(),
              const SizedBox(
                height: TSize.spaceBtwItems,
              ),

              /// Heading Personal Info
              const TSectionHeading(
                title: 'Personal Information',
                showActionButton: false,
              ),
              const SizedBox(
                height: TSize.spaceBtwItems,
              ),

              TProfileMenu(
                onPressed: () {},
                title: 'User ID',
                value: '45689',
                icon: Iconsax.copy,
              ),
              TProfileMenu(
                  onPressed: () {},
                  title: 'E-mail',
                  value: 'a.arvando_raka_siwi@teknokrat.ac.id'),
              TProfileMenu(
                  onPressed: () {},
                  title: 'Phone Number',
                  value: '+62812-234-424-342'),
              TProfileMenu(onPressed: () {}, title: 'Gender', value: 'male'),
              TProfileMenu(
                  onPressed: () {},
                  title: 'Data of Birth',
                  value: '17 Jun, 2004'),
              const Divider(),
              const SizedBox(
                height: TSize.spaceBtwItems,
              ),

              Center(
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Close Account',
                      style: TextStyle(color: Colors.red),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
