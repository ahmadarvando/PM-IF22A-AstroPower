import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/authentication/screens/onboarding/onboarding.dart';
import 'package:flutter_application_1/utils/theme/theme.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      //darkTheme: TAppTheme.darkTheme,
      home: const OnBoardingScreen(),
    );
  }
}
