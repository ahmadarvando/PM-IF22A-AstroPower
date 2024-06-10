import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/authentication/controllers/onboarding_controllers.dart';
import 'package:flutter_application_1/utils/constants/size.dart';
import 'package:flutter_application_1/utils/device/device_utility.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: TSize.defaultSpace,
      bottom: TDeviceUtils.getBottomNavigationBarHeight() + TSize.defaultSpace,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: const CircleBorder(), backgroundColor: Colors.blue),
        onPressed: () => OnBoardingController.instance.nextPage(),
        child: Icon(Icons.arrow_forward), // Ganti dengan ikon bawaan Flutter
      ),
    );
  }
}
