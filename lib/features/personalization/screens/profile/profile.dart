import 'package:ecommerce_app/common/widgets/appbar/custom_appbar.dart';
import 'package:ecommerce_app/common/widgets/images/circular_image.dart';
import 'package:ecommerce_app/common/widgets/texts/section_header.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'widgets/profile_menu.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text(
          'Profile',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                /// -----Profile picture ---------
                const CircularImage(
                  padding: 0,
                  image: EImages.user,
                  width: 100,
                  height: 1000,
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text('Change Your Profile Picture')),

                /// --Details-----
                const SizedBox(height: AppSizes.spaceBtwItems / 2),
                const Divider(),
                const SizedBox(height: AppSizes.spaceBtwItems),
                const SectionHeader(
                  sectionTitle: 'Profile Information',
                  showActionBUtton: false,
                ),
                const SizedBox(height: AppSizes.spaceBtwItems),

                ProfileMenuWidget(
                  title: 'Name',
                  value: 'Ujjwal Karki',
                  onPressed: () {},
                ),

                ProfileMenuWidget(
                  title: 'Username',
                  value: 'UjjwalKarki93',
                  onPressed: () {},
                ),
                const SizedBox(height: AppSizes.spaceBtwItems / 2),
                const Divider(),
                const SectionHeader(
                  sectionTitle: 'Personal Information',
                  showActionBUtton: false,
                ),
                const SizedBox(height: AppSizes.spaceBtwItems),
                ProfileMenuWidget(
                  title: 'User-ID',
                  value: '985655',
                  onPressed: () {},
                  icon: Iconsax.copy,
                ),

                ProfileMenuWidget(
                  title: 'E-mail',
                  value: 'ujwal.bdev@gmail.com',
                  onPressed: () {},
                ),

                ProfileMenuWidget(
                  title: 'Phone Number',
                  value: '+9779867053557',
                  onPressed: () {},
                ),
                ProfileMenuWidget(
                  title: 'Gender',
                  value: 'Male',
                  onPressed: () {},
                ),
                ProfileMenuWidget(
                  title: 'DOB',
                  value: '31 AUG,2000',
                  onPressed: () {},
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Delete Account',
                      style: TextStyle(color: Colors.red),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
