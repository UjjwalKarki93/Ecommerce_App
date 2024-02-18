import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({
    super.key,
    required this.text,
    this.icon,
    this.showBackground = true,
    this.showBorder = true,
  });
  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.all(AppSizes.defaultSpace),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(AppSizes.md),
        decoration: BoxDecoration(
          color: showBackground
              ? dark
                  ? EColors.dark
                  : EColors.light
              : Colors.transparent,
          borderRadius: BorderRadius.circular(AppSizes.cardRadiusLg),
          border: showBorder ? Border.all(color: EColors.grey) : null,
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: EColors.darkGrey,
            ),
            const SizedBox(width: AppSizes.spaceBtwItems),
            Text(
              text,
              style: Theme.of(context).textTheme.bodySmall,
            )
          ],
        ),
      ),
    );
  }
}
