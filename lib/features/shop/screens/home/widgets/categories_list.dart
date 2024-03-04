import 'package:ecommerce_app/common/widgets/image-with-text/circular_image_text.dart';
import 'package:ecommerce_app/features/shop/screens/sub_category/sub_category.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeCategoriesList extends StatelessWidget {
  const HomeCategoriesList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (_, index) {
          return CircularImageTextList(
            title: 'category',
            image: EImages.acerlogo,
            onTap: () => Get.to(() => const SubCategoryScreen()),
          );
        },
      ),
    );
  }
}
