import 'package:ecommerce_app/common/widgets/appbar/custom_appbar.dart';
import 'package:ecommerce_app/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:ecommerce_app/common/widgets/success_screen/success_screen.dart';
import 'package:ecommerce_app/features/shop/screens/cart/widget/cart_items.dart';
import 'package:ecommerce_app/features/shop/screens/checkout/widget/billing_address_section.dart';
import 'package:ecommerce_app/features/shop/screens/checkout/widget/billing_payment_section.dart';
import 'package:ecommerce_app/features/shop/screens/order/order.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/products/cart/coupon.dart';
import 'widget/billing_amount.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: CustomAppBar(
        showBackArrow: true,
        title: Text('Order Review',
            style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              /// items in the cart
              const CartItemsList(showAddRemove: false),
              const SizedBox(height: AppSizes.spaceBtwSections),

              /// -- coupon text field
              const CouponCode(),
              const SizedBox(height: AppSizes.spaceBtwSections),

              /// --Billing section
              RoundedContainer(
                showBorder: true,
                backgroundColor: dark ? Colors.black : Colors.white,
                padding: const EdgeInsets.all(AppSizes.md),
                child: const Column(
                  children: [
                    /// pricing
                    BillingAmountSection(),
                    SizedBox(height: AppSizes.spaceBtwItems),

                    /// dicider
                    Divider(),
                    SizedBox(height: AppSizes.spaceBtwItems),

                    /// payment methods
                    BillingPaymentSection(),
                    SizedBox(height: AppSizes.spaceBtwItems),

                    /// adddress
                    BillingAddressSection(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(AppSizes.defaultSpace),
        child: ElevatedButton(
            onPressed: () => Get.to(
                  () => SuccessScreen(
                    image: EImages.successfulPaymentIcon,
                    title: 'Successful Payment !',
                    subTitle: 'Your item will be shipped soon',
                    onPressed: () => Get.offAll(() => const OrderScreen()),
                  ),
                ),
            child: const Text('Checkout \$2000.00')),
      ),
    );
  }
}
