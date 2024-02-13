import 'package:ecommerce_app/features/authentication/controllers/onBoarding/onboarding_controller.dart';
import 'package:ecommerce_app/features/authentication/screens/onBoarding/custom_widgets/onboarding_circular_button.dart';
import 'package:ecommerce_app/features/authentication/screens/onBoarding/custom_widgets/onboarding_dot_navigation.dart';
import 'package:ecommerce_app/features/authentication/screens/onBoarding/custom_widgets/onboarding_page.dart';
import 'package:ecommerce_app/features/authentication/screens/onBoarding/custom_widgets/onboarding_skip.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';

import 'package:ecommerce_app/utils/constants/text_strings.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardController());
    return Scaffold(
      body: Stack(
        children: [
          /// horizontal scrollable pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardViewPage(
                image: EImages.onBoardingImage1,
                title: Texts.onBoardingTitle1,
                subTitle: Texts.onBoardingSubTitle1,
              ),
              OnBoardViewPage(
                image: EImages.onBoardingImage2,
                title: Texts.onBoardingTitle2,
                subTitle: Texts.onBoardingSubTitle2,
              ),
              OnBoardViewPage(
                image: EImages.onBoardingImage3,
                title: Texts.onBoardingTitle3,
                subTitle: Texts.onBoardingSubTitle3,
              ),
            ],
          ),

          ///  skip button
          const OnBoardSkip(),

          ///  dot navigation smoothPageIndicator
          const OnBoardDotNavigation(),

          /// circular button
          const OnBoardCircularButton()
        ],
      ),
    );
  }
}
