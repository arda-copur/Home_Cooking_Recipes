 import 'package:flutter/material.dart';
import 'package:food_recipe_app/utility/colors.dart';

final ThemeData light = ThemeData(
  brightness: Brightness.dark,
  primaryColor: ProjectColors.black,
  scaffoldBackgroundColor: ProjectColors.backgroundWhite,
  cardColor: ProjectColors.white,
  appBarTheme: AppBarTheme(backgroundColor: ProjectColors.backgroundBlack)
 );

final ThemeData dark = ThemeData(
  brightness: Brightness.dark,
  primaryColor: ProjectColors.black,
  scaffoldBackgroundColor: ProjectColors.backgroundBlack,
  cardColor: ProjectColors.black,
  appBarTheme: AppBarTheme(backgroundColor: ProjectColors.backgroundWhite)
);