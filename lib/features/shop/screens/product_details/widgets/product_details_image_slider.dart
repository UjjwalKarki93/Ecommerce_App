import 'package:ecommerce_app/common/widgets/icons/circular_icon.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/appbar/custom_appbar.dart';
import '../../../../../common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import '../../../../../common/widgets/images/rounded_rect_image.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class ProductDetailImageSlider extends StatelessWidget {
  const ProductDetailImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunctions.isDarkMode(context);
    return CustomCurvedWIdget(
      child: Container(
        color: isDark ? EColors.darkerGrey : EColors.light,
        child: Stack(
          children: [
            /// Main large image
            const SizedBox(
                height: 400,
                child: Padding(
                  padding: EdgeInsets.all(AppSizes.productImageRadius * 2),
                  child: Center(
                      child: Image(image: AssetImage(EImages.productImage1))),
                )),

            /// Image Slider
            Positioned(
              bottom: 30,
              right: 0,
              left: AppSizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 6,
                  separatorBuilder: (_, __) => const SizedBox(
                    width: AppSizes.spaceBtwItems,
                  ),
                  itemBuilder: (_, index) => RoundedRectImage(
                    imageUrl: EImages.productImage7,
                    width: 80,
                    backgroundColor: isDark ? EColors.dark : EColors.white,
                    padding: const EdgeInsets.all(AppSizes.sm),
                    border: Border.all(color: EColors.primary),
                  ),
                ),
              ),
            ),

            /// Appbar icons
            const CustomAppBar(
              showBackArrow: true,
              actions: [
                CircularIcon(
                  icon: Iconsax.heart5,
                  iconColor: Colors.red,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
