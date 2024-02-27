import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../images/circular_image.dart';

class UserProfileTile extends StatelessWidget {
  const UserProfileTile({
    super.key,
    this.onPressed,
  });
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircularImage(
        image: EImages.user,
        height: 50,
        width: 50,
        padding: 0,
      ),
      title: Text(
        'Ujjwal Karki',
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .apply(color: EColors.white),
      ),
      subtitle: Text('ujwal.bdev@gmail.com',
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .apply(color: EColors.white)),
      trailing: IconButton(
        icon: const Icon(Iconsax.edit),
        onPressed: onPressed,
        color: EColors.white,
      ),
    );
  }
}
