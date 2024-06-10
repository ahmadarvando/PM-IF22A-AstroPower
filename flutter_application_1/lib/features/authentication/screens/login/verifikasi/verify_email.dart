import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/authentication/screens/login/login.dart';
import 'package:flutter_application_1/features/authentication/screens/login/verifikasi/succes_screen.dart';
import 'package:flutter_application_1/utils/constants/colors.dart';
import 'package:flutter_application_1/utils/constants/image_string.dart';
import 'package:flutter_application_1/utils/constants/size.dart';
import 'package:flutter_application_1/utils/constants/text_string.dart';
import 'package:flutter_application_1/utils/helpers/helper_function.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.offAll(() => const LoginScreen()),
            icon: const Icon(CupertinoIcons.clear),
          )
        ],
      ),
      body: SingleChildScrollView(
        // Padding to give Default Equal on all sides in all screen.
        child: Padding(
          padding: EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            children: [
              /// Image
              Image(
                image: AssetImage(TImages.onBoardingImage1),
                width: THelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(height: TSize.spaceBtwSection),

              /// Title & Subtitle
              Text(
                TTexts.comfrimEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSize.spaceBtwItems),
              Text(
                'support@Vannn.com',
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSize.spaceBtwItems),
              Text(
                TTexts.comfrimEmailSubtitle,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .apply(color: TColors.textsecondary),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSize.spaceBtwSection),

              /// Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(
                      () => SuccessScreen(
                        image: TImages.onBoardingImage1,
                        title: TTexts.yourAccCreated,
                        subTitle: TTexts.yourAccCreatedSubtitle,
                        onPressed: () => Get.offAll(() => const LoginScreen()),
                      ),
                    );
                  },
                  child: const Text(TTexts.tcontinue),
                ),
              ),
              const SizedBox(height: TSize.spaceBtwItems),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () => Get.to(() => const VerifyEmailScreen()),
                  child: const Text(TTexts.tResand),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
