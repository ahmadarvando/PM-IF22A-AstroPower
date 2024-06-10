import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/authentication/controllers/onboarding_controllers.dart';
import 'package:flutter_application_1/utils/constants/colors.dart';
import 'package:flutter_application_1/utils/constants/size.dart';
import 'package:flutter_application_1/utils/device/device_utility.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller =
        OnBoardingController.instance; // Menggunakan instance yang sudah ada
    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: TSize.defaultSpace,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        count: 3,
        effect: ExpandingDotsEffect(
          activeDotColor: TColors.light,
          dotHeight: 6,
        ),
      ),
    );
  }
}
