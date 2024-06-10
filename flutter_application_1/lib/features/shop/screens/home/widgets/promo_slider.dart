import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/widgets/custom_shape/containers/circular_container.dart';
import 'package:flutter_application_1/common/widgets/images/t_rounded_images.dart';
import 'package:flutter_application_1/features/shop/controllers/home_controller.dart';
import 'package:flutter_application_1/utils/constants/colors.dart';
import 'package:flutter_application_1/utils/constants/size.dart';
import 'package:get/get.dart';

class TPromoSlider extends StatelessWidget {
  const TPromoSlider({
    Key? key,
    required this.banners,
  }) : super(key: key);

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());

    return Padding(
      padding: const EdgeInsets.all(TSize.defaultSpace),
      child: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              viewportFraction: 1,
              onPageChanged: (index, _) =>
                  controller.updatePageIndicator(index),
            ),
            items: banners.map((url) {
              return TRoundedImage(imageUrl: url);
            }).toList(),
          ),
          const SizedBox(height: TSize.spaceBtwItems),
          Center(
            child: Obx(
              () => Row(
                mainAxisSize: MainAxisSize.min,
                children: List.generate(banners.length, (i) {
                  return TCircularContainer(
                    width: 20,
                    height: 4,
                    margin: const EdgeInsets.only(right: 10),
                    backgroundColor: controller.carousalCurrentIndex.value == i
                        ? const Color.fromARGB(255, 21, 99, 255)
                        : TColors.accent,
                  );
                }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
