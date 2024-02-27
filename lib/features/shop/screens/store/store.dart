import 'package:ecommerce_app/common/widgets/appbar/custom_appbar.dart';
import 'package:ecommerce_app/common/widgets/appbar/tabbar.dart';

import 'package:ecommerce_app/common/widgets/custom_shapes/container/search_container.dart';
import 'package:ecommerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerce_app/common/widgets/products/cart/cart_menu_icon.dart';

import 'package:ecommerce_app/common/widgets/texts/section_header.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';

import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/brands/brand_card.dart';
import 'widgets/category_tab.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: CustomAppBar(
          title:
              Text('Store', style: Theme.of(context).textTheme.headlineMedium),
          actions: [
            CartCountIcon(
              onPressedIcon: () {},
            )
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                expandedHeight: 440,
                backgroundColor: HelperFunctions.isDarkMode(context)
                    ? EColors.black
                    : EColors.white,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(AppSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      /// --search bar
                      const SearchContainer(
                        text: 'Search in the store',
                        showBorder: true,
                        showBackground: false,
                        padding: EdgeInsets.zero,
                      ),
                      const SizedBox(height: AppSizes.spaceBtwSections),

                      /// ---featured brands
                      const SectionHeader(sectionTitle: 'Featured Brands'),

                      /// -- brands grid
                      GridLayout(
                          mainAxisExtent: 80,
                          itemBuilder: (_, index) {
                            return const BrandCard();
                          },
                          itemCount: 4),
                    ],
                  ),
                ),
                bottom: const CustomTabBar(tabs: [
                  Tab(text: 'Sports'),
                  Tab(text: 'Furnitures'),
                  Tab(text: 'Electronics'),
                  Tab(text: 'Cosmetics'),
                  Tab(text: 'Clothes'),
                ]),
              )
            ];
          },
          body: const TabBarView(children: [
            CategoryTab(),
            CategoryTab(),
            CategoryTab(),
            CategoryTab(),
            CategoryTab(),
          ]),
        ),
      ),
    );
  }
}
