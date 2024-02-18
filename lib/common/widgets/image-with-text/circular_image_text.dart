import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';

class CircularImageTextList extends StatelessWidget {
  const CircularImageTextList({
    super.key,
    required this.title,
    required this.image,
    this.onTap,
    this.textColor = EColors.white,
    this.backgroundColor = EColors.white,
  });

  final String title, image;
  final VoidCallback? onTap;
  final Color textColor;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: AppSizes.spaceBtwItems),
      child: Column(
        // circular icon
        children: [
          GestureDetector(
            onTap: onTap,
            child: Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(AppSizes.sm),
              decoration: BoxDecoration(
                color: backgroundColor ??
                    (HelperFunctions.isDarkMode(context)
                        ? EColors.black
                        : EColors.white),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(height: AppSizes.spaceBtwItems / 2),

          /// Category text
          SizedBox(
            width: 58,
            child: Text(
              title,
              style: Theme.of(context).textTheme.labelMedium!.apply(
                    color: textColor,
                  ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
