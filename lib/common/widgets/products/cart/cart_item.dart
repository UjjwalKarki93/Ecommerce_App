import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../images/rounded_rect_image.dart';
import '../../texts/brand_tiltle_text_with_verified_icon.dart';
import '../../texts/product_title_text.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final bool isDark = HelperFunctions.isDarkMode(context);
    return Row(
      children: [
        /// image inside rounded container
        RoundedRectImage(
          imageUrl: EImages.productImage1,
          width: 60,
          height: 60,
          backgroundColor: isDark ? EColors.darkGrey : EColors.white,
        ),
        const SizedBox(width: AppSizes.spaceBtwItems),

        /// titlr , price and size
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BrandTitleWithVerfiedIcon(title: 'Goldstar Nikey'),
              const ProductTitleText(
                  title: 'Green goldstar nikey shoe', maxLines: 1),

              /// attributes
              Text.rich(TextSpan(children: [
                TextSpan(
                    text: 'Color ',
                    style: Theme.of(context).textTheme.bodySmall),
                TextSpan(
                    text: ' Green',
                    style: Theme.of(context).textTheme.bodyLarge),
                TextSpan(
                    text: ' Size ',
                    style: Theme.of(context).textTheme.bodySmall),
                TextSpan(
                    text: ' 7', style: Theme.of(context).textTheme.bodyLarge),
              ]))
            ],
          ),
        )
      ],
    );
  }
}
