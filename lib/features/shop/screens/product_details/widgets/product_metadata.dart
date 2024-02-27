import 'package:ecommerce_app/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:ecommerce_app/common/widgets/images/circular_image.dart';
import 'package:ecommerce_app/common/widgets/texts/brand_tiltle_text_with_verified_icon.dart';
import 'package:ecommerce_app/common/widgets/texts/product_price_text.dart';
import 'package:ecommerce_app/common/widgets/texts/product_title_text.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/enums.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class ProductMetaData extends StatelessWidget {
  const ProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Price and sales price
        Row(
          children: [
            /// Sale Tag
            RoundedContainer(
              radius: AppSizes.sm,
              backgroundColor: EColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(
                  horizontal: AppSizes.sm, vertical: AppSizes.xs),
              child: Text('25%',
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .apply(color: Colors.black)),
            ),
            const SizedBox(width: AppSizes.spaceBtwItems),

            /// Price
            const ProductPriceText(price: '250', lineThrough: true),

            const SizedBox(width: AppSizes.spaceBtwItems),
            const ProductPriceText(price: '175', isLarge: true),
          ],
        ),
        const SizedBox(height: AppSizes.spaceBtwItems),

        /// product TITLE
        const ProductTitleText(title: 'Green Nike Sport Shoes'),
        const SizedBox(height: AppSizes.spaceBtwItems / 3),

        /// STock Status
        const Row(
          children: [
            Text('Status:'),
            SizedBox(width: AppSizes.spaceBtwItems),
            Text('In Stock'),
          ],
        ),
        const SizedBox(height: AppSizes.spaceBtwItems / 3),

        /// Brand
        Row(
          children: [
            CircularImage(
              image: EImages.shoeIcon,
              width: 20,
              height: 20,
              overlayColor: isDark ? EColors.white : EColors.black,
            ),
            const SizedBox(height: AppSizes.spaceBtwItems),
            const BrandTitleWithVerfiedIcon(
                title: 'Nike', brandTextSize: TextSizes.medium)
          ],
        )
      ],
    );
  }
}
