import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:ecommerce_app/features/authentication/screens/onBoarding/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Center(
        child: LottieBuilder.asset('assets/lottie/splashAnimation.json'),
      ),
      nextScreen: const OnBoardingScreen(),
      splashIconSize: 400,
      backgroundColor: Colors.purple,
    );
  }
}
