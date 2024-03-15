import 'package:ecommerce_app/features/authentication/controllers/signup/signup_controller.dart';
import 'package:ecommerce_app/utils/validators/validation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import 'terms_condition_checkbox.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    return Form(
      key: controller.signupFormKey,
      child: Column(
        children: [
          Row(
            children: [
              Flexible(
                child: TextFormField(
                  controller: controller.firstName,
                  validator: (value) =>
                      Validator.validateEmptyText('First Name', value),
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: Texts.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(width: AppSizes.spaceBtwInputFields),
              Flexible(
                child: TextFormField(
                  expands: false,
                  controller: controller.lastName,
                  validator: (value) =>
                      Validator.validateEmptyText('Last Name', value),
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
            controller: controller.username,
            validator: (value) =>
                Validator.validateEmptyText('User Name', value),
            decoration: const InputDecoration(
              labelText: Texts.username,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
          const SizedBox(width: AppSizes.spaceBtwInputFields),

          /// email
          TextFormField(
            expands: false,
            controller: controller.email,
            validator: (value) => Validator.validateEmail(value),
            decoration: const InputDecoration(
              labelText: Texts.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          const SizedBox(width: AppSizes.spaceBtwInputFields),

          /// phone number
          TextFormField(
            expands: false,
            controller: controller.phoneNumber,
            validator: (value) => Validator.validatePhoneNumber(value),
            decoration: const InputDecoration(
              labelText: Texts.phoneNo,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
          const SizedBox(width: AppSizes.spaceBtwInputFields),

          /// password
          Obx(
            () => TextFormField(
              obscureText: controller.hidePassword.value,
              expands: false,
              controller: controller.password,
              validator: (value) => Validator.validatePassword(value),
              decoration: InputDecoration(
                  labelText: Texts.password,
                  prefixIcon: const Icon(Iconsax.user_edit),
                  suffix: IconButton(
                      onPressed: () {
                        final hidePsw = controller.hidePassword.value;
                        controller.hidePassword.value = !hidePsw;
                      },
                      icon: Icon(controller.hidePassword.value
                          ? Iconsax.eye_slash
                          : Iconsax.eye))),
            ),
          ),
          const SizedBox(height: AppSizes.spaceBtwSections),

          /// Terms and condition checkbox
          const TermsAndConditionCheckBox(),
          const SizedBox(height: AppSizes.spaceBtwSections),

          /// sign up button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () => controller.signup(),
                child: const Text(Texts.createAccount)),
          ),
        ],
      ),
    );
  }
}
