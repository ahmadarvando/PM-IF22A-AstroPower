import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/constants/colors.dart';
import 'package:flutter_application_1/utils/device/device_utility.dart';

class TTabBar extends StatelessWidget implements PreferredSizeWidget {
  const TTabBar({
    Key? key,
    this.tabs,
  }) : super(key: key);

  final List<Widget>? tabs;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: tabs != null
          ? TabBar(
              tabs: tabs!,
              isScrollable: true,
              indicatorColor: TColors.black,
              labelColor: TColors.black,
              unselectedLabelColor: TColors.darkgrey,
            )
          : Container(), // Handle no tabs case, you might want to return something else
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
