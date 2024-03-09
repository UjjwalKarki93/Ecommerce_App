import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/popups/full_screen_loader.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

  final email = TextEditingController();
  final lastName = TextEditingController();
  final firstName = TextEditingController();
  final username = TextEditingController();
  final password = TextEditingController();
  final phoneNumber = TextEditingController();

  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  Future<void> signup() async {
    try {
      /// start loader
      FullScreenLoader.openLoadingDialog(
          'Signing Up......', EImages.splashAnimation);

      /// check internet connection
      /// form validation
      /// provacy policy check
      /// Register user in the fire base authentication and save user's data in the forebase
      /// save authenticated user data in the firebase firestore
      /// show success message
      /// move to verify email screen
    } catch (err) {
    } finally {}
  }
}
