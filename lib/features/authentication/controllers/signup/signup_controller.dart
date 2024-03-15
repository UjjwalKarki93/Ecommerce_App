import 'package:ecommerce_app/data/repositories/authentication/authentication_repository.dart';
import 'package:ecommerce_app/data/repositories/user/user_repository.dart';
import 'package:ecommerce_app/features/authentication/screens/signup/verify_email.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/helpers/network_manager.dart';
import 'package:ecommerce_app/utils/popups/full_screen_loader.dart';
import 'package:ecommerce_app/utils/popups/loaders.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../personalization/models/user_model.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

  final hidePassword = true.obs;
  final checkPrivacyPolicy = true.obs;
  final email = TextEditingController();
  final lastName = TextEditingController();
  final firstName = TextEditingController();
  final username = TextEditingController();
  final password = TextEditingController();
  final phoneNumber = TextEditingController();

  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  void signup() async {
    try {
      /// start loader
      FullScreenLoader.openLoadingDialog(
          'Signing Up......', EImages.splashAnimation);

      /// check internet connection
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        FullScreenLoader.stopLoadingPage();

        return;
      }

      /// form validation
      if (!(signupFormKey.currentState!.validate())) {
        FullScreenLoader.stopLoadingPage();

        return;
      }

      /// privacy policy check
      if (!checkPrivacyPolicy.value) {
        Loaders.warningSnackBar(
            title: 'Accept Privacy Policy',
            message:
                'You must have to read and accept our Privacy Policy & Terms Of Use');
      }

      /// Register user in the fire base authentication and save user's data in the firebase
      final userCredentialData = await AuthenticationRepository.instance
          .createAccountWithEmailAndPsw(
              email.text.trim(), password.text.trim());

      /// save authenticated user data in the firebase firestore
      final newUser = UserModel(
          id: userCredentialData.user!.uid,
          firstName: firstName.text.trim(),
          lastName: lastName.text.trim(),
          username: username.text.trim(),
          email: email.text.trim(),
          phoneNumber: phoneNumber.text.trim(),
          profileImg: '');
      final userRepository = Get.put(UserRepository());
      await userRepository.saveUserRecord(newUser);

      /// show success message
      Loaders.successSnackBar(
          title: 'Your account has been created! Verify email to continue!');

      FullScreenLoader.stopLoadingPage();

      /// move to verify email screen
      Get.to(() => const VerifyEmailScreen());
    } catch (err) {
      FullScreenLoader.stopLoadingPage();

      // show some genral error to the user
      Loaders.errorSnackBar(
          title: 'Something Went Wrong!', message: err.toString());
    }
  }
}
