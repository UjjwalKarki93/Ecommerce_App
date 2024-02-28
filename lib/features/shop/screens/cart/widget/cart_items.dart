import 'package:flutter/material.dart';

import '../../../../../common/widgets/products/cart/add_remove_button.dart';
import '../../../../../common/widgets/products/cart/cart_item.dart';
import '../../../../../common/widgets/texts/product_price_text.dart';
import '../../../../../utils/constants/sizes.dart';

class CartItemsList extends StatelessWidget {
  const CartItemsList({
    super.key,
    this.showAddRemove = true,
  });
  final bool showAddRemove;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (_, __) => const SizedBox(
        height: AppSizes.spaceBtwSections,
      ),
      itemCount: 4,
      itemBuilder: (_, __) => Column(
        children: [
          const CartItem(),
          if (showAddRemove) const SizedBox(height: AppSizes.spaceBtwItems),

          /// add or remove item  from cart
          if (showAddRemove)
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(width: 70),
                    AddRemoveButton(),
                  ],
                ),
                ProductPriceText(price: '200')
              ],
            )
        ],
      ),
    );
  }
}
