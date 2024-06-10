import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/authentication/controllers/onboarding_controllers.dart';
import 'package:flutter_application_1/utils/constants/size.dart';
import 'package:flutter_application_1/utils/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: TDeviceUtils.getAppBarHeight(),
      right: TSize.defaultSpace,
      child: TextButton(
        onPressed: () => OnBoardingController.instance.skipPage(),
        child: const Text('SKIP'),
      ),
    );
  }
}
