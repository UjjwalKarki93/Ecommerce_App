import 'package:ecommerce_app/common/widgets/appbar/custom_appbar.dart';
import 'package:ecommerce_app/features/personalization/screens/address/widget/add_address.dart';
import 'package:ecommerce_app/features/personalization/screens/address/widget/single_address.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.to(() => const AddNewAddressForm()),
        backgroundColor: Colors.green,
        child: const Icon(Iconsax.add, color: Colors.white),
      ),
      appBar: CustomAppBar(
        title: Text('Your Addresses',
            style: Theme.of(context).textTheme.headlineSmall),
        showBackArrow: true,
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              SingleAddress(isSelected: true),
              SingleAddress(isSelected: false),
            ],
          ),
        ),
      ),
    );
  }
}
