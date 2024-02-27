import 'package:ecommerce_app/common/widgets/chips/choice_chip.dart';
import 'package:ecommerce_app/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:ecommerce_app/common/widgets/texts/product_price_text.dart';
import 'package:ecommerce_app/common/widgets/texts/product_title_text.dart';
import 'package:ecommerce_app/common/widgets/texts/section_header.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class ProductAttributes extends StatelessWidget {
  const ProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunctions.isDarkMode(context);
    return Column(
      children: [
        /// -- Selected attribute pricing % description
        RoundedContainer(
          padding: const EdgeInsets.all(AppSizes.sm),
          backgroundColor: isDark ? EColors.darkerGrey : EColors.grey,
          child: Row(
            children: [
              const SectionHeader(
                  sectionTitle: 'Variation', showActionBUtton: false),
              const SizedBox(width: AppSizes.spaceBtwItems),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// price attribute
                  Row(
                    children: [
                      const ProductTitleText(title: 'Price :', smallSize: true),
                      const SizedBox(width: AppSizes.spaceBtwItems),
                      // Actual price
                      Text(
                        '\$25',
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall!
                            .apply(decoration: TextDecoration.lineThrough),
                      ),
                      const SizedBox(width: AppSizes.spaceBtwItems),
                      // Sale price
                      const ProductPriceText(price: '20'),
                    ],
                  ),

                  /// stock status
                  Row(
                    children: [
                      const ProductTitleText(title: 'Stock :', smallSize: true),
                      const SizedBox(width: AppSizes.spaceBtwItems),
                      Text('In Stock',
                          style: Theme.of(context).textTheme.titleMedium)
                    ],
                  )
                ],
              )
            ],
          ),
        ),
        const SizedBox(height: AppSizes.spaceBtwItems),

        /// --Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SectionHeader(
                sectionTitle: 'Available Colors', showActionBUtton: false),
            const SizedBox(height: AppSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 6,
              children: [
                ChoiceChipWidget(
                    text: 'Blue', selected: true, onSelected: (f) {}),
                ChoiceChipWidget(
                    text: 'Red', selected: false, onSelected: (f) {}),
                ChoiceChipWidget(
                    text: 'Green', selected: true, onSelected: (f) {}),
                ChoiceChipWidget(
                    text: 'Yellow', selected: false, onSelected: (f) {}),
              ],
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SectionHeader(sectionTitle: 'Sizes', showActionBUtton: false),
            const SizedBox(height: AppSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 6,
              children: [
                ChoiceChipWidget(text: '7', selected: true, onSelected: (f) {}),
                ChoiceChipWidget(
                    text: '8', selected: false, onSelected: (f) {}),
                ChoiceChipWidget(
                    text: '9', selected: false, onSelected: (f) {}),
                ChoiceChipWidget(
                    text: '10', selected: false, onSelected: (f) {}),
              ],
            )
          ],
        )
      ],
    );
  }
}
