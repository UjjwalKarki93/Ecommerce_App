// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCuhsdUNGit-OXQ4ok0HXAa-29jK_g3VJc',
    appId: '1:158041036364:web:87faf2b2d93a7d35b386e9',
    messagingSenderId: '158041036364',
    projectId: 'meroshop-20fac',
    authDomain: 'meroshop-20fac.firebaseapp.com',
    storageBucket: 'meroshop-20fac.appspot.com',
    measurementId: 'G-50XSM6PZ2B',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCKraag74U_8Us71A9DVBcXa4oj8RapaYc',
    appId: '1:158041036364:android:ffc892612d027410b386e9',
    messagingSenderId: '158041036364',
    projectId: 'meroshop-20fac',
    storageBucket: 'meroshop-20fac.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCW5jAq34gYYUmKbggOwdH9OGgBj20CAGA',
    appId: '1:158041036364:ios:6dc436770c0eb6ecb386e9',
    messagingSenderId: '158041036364',
    projectId: 'meroshop-20fac',
    storageBucket: 'meroshop-20fac.appspot.com',
    iosClientId: '158041036364-rob4ghd27i5gdh70k0hecpbobf6kjla4.apps.googleusercontent.com',
    iosBundleId: 'com.example.ecommerceApp',
  );
}
