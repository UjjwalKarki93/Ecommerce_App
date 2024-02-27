import 'package:ecommerce_app/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:ecommerce_app/common/widgets/products/product_ratings/rating_bar_indicator.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunctions.isDarkMode(context);
    return Column(
      children: [
        /// (user info and more )section
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(
                    backgroundImage: AssetImage(EImages.userProfileImage2)),
                const SizedBox(width: AppSizes.spaceBtwItems),
                Text('Ujjwal Karki',
                    style: Theme.of(context).textTheme.titleLarge)
              ],
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
          ],
        ),

        /// Rating & date
        Row(
          children: [
            const CustomRatingBarIndicator(rating: 3.8),
            const SizedBox(width: AppSizes.spaceBtwItems),
            Text('23 Feb,2024', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: AppSizes.spaceBtwItems),

        /// user's review
        const ReadMoreText(
          'Overally , product was good.I liked the packaging and pace of deleivery on time which i didn\'t expect.I would like to give my full rating',
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimExpandedText: ' Show less',
          trimCollapsedText: ' Show more',
          moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),

        /// company's reply container
        const SizedBox(height: AppSizes.spaceBtwItems),
        RoundedContainer(
          backgroundColor: isDark ? EColors.darkGrey : EColors.light,
          padding: const EdgeInsets.all(AppSizes.md),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Goldy Store',
                      style: Theme.of(context).textTheme.titleMedium),
                  Text('30 Feb,2024',
                      style: Theme.of(context).textTheme.bodyMedium)
                ],
              ),
              const SizedBox(height: AppSizes.spaceBtwItems),
              const ReadMoreText(
                'Thank you for ypur kind feedback. We will try to improve more on the product delivery without degrading its quality.',
                trimLines: 2,
                trimMode: TrimMode.Line,
                trimExpandedText: ' Show less',
                trimCollapsedText: ' Show more',
                moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        )
      ],
    );
  }
}
