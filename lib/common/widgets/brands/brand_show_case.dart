import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../custom_shapes/container/rounded_container.dart';
import 'brand_card.dart';

class BrandShowCase extends StatelessWidget {
  const BrandShowCase({
    super.key,
    required this.images,
  });
  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      showBorder: true,
      borderColor: EColors.darkGrey,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(AppSizes.sm),
      child: Column(
        children: [
          /// --brand card with product count
          const BrandCard(showBorder: false),

          /// Brand top3 profucts display
          Row(
              children: images
                  .map((image) => brandTopProductsImageWidet(image, context))
                  .toList())
        ],
      ),
    );
  }
}

Widget brandTopProductsImageWidet(String image, context) {
  return Expanded(
    child: RoundedContainer(
      height: 100,
      backgroundColor: HelperFunctions.isDarkMode(context)
          ? EColors.darkGrey
          : EColors.white,
      padding: const EdgeInsets.all(AppSizes.sm),
      marging: const EdgeInsets.only(right: AppSizes.sm),
      child: Image(
        fit: BoxFit.cover,
        image: AssetImage(image),
      ),
    ),
  );
}
