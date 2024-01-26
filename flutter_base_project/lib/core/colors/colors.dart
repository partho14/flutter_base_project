import 'package:flutter/material.dart';

class AppColors {
  static const Color themeColor = Color(0xff065daf);
  static const Color hintTextColor = Color(0xFF83919C);
  static const Color gradiantColorTop = Color(0xff263284);
  static const Color gradiantColorBottom = Color(0xff4CA9E5);
  static const Color black = Color(0xff000000);
  static const Color jetBlack = Color(0xff373737);
  static const Color white = Color(0xffffffff);
  static const Color lightStateGrey = Color(0xff83919C);
  static const Color customGray = Color(0xff83919C);
  static const Color orangePeel =  Color(0xFFFF9900);
  static const Color coralRed =  Color(0xFFFF4646);
  static const Color veryLightGreen =  Color(0xFFC5FFC3);
  static const Color lightLime =  Color(0xFFDAFF71);
  static const Color green =  Colors.green;
  static const Color aliceBlue =  Color(0xFFe5edf7);
  static const Color emeraldGreen =  Color(0xFF9CEDB4);
  static const Color eigenGrau =  Color(0xFF181d23);
  static const Color 	bobBlue =  Color(0xFFf0f5fb);
  static const Color 	paleAqua =  Color(0xFFd5eaff);


  static Map<int, Color> primaryColor = {
    50: const Color(0xff065daf),
    100: const Color(0xff1f6db7),
    200: const Color(0xff387dbf),
    300: const Color(0xff518ec7),
    400: const Color(0xff6a9ecf),
    500: const Color(0xff83aed7),
    600: const Color(0xff9bbedf),
    700: const Color(0xffb4cee7),
    800: const Color(0xffcddfef),
    900: const Color(0xffe6eff7),
  };

  static LinearGradient gradientTheme = const LinearGradient(
    colors: [
      AppColors.gradiantColorTop,
      AppColors.gradiantColorBottom,
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static LinearGradient gradientGreen = const LinearGradient(
    colors: [Colors.green, Colors.green],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
