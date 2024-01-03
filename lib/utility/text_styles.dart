import 'package:flutter/material.dart';
import 'package:food_recipe_app/utility/colors.dart';

class MyTextStyles {
  static MyTextStyles instance = MyTextStyles();
   
   
  TextStyle displayLarge = TextStyle(
    color: ProjectColors.blackGrey,
    fontSize: 57,
    fontWeight: FontWeight.bold,
  );
  TextStyle displayMedium = TextStyle(
    color: ProjectColors.blackGrey,
    fontSize: 45,
    fontWeight: FontWeight.bold,
  );
  TextStyle displaySmall = TextStyle(
    color: ProjectColors.blackGrey,
    fontSize: 36,
    fontWeight: FontWeight.bold,
  );
  TextStyle headlineLarge = TextStyle(
    color: ProjectColors.blackGrey,
    fontSize: 32,
    fontWeight: FontWeight.bold,
  );
  TextStyle headlineMedium = TextStyle(
    color: ProjectColors.blackGrey,
    fontSize: 28,
    fontWeight: FontWeight.bold,
  );
  TextStyle headlineSmall = TextStyle(
    color: ProjectColors.blackGrey,
    fontSize: 22,
    fontWeight: FontWeight.bold,
  );
  TextStyle titleLarge = TextStyle(
    fontWeight: FontWeight.bold,
    color: ProjectColors.blackGrey,
    fontSize: 22,
  );
  TextStyle titleMedium = TextStyle(
    fontWeight: FontWeight.bold,
    color: ProjectColors.blackGrey,
    fontSize: 18,
  );
  TextStyle titleSmall = TextStyle(
    color: ProjectColors.blackGrey,
    fontSize: 14,
  );
  TextStyle labelLarge = TextStyle(
    color: ProjectColors.blackGrey,
    fontSize: 14,
  );
  TextStyle labelMedium = TextStyle(
    color: ProjectColors.blackGrey,
    fontSize: 12,
  );
  TextStyle labelSmall = TextStyle(
    color: ProjectColors.blackGrey,
    fontSize: 11,
  );
  TextStyle bodyLarge = TextStyle(
    fontWeight: FontWeight.bold,
    color: ProjectColors.blackGrey,
    fontSize: 16,
  );
  TextStyle bodyMedium = TextStyle(
    color: ProjectColors.blackGrey,
    fontSize: 14,
  );
  TextStyle bodySmall = TextStyle(
    color: ProjectColors.blackGrey,
    fontSize: 12,
  );
}