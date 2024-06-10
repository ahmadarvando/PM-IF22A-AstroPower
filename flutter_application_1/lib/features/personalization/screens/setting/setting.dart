import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/widgets/appbar/appbar.dart';
import 'package:flutter_application_1/common/widgets/custom_shape/containers/primary_header_container.dart';
import 'package:flutter_application_1/common/widgets/list_tiles/setting_menu_tile.dart';
import 'package:flutter_application_1/common/widgets/list_tiles/user_profile_tile.dart';
import 'package:flutter_application_1/common/widgets/text/section_heading.dart';
import 'package:flutter_application_1/features/personalization/screens/address/address.dart';
import 'package:flutter_application_1/features/personalization/screens/profile/profile.dart';
import 'package:flutter_application_1/utils/constants/size.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///---Header
            TPrimaryHeaderContainer(
                child: Column(
              children: [
                /// AppBar
                TAppBar(
                  title: Text(
                    'Account',
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .apply(color: Colors.white),
                  ),
                ),
                const SizedBox(
                  height: TSize.spaceBtwSection,
                ),

                ///User Profile Card
                TUserProfile(
                    onPressed: () => Get.to(() => const ProfileScreen())),
                const SizedBox(
                  height: TSize.spaceBtwSection,
                ),
              ],
            )),

            ///---Body
            Padding(
              padding: EdgeInsets.all(TSize.defaultSpace),
              child: Column(
                children: [
                  /// -- Account Setting
                  TSectionHeading(
                    title: 'Account Setting',
                    showActionButton: false,
                  ),
                  SizedBox(
                    height: TSize.spaceBtwItems,
                  ),

                  TSettingMenuTile(
                    icon: Iconsax.safe_home,
                    title: 'My Addresses',
                    subTitle: 'Set shopping delivery address',
                    onTap: () => Get.to(() => const UserAddressScreen()),
                  ),
                  TSettingMenuTile(
                    icon: Iconsax.shopping_cart,
                    title: 'My Cart',
                    subTitle: 'Add, remove product and move to checkout',
                    onTap: () {},
                  ),
                  TSettingMenuTile(
                    icon: Iconsax.bag_tick,
                    title: 'My Orders',
                    subTitle: 'In proggres and Completed Orders',
                    onTap: () {},
                  ),
                  TSettingMenuTile(
                    icon: Iconsax.bank,
                    title: 'Bank Account',
                    subTitle: 'Withdraw balance to registered bank account',
                    onTap: () {},
                  ),
                  TSettingMenuTile(
                    icon: Iconsax.discount_shape,
                    title: 'My Cuppons',
                    subTitle: 'List of all the discounted coupons',
                    onTap: () {},
                  ),
                  TSettingMenuTile(
                    icon: Iconsax.notification,
                    title: 'My Notification',
                    subTitle: 'Set any kind of notification message',
                    onTap: () {},
                  ),
                  TSettingMenuTile(
                    icon: Iconsax.security_card,
                    title: 'Account Privacy',
                    subTitle: 'Manage data usage and connected account',
                    onTap: () {},
                  ),

                  /// -- Logout Button
                  const SizedBox(
                    height: TSize.spaceBtwSection,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: const Text('Logout'),
                    ),
                  ),
                  const SizedBox(
                    height: TSize.spaceBtwSection,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
