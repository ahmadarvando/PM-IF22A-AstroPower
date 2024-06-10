import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/widgets/login_signUp/form_divaider.dart';
import 'package:flutter_application_1/common/widgets/login_signUp/socialbutton.dart';
import 'package:flutter_application_1/features/authentication/screens/login/verifikasi/verify_email.dart';
import 'package:flutter_application_1/utils/constants/colors.dart';
import 'package:flutter_application_1/utils/constants/size.dart';
import 'package:flutter_application_1/utils/constants/text_string.dart';
import 'package:flutter_application_1/utils/helpers/helper_function.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool iagree = false; // Deklarasi variabel iagree di luar method build

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///Title
              Text(TTexts.signupTitle,
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: TSize.spaceBtwSection),

              ///Form
              Form(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            expands: false,
                            decoration: const InputDecoration(
                              labelText: TTexts.firstname,
                              prefixIcon: Icon(Iconsax.user),
                            ),
                          ),
                        ),
                        const SizedBox(width: TSize.spaceBtwInputFields),
                        Expanded(
                          child: TextFormField(
                            expands: false,
                            decoration: const InputDecoration(
                              labelText: TTexts.lastname,
                              prefixIcon: Icon(Iconsax.user),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: TSize.spaceBtwInputFields),

                    ///username
                    TextFormField(
                      expands: false,
                      decoration: const InputDecoration(
                        labelText: TTexts.userName,
                        prefixIcon: Icon(Iconsax.user_edit),
                      ),
                    ),
                    const SizedBox(height: TSize.spaceBtwInputFields),

                    ///Email
                    TextFormField(
                      expands: false,
                      decoration: const InputDecoration(
                        labelText: TTexts.email,
                        prefixIcon: Icon(Iconsax.direct),
                      ),
                    ),
                    const SizedBox(height: TSize.spaceBtwInputFields),

                    ///Phone Number
                    TextFormField(
                      expands: false,
                      decoration: const InputDecoration(
                        labelText: TTexts.phoneno,
                        prefixIcon: Icon(Iconsax.call),
                      ),
                    ),
                    const SizedBox(height: TSize.spaceBtwInputFields),

                    ///Password
                    TextFormField(
                      expands: false,
                      decoration: const InputDecoration(
                        labelText: TTexts.password,
                        prefixIcon: Icon(Iconsax.password_check),
                        suffixIcon: Icon(Iconsax.eye_slash),
                      ),
                    ),
                    const SizedBox(height: TSize.spaceBtwInputFields),

                    /// Terms&Condition Checkbox
                    Row(
                      children: [
                        SizedBox(
                          width: 24,
                          height: 24,
                          child: Checkbox(
                            value: iagree,
                            onChanged: (bool? newValue) {
                              setState(() {
                                iagree = newValue!;
                              });
                            },
                          ),
                        ),
                        const SizedBox(
                          width: TSize.spaceBtwItems,
                        ),
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                  text: TTexts.iagreeto,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .apply(color: TColors.textPrimary)),
                              TextSpan(
                                  text: TTexts.PrivacyPolice,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .apply(
                                        color: dark
                                            ? TColors.Primary
                                            : TColors.info,
                                        decoration: TextDecoration.underline,
                                        decorationColor: dark
                                            ? TColors.Primary
                                            : TColors.info,
                                      )),
                              TextSpan(
                                  text: TTexts.and,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .apply(color: TColors.textPrimary)),
                              TextSpan(
                                  text: TTexts.TermOfUse,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .apply(
                                        color: dark
                                            ? TColors.Primary
                                            : TColors.info,
                                        decoration: TextDecoration.underline,
                                        decorationColor: dark
                                            ? TColors.Primary
                                            : TColors.info,
                                      )),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: TSize.spaceBtwInputFields),

                    /// Sign Up Button
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () =>
                            Get.to(() => const VerifyEmailScreen()),
                        child: const Text(TTexts.creatAccount),
                      ),
                    ),
                    const SizedBox(height: TSize.spaceBtwSection),

                    /// Divider
                    formDivaider(),

                    ///Footer
                    socialButton()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
