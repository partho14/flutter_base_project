import 'package:flutter/material.dart';
import 'package:flutter_base_project/core/colors/colors.dart';

AppBarTheme appBarTheme = const AppBarTheme(
  elevation: 0,
  backgroundColor: AppColors.white,
  centerTitle: true,
  titleTextStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
  iconTheme: IconThemeData(
    color: AppColors.themeColor,
  ),
);
