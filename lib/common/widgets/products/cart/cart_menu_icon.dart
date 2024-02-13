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
    return Stack(
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Iconsax.shopping_bag),
          color: EColors.white,
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
