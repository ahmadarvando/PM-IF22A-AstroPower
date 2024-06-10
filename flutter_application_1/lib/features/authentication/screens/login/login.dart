import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/styles/spacing_styles.dart';
import 'package:flutter_application_1/common/widgets/login_signUp/form_divaider.dart';
import 'package:flutter_application_1/common/widgets/login_signUp/socialbutton.dart';
import 'package:flutter_application_1/features/authentication/screens/login/forgetpassword/forget_password.dart';
import 'package:flutter_application_1/features/authentication/screens/login/signup/signup.dart';
import 'package:flutter_application_1/features/authentication/screens/login/widgets/login_head.dart';
import 'package:flutter_application_1/navigation_mene.dart';
import 'package:flutter_application_1/utils/constants/size.dart';
import 'package:flutter_application_1/utils/constants/text_string.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isRememberMeChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// Logo, Title & Sub-title
              loginHead(),

              /// Form

              Form(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: TSize.spaceBtwSection),
                  child: Column(
                    children: [
                      /// Email
                      TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Iconsax.direct_right),
                          labelText: TTexts.email,
                        ),
                      ),
                      const SizedBox(height: TSize.spaceBtwInputFields),

                      /// Password
                      TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Iconsax.password_check),
                          labelText: TTexts.password,
                          suffixIcon: Icon(Iconsax.eye_slash),
                        ),
                      ),
                      const SizedBox(height: TSize.spaceBtwInputFields / 2),

                      /// Remember Me & Forget Password
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          /// Remember me
                          Row(
                            children: [
                              Checkbox(
                                value: _isRememberMeChecked,
                                onChanged: (bool? newValue) {
                                  setState(() {
                                    _isRememberMeChecked = newValue!;
                                  });
                                },
                              ),
                              const Text(TTexts.remembeMe),
                            ],
                          ),

                          /// Forget Password
                          TextButton(
                            onPressed: () => Get.to(
                              () => const ForgetPassword(),
                            ),
                            child: const Text(TTexts.forgetPassword),
                          ),
                        ],
                      ),
                      const SizedBox(height: TSize.spaceBtwSection),

                      /// Sign In Button
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () => Get.to(() => NavigationMenu()),
                          child: const Text(TTexts.sigIn),
                        ),
                      ),
                      const SizedBox(
                        height: TSize.spaceBtwItems,
                      ),

                      /// create Account Button
                      SizedBox(
                        width: double.infinity,
                        child: OutlinedButton(
                          onPressed: () => Get.to(() => const SignupScreen()),
                          child: const Text(TTexts.creatAccount),
                        ),
                      ),
                      const SizedBox(height: TSize.spaceBtwSection),
                    ],
                  ),
                ),
              ),

              /// Divaider
              formDivaider(),

              /// Footer
              socialButton()
            ],
          ),
        ),
      ),
    );
  }
}
