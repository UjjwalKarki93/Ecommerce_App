import 'package:ecommerce_app/bindings/general_bindings.dart';
import 'package:ecommerce_app/utils/splash_screen.dart';
import 'package:ecommerce_app/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.system,
        theme: AppTheme.lightThemeData,
        darkTheme: AppTheme.darkThemeData,
        initialBinding: GeneralBindings(),
        home: const Scaffold(
          backgroundColor: Colors.purple,
          body: Center(
            child: CircularProgressIndicator(
              color: Colors.white,
            ),
          ),
        ));
  }
}
