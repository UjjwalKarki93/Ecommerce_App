import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';

class CartCountIcon extends StatelessWidget {
  const CartCountIcon({
    super.key,
    this.iconColor = Colors.red,
    this.onPressedIcon,
  });
  final Color iconColor;
  final VoidCallback? onPressedIcon;

  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunctions.isDarkMode(context);
    return Stack(
      children: [
        IconButton(
          onPressed: onPressedIcon,
          icon: const Icon(Iconsax.shopping_bag),
          color: isDark ? EColors.white : EColors.black,
        ),
        Positioned(
          right: 0,
          child: Container(
            height: 18,
            width: 18,
            decoration: BoxDecoration(
                color: Colors.red, borderRadius: BorderRadius.circular(100)),
            child: Center(
              child: Text(
                '100',
                style: Theme.of(context)
                    .textTheme
                    .labelSmall!
                    .apply(color: EColors.white, fontSizeFactor: 0.8),
              ),
            ),
          ),
        )
      ],
    );
  }
}
