import 'package:ecommerce_app/app.dart';
import 'package:ecommerce_app/data/repositories/authentication/authentication_repository.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'firebase_options.dart';

Future<void> main() async {
  /// Add Widgets Binding
  final WidgetsBinding widgetsBinding =
      WidgetsFlutterBinding.ensureInitialized();

  /// Init Local Storage(get storage)
  await GetStorage.init();

  /// Await  Splash Screen
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  /// Initalize firebase
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then((value) => Get.put(AuthenticationRepository()));

  /// Initialize Authentication

  /// Load all Material design/ Themes / Localizations / Bindings
  runApp(const App());
}
