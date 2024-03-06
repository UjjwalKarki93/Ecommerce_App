import 'package:ecommerce_app/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:ecommerce_app/common/widgets/images/rounded_rect_image.dart';
import 'package:ecommerce_app/common/widgets/texts/brand_tiltle_text_with_verified_icon.dart';
import 'package:ecommerce_app/common/widgets/texts/product_price_text.dart';
import 'package:ecommerce_app/common/widgets/texts/product_title_text.dart';
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
import '../../icons/circular_icon.dart';

class HorizontalProductCard extends StatelessWidget {
  const HorizontalProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () => Get.to(() => const ProductDetailsScreen()),
      child: Container(
        width: 310,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSizes.productImageRadius),
          color: isDark ? EColors.darkerGrey : EColors.lightContainer,
        ),
        child: Row(
          children: [
            /// Thumbnail
            RoundedContainer(
              height: 120,
              padding: const EdgeInsets.all(AppSizes.sm),
              backgroundColor: isDark ? EColors.darkerGrey : EColors.light,
              child: Stack(
                children: [
                  const SizedBox(
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
            ),

            /// --details
            SizedBox(
              width: 172,
              child: Padding(
                padding:
                    const EdgeInsets.only(top: AppSizes.sm, left: AppSizes.sm),
                child: Column(
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ProductTitleText(
                            title: 'Green Nike Half sleev shirt',
                            smallSize: true),
                        SizedBox(height: AppSizes.spaceBtwItems / 2),
                        BrandTitleWithVerfiedIcon(title: 'Nike')
                      ],
                    ),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const ProductPriceText(price: '230.03'),
                        Container(
                          decoration: const BoxDecoration(
                              color: EColors.black,
                              borderRadius: BorderRadius.only(
                                  topLeft:
                                      Radius.circular(AppSizes.cardRadiusMd),
                                  bottomRight: Radius.circular(
                                      AppSizes.productImageRadius))),
                          child: const SizedBox(
                            height: AppSizes.iconLg * 1.2,
                            width: AppSizes.iconLg * 1.2,
                            child: Icon(
                              Iconsax.add,
                              color: EColors.white,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
