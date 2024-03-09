import 'package:ecommerce_app/common/widgets/loaders/animation_loader.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FullScreenLoader {
  static void openLoadingDialog(String text, String animation) {
    showDialog(
        context: Get.overlayContext!,
        barrierDismissible:
            false, // to make dialog undismissable when tapped outside
        builder: (_) => PopScope(
              canPop: false, // dosable popping with the bac arrow button
              child: Container(
                width: double.infinity,
                height: double.infinity,
                color: HelperFunctions.isDarkMode(Get.context!)
                    ? EColors.dark
                    : EColors.white,
                child: Column(
                  children: [
                    const SizedBox(height: 250),
                    AnimationLoaderWidget(
                      text: text,
                      animation: animation,
                    )
                  ],
                ),
              ),
            ));
  }

  /// method to stop currently opened loading page
  static stopLoadingPage() {
    Navigator.of(Get.overlayContext!).pop;
  }
}
