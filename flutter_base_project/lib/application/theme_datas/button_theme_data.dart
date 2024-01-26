import 'package:flutter/material.dart';

ElevatedButtonThemeData elevatedButtonThemeData = ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
    shadowColor: Colors.transparent,
    padding: const EdgeInsets.symmetric(vertical: 12),
    elevation: 3,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
    fixedSize: const Size.fromWidth(200)
  ),
);