import 'package:ecommerce_app/features/authentication/screens/login/login.dart';
import 'package:ecommerce_app/features/authentication/screens/onBoarding/onboarding.dart';
import 'package:ecommerce_app/utils/exceptions/firebase_exceptions.dart';
import 'package:ecommerce_app/utils/exceptions/format_exceptions.dart';
import 'package:ecommerce_app/utils/exceptions/platform_exceptions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../../utils/exceptions/firebase_auth_exceptions.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  final deviceLocalStorage = GetStorage();
  final _auth = FirebaseAuth.instance;

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

  /* ------------ Email & pasw signIn ----------------- */

  /// Email Authentication: create/REgisTer
  Future<UserCredential> createAccountWithEmailAndPsw(
      String email, String psw) async {
    try {
      return await _auth.createUserWithEmailAndPassword(
          email: email, password: psw);
    } on FirebaseAuthException catch (err) {
      throw TFirebaseAuthException(err.code).message;
    } on FirebaseException catch (err) {
      throw TFirebaseException(err.code).message;
    } on FormatException catch (_) {
      throw const TFormatException();
    } on PlatformException catch (err) {
      throw TPlatformException(err.code).message;
    } catch (err) {
      throw 'Something went wrong. Please try again!';
    }
  }
}
