import 'package:ecommerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerce_app/common/widgets/products/product_cards/card_vertical.dart';
import 'package:ecommerce_app/common/widgets/texts/section_header.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/brands/brand_show_case.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              /// --brand top3 product showcase
              const BrandShowCase(
                images: [
                  EImages.productImage10,
                  EImages.productImage9,
                  EImages.productImage13
                ],
              ),
              const SizedBox(height: AppSizes.spaceBtwItems),

              /// -- section heading:
              const SectionHeader(sectionTitle: 'You Might Also Like'),

              /// -- grid layout
              GridLayout(
                  itemBuilder: (_, index) => const ProductCardsVertical(),
                  itemCount: 8),
              const SizedBox(
                height: AppSizes.spaceBtwSections,
              )
            ],
          ),
        ),
      ],
    );
  }
}
