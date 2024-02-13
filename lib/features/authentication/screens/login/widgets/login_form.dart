import 'package:ecommerce_app/features/authentication/screens/password_config/forget_psw.dart';
import 'package:ecommerce_app/features/authentication/screens/signup/signup.dart';
import 'package:ecommerce_app/navigation_menu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding:
            const EdgeInsets.symmetric(vertical: AppSizes.spaceBtwSections),
        child: Column(
          children: [
            /// email section
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.email), labelText: Texts.email),
            ),
            const SizedBox(height: AppSizes.spaceBtwInputFields),

            /// password
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.password_outlined),
                  suffixIcon: Icon(Iconsax.eye_slash),
                  labelText: Texts.password),
            ),

            /// Remember Me & Forget password
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Row(children: [
                /// remenber me
                Checkbox(value: true, onChanged: (value) {}),
                const Text(Texts.rememberMe),
              ]),

              /// forget password
              TextButton(
                  onPressed: () {
                    Get.to(const ForgetPswScreen());
                  },
                  child: const Text(Texts.forgetPassword)),
            ]),

            const SizedBox(height: AppSizes.spaceBtwSections),

            /// sign in button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () => Get.to(const NavigationMenu()),
                  child: const Text(Texts.signIn)),
            ),
            const SizedBox(height: AppSizes.spaceBtwItems),

            /// create account
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                  onPressed: () {
                    Get.to(const SignupScreen());
                  },
                  child: const Text(Texts.createAccount)),
            )
          ],
        ),
      ),
    );
  }
}
