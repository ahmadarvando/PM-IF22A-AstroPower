import 'package:flutter/material.dart';
import 'package:flutter_application_1/app.dart';
import 'package:flutter_application_1/features/authentication/controllers/onboarding_controllers.dart';
import 'package:get/get.dart';

void main() {
  Get.put(OnBoardingController()); // Inisialisasi OnBoardingController
  runApp(App());
}
