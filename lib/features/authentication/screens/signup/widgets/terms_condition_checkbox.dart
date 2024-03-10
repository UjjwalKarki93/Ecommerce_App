import 'package:ecommerce_app/features/authentication/controllers/signup/signup_controller.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class TermsAndConditionCheckBox extends StatelessWidget {
  const TermsAndConditionCheckBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final bool isDark = HelperFunctions.isDarkMode(context);
    final controller = SignUpController.instance;
    return Row(
      children: [
        Obx(
          () => SizedBox(
            width: 24,
            height: 24,
            child: Checkbox(
                value: controller.checkPrivacyPolicy.value,
                onChanged: (value) {
                  controller.checkPrivacyPolicy.value = value!;
                }),
          ),
        ),
        const SizedBox(width: AppSizes.spaceBtwItems),
        Text.rich(TextSpan(children: [
          TextSpan(
              text: Texts.iAgreeTo,
              style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
              text: Texts.privacyPolicy,
              style: Theme.of(context).textTheme.bodyMedium!.apply(
                    color: isDark ? EColors.white : EColors.primary,
                    decoration: TextDecoration.underline,
                    decorationColor: isDark ? EColors.white : EColors.primary,
                  )),
          TextSpan(
              text: Texts.and, style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
              text: Texts.termsOfUse,
              style: Theme.of(context).textTheme.bodyMedium!.apply(
                    color: isDark ? EColors.white : EColors.primary,
                    decoration: TextDecoration.underline,
                    decorationColor: isDark ? EColors.white : EColors.primary,
                  ))
        ]))
      ],
    );
  }
}
