import 'package:ecommerce_app/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:ecommerce_app/common/widgets/images/rounded_rect_image.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../features/shop/screens/product_details/product_detail.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../styles/shadows.dart';
import '../../icons/circular_icon.dart';

class HorizontalProductCard extends StatelessWidget {
  const HorizontalProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () => Get.to(() => const ProductDetailsScreen()),
      child: Container(
        width: 320,
        decoration: BoxDecoration(
          boxShadow: [CardShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(AppSizes.productImageRadius),
          color: isDark ? EColors.darkerGrey : EColors.white,
        ),
        child: Row(
          children: [
            /// Thumbnail
            RoundedContainer(
              height: 120,
              padding: const EdgeInsets.all(AppSizes.md),
              backgroundColor: isDark ? EColors.dark : EColors.light,
              child: Stack(
                children: [
                  SizedBox(
                    height: 120,
                    width: 120,
                    child: RoundedRectImage(
                        imageUrl: EImages.productImage1,
                        applyImageRadius: true),
                  ),

                  /// ----Sale Tag
                  Positioned(
                    top: 8,
                    left: 1,
                    child: RoundedContainer(
                      radius: AppSizes.sm,
                      backgroundColor: EColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                          horizontal: AppSizes.sm, vertical: AppSizes.xs),
                      child: const Text('25%'),
                    ),
                  ),

                  /// -----Favourite Icon Button
                  const Positioned(
                    top: 0,
                    right: 0,
                    child: CircularIcon(
                      icon: Iconsax.heart5,
                      iconColor: Colors.red,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
