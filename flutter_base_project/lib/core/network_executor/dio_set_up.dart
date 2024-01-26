import 'package:dio/dio.dart';
import 'package:flutter_base_project/application/app_configuration.dart';
import 'package:get/get.dart';

import 'dio_interceptor.dart';

Dio getDioInstance() {
  final Dio dio = Dio(
    BaseOptions(
      connectTimeout: AppConfiguration.connectionTimeOut,
      receiveTimeout: AppConfiguration.receiveTimeOut,
      sendTimeout: AppConfiguration.sendTimeOut,
      baseUrl: AppConfiguration.baseUrl,
    ),
  );
  dio.interceptors.add(DioInterceptor(onUnauthorize: () async {

  }));
  return dio;
}
