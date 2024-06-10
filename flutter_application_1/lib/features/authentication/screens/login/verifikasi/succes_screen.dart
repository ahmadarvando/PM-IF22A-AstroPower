import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/styles/spacing_styles.dart';
import 'package:flutter_application_1/utils/constants/colors.dart';
import 'package:flutter_application_1/utils/constants/size.dart';
import 'package:flutter_application_1/utils/constants/text_string.dart';
import 'package:flutter_application_1/utils/helpers/helper_function.dart';

class SuccessScreen extends StatelessWidget {
  final String image;
  final String title;
  final String subTitle;
  final VoidCallback onPressed;

  const SuccessScreen({
    Key? key,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth =
        MediaQuery.of(context).size.width; // Mengambil lebar layar
    final dark = THelperFunctions.isDarkMode(context); // Mengecek mode gelap

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight * 2,
          child: Column(
            children: [
              /// Image
              Image(
                image: AssetImage(image),
                width: screenWidth * 0.6,
              ),
              const SizedBox(height: TSize.spaceBtwSection),

              /// Title & Subtitle
              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSize.spaceBtwItems),

              Text(
                subTitle,
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                    color: dark ? TColors.textPrimary : TColors.textsecondary),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSize.spaceBtwSection),

              /// Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: onPressed,
                  child: const Text(TTexts.tcontinue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
