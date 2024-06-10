import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/authentication/screens/login/login.dart';
import 'package:get/get.dart'; // Pastikan Anda mengimpor LoginScreen jika belum

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find<OnBoardingController>();

  /// Variables
  final pageController = PageController();
  var currentPageIndex = 0.obs;

  /// Update Current Index when Page Scroll
  void dotNavigationClick(int index) {
    currentPageIndex.value = index;
    pageController.jumpToPage(index);
  }

  void updatePageIndicator(int index) {
    currentPageIndex.value = index;
  }

  /// Update Current Index and jump to next page
  /// Update Current Index and jump to next page
  void nextPage() {
    if (currentPageIndex.value == 2) {
      // Perbaikan disini
      Get.to(LoginScreen()); // Beralih ke layar login menggunakan GetX
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  /// Update Current Index & jump to the last page
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
