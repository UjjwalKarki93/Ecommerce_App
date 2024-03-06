import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/sizes.dart';
import '../../layouts/grid_layout.dart';
import '../product_cards/card_vertical.dart';

class SortableProducts extends StatelessWidget {
  const SortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// dropdown filter menu
        DropdownButtonFormField(
          decoration: const InputDecoration(prefixIcon: Icon(Iconsax.sort)),
          onChanged: (value) {},
          items: ['Name', 'Higher Price', 'Lower Price', 'Newest', 'Popularity']
              .map((e) => DropdownMenuItem(value: e, child: Text(e)))
              .toList(),
        ),
        const SizedBox(height: AppSizes.spaceBtwSections),

        /// Products
        GridLayout(
            itemCount: 10,
            itemBuilder: (_, index) => const ProductCardsVertical())
      ],
    );
  }
}
