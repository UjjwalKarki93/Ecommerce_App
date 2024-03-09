import 'package:ecommerce_app/features/authentication/screens/login/login.dart';
import 'package:ecommerce_app/features/authentication/screens/onBoarding/onboarding.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  final deviceLocalStorage = GetStorage();

  @override
  void onReady() {
    // Remove the native splash screen
    FlutterNativeSplash.remove();
    // redirect to the required screen
    screenDirect();
  }

// functio to direct the required screen
  screenDirect() async {
    if (kDebugMode) {
      print("===========  getting storage =========");
      print(deviceLocalStorage.read('isFirstVisit'));
    }
    // define local storage
    deviceLocalStorage.writeIfNull('isFirstVisit', true);
    // check of the user is firstly launching the app
    // based on that redirect to the appropriate screen
    deviceLocalStorage.read('isFirstVisit') != true
        ? Get.offAll(() => const LoginScreen())
        : Get.offAll(() => const OnBoardingScreen());
  }
}
