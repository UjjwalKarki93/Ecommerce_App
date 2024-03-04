import 'package:ecommerce_app/common/styles/shadows.dart';
import 'package:ecommerce_app/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:ecommerce_app/common/widgets/images/rounded_rect_image.dart';
import 'package:ecommerce_app/common/widgets/texts/product_title_text.dart';
import 'package:ecommerce_app/features/shop/screens/product_details/product_detail.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../icons/circular_icon.dart';
import '../../texts/brand_tiltle_text_with_verified_icon.dart';
import '../../texts/product_price_text.dart';

class ProductCardsVertical extends StatelessWidget {
  const ProductCardsVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: () => Get.to(() => const ProductDetailsScreen()),
      child: Container(
        width: 180,
        decoration: BoxDecoration(
          boxShadow: [CardShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(AppSizes.productImageRadius),
          color: isDark ? EColors.darkerGrey : EColors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// this container will contain: thumbnail,wishist button,discount tag
            RoundedContainer(
              height: 180,
              backgroundColor: isDark ? EColors.darkerGrey : EColors.white,
              child: Stack(
                children: [
                  /// -----Thumbnail Image
                  const RoundedRectImage(
                    imageUrl: EImages.productImage1,
                    applyImageRadius: true,
                    padding: EdgeInsets.all(AppSizes.sm),
                  ),

                  /// ----Sale Tag
                  Positioned(
                    top: 12,
                    left: 5,
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
            const SizedBox(height: AppSizes.spaceBtwItems / 2),

            /// --- product details
            const Padding(
              padding: EdgeInsets.only(left: AppSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProductTitleText(
                    title: 'Goldstar Hiking Shoes',
                    smallSize: true,
                  ),

                  /// -- manufacturer with verfied icon
                  BrandTitleWithVerfiedIcon(
                    title: 'GoldStar',
                  ),
                ],
              ),
            ),

            /// Adding spacer to keep height of the each box same incase product detail heading is of 1 0r 2 line
            const Spacer(),

            /// --- price tag & addToCART icon
            Padding(
              padding: const EdgeInsets.only(left: AppSizes.sm),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  /// price tag
                  const ProductPriceText(
                    price: '36.67',
                  ),

                  /// add button
                  Container(
                    decoration: const BoxDecoration(
                        color: EColors.black,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(AppSizes.cardRadiusMd),
                            bottomRight:
                                Radius.circular(AppSizes.productImageRadius))),
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
              ),
            )
          ],
        ),
      ),
    );
  }
}
