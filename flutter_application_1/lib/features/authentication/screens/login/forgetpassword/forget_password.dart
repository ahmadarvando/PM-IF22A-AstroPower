import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/authentication/screens/login/forgetpassword/rest_password.dart';
import 'package:flutter_application_1/utils/constants/size.dart';
import 'package:flutter_application_1/utils/constants/text_string.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(TSize.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Heading
            Text(
              TTexts.forgetPasswordSub,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: TSize.spaceBtwItems),

            Text(
              TTexts.forgetPasswordTitle,
              style: Theme.of(context).textTheme.labelMedium,
            ),
            const SizedBox(height: TSize.spaceBtwItems * 2),

            /// Text field
            TextField(
              decoration: InputDecoration(
                labelText: TTexts.email,
                prefixIcon: Icon(Iconsax.direct_right),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: TSize.spaceBtwSection),

            /// Submit Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.off(() => ResetPassword()),
                child: const Text(TTexts.submit),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
