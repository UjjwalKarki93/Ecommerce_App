import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_app/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:ecommerce_app/common/widgets/images/rounded_rect_image.dart';
import 'package:ecommerce_app/features/shop/controllers/home_slider_controller.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PromoSlider extends StatelessWidget {
  const PromoSlider({
    super.key,
    required this.promoBanners,
  });

  final List<String> promoBanners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeSliderController());
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, _) =>
                controller.updateSliderIndicator(index),
          ),
          items:
              promoBanners.map((e) => RoundedRectImage(imageUrl: e)).toList(),
        ),
        const SizedBox(height: AppSizes.spaceBtwItems),
        Obx(
          () => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < promoBanners.length; i++)
                CircularContainer(
                  backgroundColor: controller.sliderCurrentIndex.value == i
                      ? EColors.primary
                      : EColors.grey,
                  width: 20,
                  height: 4,
                  margin: const EdgeInsets.only(right: 10),
                )
            ],
          ),
        )
      ],
    );
  }
}
