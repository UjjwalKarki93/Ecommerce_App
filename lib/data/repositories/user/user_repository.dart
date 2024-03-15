import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce_app/features/personalization/models/user_model.dart';
import 'package:ecommerce_app/utils/exceptions/firebase_exceptions.dart';
import 'package:ecommerce_app/utils/exceptions/format_exceptions.dart';
import 'package:ecommerce_app/utils/exceptions/platform_exceptions.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class UserRepository extends GetxController {
  static UserRepository get instance => Get.find();

  final FirebaseFirestore _dataBase = FirebaseFirestore.instance;

  /// Function to save user data to Firestore
  Future<void> saveUserRecord(UserModel user) async {
    try {
      await _dataBase.collection('Users').doc(user.id).set(user.toJSON());
    } on FirebaseException catch (err) {
      throw TFirebaseException(err.code).message;
    } on FormatException catch (_) {
      throw const TFormatException();
    } on PlatformException catch (err) {
      throw TPlatformException(err.code).message;
    } catch (err) {
      throw 'Something went wrong. Please try again';
    }
  }
}
