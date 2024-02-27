import 'package:ecommerce_app/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';

class SingleAddress extends StatelessWidget {
  const SingleAddress({super.key, required this.isSelected});
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return RoundedContainer(
      width: double.infinity,
      showBorder: true,
      backgroundColor:
          isSelected ? Colors.purple.withOpacity(0.5) : Colors.transparent,
      borderColor: isSelected
          ? Colors.transparent
          : dark
              ? EColors.darkerGrey
              : EColors.darkGrey,
      marging: const EdgeInsets.only(bottom: AppSizes.spaceBtwItems),
      padding: const EdgeInsets.all(AppSizes.md),
      child: Stack(
        children: [
          Positioned(
            top: 3,
            right: 0,
            child: Icon(isSelected ? Iconsax.tick_circle : null,
                color: isSelected
                    ? dark
                        ? EColors.light
                        : EColors.dark
                    : null),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Ujjwal Karki',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: AppSizes.spaceBtwItems / 2),
              const Text('(+977 9812345678)',
                  maxLines: 1, overflow: TextOverflow.ellipsis),
              const SizedBox(height: AppSizes.spaceBtwItems / 2),
              const Text('4466 Balambu,Kathmandu,Nepal', softWrap: true),
            ],
          )
        ],
      ),
    );
  }
}
