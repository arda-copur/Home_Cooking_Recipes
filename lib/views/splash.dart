import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:food_recipe_app/utility/colors.dart';
import 'package:food_recipe_app/views/welcome.dart';
import 'package:lottie/lottie.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterSplashScreen(
      backgroundColor: ProjectColors.primaryColor,
      splashScreenBody: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Lottie.asset("images/lottie/food_splash.json",fit: BoxFit.cover),
        ),
      ),
      nextScreen: const WelcomeView(),
      duration: const Duration(milliseconds: 3000),
    );
  }
}