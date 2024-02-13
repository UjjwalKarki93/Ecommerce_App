import 'package:ecommerce_app/common/widgets/login_signup/form_divider.dart';
import 'package:ecommerce_app/common/widgets/login_signup/social_buttons.dart';
import 'package:ecommerce_app/features/authentication/screens/signup/verify_email.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// signup title
              Text(
                Texts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: AppSizes.spaceBtwSections),

              /// signup form
              Form(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Flexible(
                          child: TextFormField(
                            // expands: false,
                            decoration: const InputDecoration(
                              labelText: Texts.firstName,
                              prefixIcon: Icon(Iconsax.user),
                            ),
                          ),
                        ),
                        const SizedBox(width: AppSizes.spaceBtwInputFields),
                        Flexible(
                          child: TextFormField(
                            // expands: false,
                            decoration: const InputDecoration(
                              labelText: Texts.lastName,
                              prefixIcon: Icon(Iconsax.user),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: AppSizes.spaceBtwInputFields),

                    /// username
                    TextFormField(
                      expands: false,
                      decoration: const InputDecoration(
                        labelText: Texts.username,
                        prefixIcon: Icon(Iconsax.user_edit),
                      ),
                    ),
                    const SizedBox(width: AppSizes.spaceBtwInputFields),

                    /// email
                    TextFormField(
                      expands: false,
                      decoration: const InputDecoration(
                        labelText: Texts.email,
                        prefixIcon: Icon(Iconsax.direct),
                      ),
                    ),
                    const SizedBox(width: AppSizes.spaceBtwInputFields),

                    /// phone number
                    TextFormField(
                      expands: false,
                      decoration: const InputDecoration(
                        labelText: Texts.phoneNo,
                        prefixIcon: Icon(Iconsax.call),
                      ),
                    ),
                    const SizedBox(width: AppSizes.spaceBtwInputFields),

                    /// password
                    TextFormField(
                      obscureText: true,
                      expands: false,
                      decoration: const InputDecoration(
                        labelText: Texts.password,
                        prefixIcon: Icon(Iconsax.user_edit),
                        suffix: Icon(Iconsax.eye_slash),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: AppSizes.spaceBtwSections),

              /// Terms and condition checkbox
              Row(
                children: [
                  SizedBox(
                    width: 24,
                    height: 24,
                    child: Checkbox(value: true, onChanged: (value) {}),
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
                              decorationColor:
                                  isDark ? EColors.white : EColors.primary,
                            )),
                    TextSpan(
                        text: Texts.and,
                        style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(
                        text: Texts.termsOfUse,
                        style: Theme.of(context).textTheme.bodyMedium!.apply(
                              color: isDark ? EColors.white : EColors.primary,
                              decoration: TextDecoration.underline,
                              decorationColor:
                                  isDark ? EColors.white : EColors.primary,
                            ))
                  ]))
                ],
              ),
              const SizedBox(height: AppSizes.spaceBtwSections),

              /// sign up button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      Get.to(() => const VerifyEmailScreen());
                    },
                    child: const Text(Texts.createAccount)),
              ),
              const SizedBox(height: AppSizes.spaceBtwSections),

              /// divider
              FormDivider(
                  dividerText: Texts.orSignUpWith.capitalize!, isDark: isDark),
              const SizedBox(height: AppSizes.spaceBtwSections),
              const SocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
