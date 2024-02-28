import 'package:ecommerce_app/common/widgets/ListTiles/settings_menu_tile.dart';
import 'package:ecommerce_app/common/widgets/ListTiles/user_profile_tile.dart';
import 'package:ecommerce_app/common/widgets/appbar/custom_appbar.dart';
import 'package:ecommerce_app/common/widgets/custom_shapes/container/primary_header_container.dart';

import 'package:ecommerce_app/common/widgets/texts/section_header.dart';
import 'package:ecommerce_app/features/personalization/screens/address/address.dart';
import 'package:ecommerce_app/features/personalization/screens/profile/profile.dart';
import 'package:ecommerce_app/features/shop/screens/order/order.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';

import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// -- header
            PrimaryHeaderContainer(
                child: Column(
              children: [
                CustomAppBar(
                  title: Text(
                    'Account',
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .apply(color: EColors.white),
                  ),
                ),

                /// -----------Profile Card-------------
                UserProfileTile(
                    onPressed: () => Get.to(() => const UserProfileScreen())),
                const SizedBox(height: AppSizes.spaceBtwSections),
              ],
            )),

            /// -- body

            /// ---------settings menu list
            Padding(
              padding: const EdgeInsets.all(AppSizes.defaultSpace),
              child: Column(
                children: [
                  /// ----- account setting section header
                  const SectionHeader(
                    sectionTitle: 'Account Settings',
                    showActionBUtton: false,
                  ),
                  const SizedBox(height: AppSizes.spaceBtwItems),

                  /// ----- Account Settings List --------
                  MenuTile(
                    leadingIcon: Iconsax.safe_home,
                    title: 'My Addresses',
                    subTitle: 'Set your delivery address',
                    onTap: () => Get.to(() => const AddressScreen()),
                  ),
                  MenuTile(
                    leadingIcon: Iconsax.shopping_cart,
                    title: 'My Cart',
                    subTitle: 'Add , remove products and move to checkout',
                    onTap: () {},
                  ),
                  MenuTile(
                    leadingIcon: Iconsax.bag_tick,
                    title: 'My Orders',
                    subTitle: 'Track your orders',
                    onTap: () => Get.to(() => const OrderScreen()),
                  ),
                  MenuTile(
                    leadingIcon: Iconsax.bank,
                    title: 'Bank Account',
                    subTitle: 'Withdraw balance to your account',
                    onTap: () {},
                  ),
                  MenuTile(
                    leadingIcon: Iconsax.discount_shape,
                    title: 'My Coupons',
                    subTitle: 'List of all discount coupons',
                    onTap: () {},
                  ),
                  MenuTile(
                    leadingIcon: Iconsax.notification,
                    title: 'Notifications',
                    subTitle: 'Set any kind of notification messages',
                    onTap: () {},
                  ),
                  MenuTile(
                    leadingIcon: Iconsax.security_card,
                    title: 'Account Privacy',
                    subTitle: 'Manage  data usage and connected accounts',
                    onTap: () {},
                  ),

                  /// -----App Settings -----
                  const SizedBox(height: AppSizes.spaceBtwSections),
                  const SectionHeader(
                      sectionTitle: 'App Settings', showActionBUtton: false),
                  const SizedBox(height: AppSizes.spaceBtwItems),
                  MenuTile(
                    leadingIcon: Iconsax.location,
                    title: 'Geolocation',
                    subTitle: 'Set recommendations based on location',
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),
                  MenuTile(
                    leadingIcon: Iconsax.security_user,
                    title: 'Safe Mode',
                    subTitle: 'Safe search for users of all ages',
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),
                  MenuTile(
                      leadingIcon: Iconsax.image,
                      title: 'Enable HD Image Quality',
                      subTitle: 'Upload your data to cloud firebase',
                      trailing: Switch(value: false, onChanged: (value) {})),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
