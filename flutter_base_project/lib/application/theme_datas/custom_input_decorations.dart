import 'package:flutter/material.dart';
import 'package:flutter_base_project/core/colors/colors.dart';
import 'package:gradient_borders/input_borders/gradient_outline_input_border.dart';

InputDecorationTheme customInputDecorationTheme = const InputDecorationTheme(
    filled: true,
    fillColor: Colors.white,
    contentPadding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
    hintStyle: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: AppColors.hintTextColor),
    border: GradientOutlineInputBorder(
      gradient: LinearGradient(
        colors: [
          AppColors.gradiantColorTop,
          AppColors.gradiantColorBottom,
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
      width: 1,
      borderRadius: BorderRadius.all(Radius.circular(8.0)),
    ),
    focusedBorder: GradientOutlineInputBorder(
      gradient: LinearGradient(
        colors: [
          AppColors.gradiantColorTop,
          AppColors.gradiantColorBottom,
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
      width: 1,
      borderRadius: BorderRadius.all(
        Radius.circular(8.0),
      ),
    ),
    errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(4)),
        borderSide: BorderSide(
          width: 1,
          color: Colors.red,
        )),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(4)),
      borderSide: BorderSide(
        width: 1,
        color: Colors.red,
      ),
    ),
  disabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(4)),
      borderSide: BorderSide(
        width: 0.5,
        color: AppColors.hintTextColor,
      ),
    ),
    //TODO: the text color is gradient
    floatingLabelStyle: TextStyle(
        color: AppColors.themeColor,
        fontSize: 16,
        fontWeight: FontWeight.w400),
);
