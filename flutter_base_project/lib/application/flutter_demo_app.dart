import 'package:flutter/material.dart';
import 'package:flutter_base_project/application/controller_binder.dart';
import 'package:flutter_base_project/application/theme_datas/app_theme_data.dart';
import 'package:flutter_base_project/features/auth/presentation/screens/splash_screen.dart';
import 'package:flutter_base_project/localization/languages_translator.dart';
import 'package:get/get.dart';

class FlutterBaseProject extends StatelessWidget {
  const FlutterBaseProject({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: ControllerBinder(),
      theme: appThemeData,
      home: const SplashScreen(),
      translations: LanguageTranslator(),
      locale: Get.deviceLocale,
      fallbackLocale: const Locale('en', 'US'),
      debugShowCheckedModeBanner: false,
    );
  }
}
