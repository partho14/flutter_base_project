import 'package:get/get.dart';
import 'package:flutter/material.dart';

void showSnackMessage(String title, String message, [isError = false]) {
  Get.showSnackbar(
    GetSnackBar(
      title: title,
      message: message,
      duration: const Duration(seconds: 2),
      snackPosition: SnackPosition.TOP,
      backgroundColor: isError ? Colors.red : const Color(0xFF303030),
    ),
  );
}