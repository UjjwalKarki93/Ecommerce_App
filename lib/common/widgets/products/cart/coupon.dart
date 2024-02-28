import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../custom_shapes/container/rounded_container.dart';

class CouponCode extends StatelessWidget {
  const CouponCode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final bool dark = HelperFunctions.isDarkMode(context);
    return RoundedContainer(
      showBorder: true,
      backgroundColor: dark ? EColors.darkerGrey : EColors.light,
      padding: const EdgeInsets.only(top: 8, bottom: 8, right: 8, left: 16),
      child: Row(
        children: [
          /// text-filed
          const Flexible(
              child: TextField(
            decoration: InputDecoration(
              hintText: 'Have a promo code? Enter here',
              hintStyle: TextStyle(fontSize: 14),
              border: InputBorder.none,
            ),
          )),

          /// Button
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey.withOpacity(0.2),
                  side: BorderSide(color: Colors.grey.withOpacity(0.1)),
                  foregroundColor: dark
                      ? Colors.white.withOpacity(0.5)
                      : Colors.black.withOpacity(0.5)),
              child: const Text('Apply')),
        ],
      ),
    );
  }
}
