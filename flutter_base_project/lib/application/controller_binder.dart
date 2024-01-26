import 'package:dio/dio.dart';
import 'package:flutter_base_project/application/internet_controller.dart';
import 'package:get/get.dart';

class ControllerBinder extends Bindings {
  @override
  void dependencies() {
  }

  static void init() {
    Get.put<InternetController>(InternetController(), permanent: true);
  }
}
