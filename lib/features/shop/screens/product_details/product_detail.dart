import 'package:ecommerce_app/common/widgets/texts/section_header.dart';
import 'package:ecommerce_app/features/shop/screens/product_details/widgets/bottom_addtocart.dart';
import 'package:ecommerce_app/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:ecommerce_app/features/shop/screens/product_details/widgets/product_metadata.dart';
import 'package:ecommerce_app/features/shop/screens/product_reviews/product_review.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:readmore/readmore.dart';

import 'widgets/product_details_image_slider.dart';
import 'widgets/product_rating_review.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const ButtomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// - Proudct Image Slider
            const ProductDetailImageSlider(),

            /// -- Product Details
            Padding(
              padding: const EdgeInsets.only(
                  left: AppSizes.defaultSpace,
                  right: AppSizes.defaultSpace,
                  bottom: AppSizes.defaultSpace),
              child: Column(
                children: [
                  /// Ratings & reviews
                  const ProuctRatingReview(),

                  /// Price, title, stack % brand
                  const ProductMetaData(),
                  const SizedBox(height: AppSizes.spaceBtwItems),

                  /// Attributes
                  const ProductAttributes(),
                  const SizedBox(height: AppSizes.spaceBtwItems),

                  /// Checkout Buttton
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {}, child: const Text('Checkout'))),
                  const SizedBox(height: AppSizes.spaceBtwSections),

                  /// Description
                  const SectionHeader(
                      sectionTitle: 'Description', showActionBUtton: false),
                  const SizedBox(height: AppSizes.spaceBtwItems),
                  const ReadMoreText(
                      'This is a product description for Nike Sport shoes.There are more thing that can be added but for now just check readmore',
                      trimLength: 2,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: ' Show more',
                      trimExpandedText: '  Show less',
                      moreStyle: TextStyle(
                          fontSize: 14,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold),
                      lessStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic)),

                  /// Reviews
                  const Divider(),
                  const SizedBox(height: AppSizes.spaceBtwItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SectionHeader(
                          sectionTitle: 'Reviews (188)',
                          showActionBUtton: false),
                      IconButton(
                          onPressed: () {
                            Get.to(() => const ProductReviewScreen());
                          },
                          icon: const Icon(Icons.view_stream_rounded))
                    ],
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
