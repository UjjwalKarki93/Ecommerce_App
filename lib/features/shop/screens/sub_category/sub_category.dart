import 'package:ecommerce_app/common/widgets/appbar/custom_appbar.dart';
import 'package:ecommerce_app/common/widgets/images/rounded_rect_image.dart';
import 'package:ecommerce_app/common/widgets/products/product_cards/card_horizontal.dart';
import 'package:ecommerce_app/common/widgets/texts/section_header.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class SubCategoryScreen extends StatelessWidget {
  const SubCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text('Sports shirts'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              /// banner
              const RoundedRectImage(
                  width: double.infinity,
                  imageUrl: EImages.promoBanner3,
                  applyImageRadius: true),
              const SizedBox(height: AppSizes.spaceBtwSections),

              /// sub-categories
              Column(
                children: [
                  SectionHeader(
                      sectionTitle: 'Sports shirts', onPressed: () {}),
                  const SizedBox(height: AppSizes.md),
                  const HorizontalProductCard(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
