import 'package:ecommerce_app/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:ecommerce_app/common/widgets/custom_shapes/container/search_container.dart';
import 'package:ecommerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerce_app/common/widgets/products/product_cards/card_vertical.dart';

import 'package:ecommerce_app/common/widgets/texts/section_header.dart';
import 'package:ecommerce_app/features/shop/screens/All_product/all_product.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';

import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:iconsax/iconsax.dart';

import 'widgets/categories_list.dart';
import 'widgets/home_appbar.dart';
import 'widgets/promo_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// header
            const PrimaryHeaderContainer(
              child: Column(
                children: [
                  /// app bar
                  HomeAppBar(),

                  /// search bar
                  SearchContainer(
                    text: 'Search Items',
                    icon: Iconsax.search_favorite,
                  ),
                  SizedBox(height: AppSizes.spaceBtwItems),

                  /// categories
                  Padding(
                    padding: EdgeInsets.only(left: AppSizes.defaultSpace),
                    child: Column(
                      children: [
                        /// ------Heading
                        SectionHeader(
                          showActionBUtton: false,
                          sectionTitle: "Popular Categories",
                          textColor: Colors.white,
                        ),
                        SizedBox(height: AppSizes.spaceBtwItems),

                        /// --------categories list
                        HomeCategoriesList(),
                        SizedBox(height: AppSizes.spaceBtwSections)
                      ],
                    ),
                  )
                ],
              ),
            ),

            /// body part
            Padding(
              padding: const EdgeInsets.all(AppSizes.defaultSpace),
              child: Column(
                children: [
                  const PromoSlider(
                    promoBanners: [
                      EImages.promoBanner1,
                      EImages.promoBanner2,
                      EImages.promoBanner3,
                    ],
                  ),
                  const SizedBox(height: AppSizes.spaceBtwSections),
                  SectionHeader(
                    sectionTitle: "Trending Products",
                    textColor: isDark ? EColors.white : EColors.black,
                    onPressed: () => Get.to(() => const AllProductScreen()),
                  ),

                  /// vertical product cards in a grid layout
                  GridLayout(
                    itemCount: 4,
                    itemBuilder: (_, index) => const ProductCardsVertical(),
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
