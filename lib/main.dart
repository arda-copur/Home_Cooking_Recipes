import 'package:flutter/material.dart';
import 'package:food_recipe_app/utility/theme.dart';
import 'package:food_recipe_app/views/splash.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: light,
      darkTheme: dark,
      home: const SplashView(),
    );
  }
}
