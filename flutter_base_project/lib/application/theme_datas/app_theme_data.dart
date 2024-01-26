import 'package:flutter/material.dart';
import 'package:flutter_base_project/application/theme_datas/app_bar_theme.dart';
import 'package:flutter_base_project/application/theme_datas/app_text_theme.dart';
import 'package:flutter_base_project/application/theme_datas/button_theme_data.dart';
import 'package:flutter_base_project/application/theme_datas/custom_input_decorations.dart';
import 'package:flutter_base_project/core/colors/colors.dart';

ThemeData appThemeData = ThemeData(
  fontFamily: 'Outfit',
  primarySwatch:
      MaterialColor(AppColors.themeColor.value, AppColors.primaryColor),
  inputDecorationTheme: customInputDecorationTheme,
  elevatedButtonTheme: elevatedButtonThemeData,
  textTheme: appTextTheme,
  appBarTheme: appBarTheme,
);
