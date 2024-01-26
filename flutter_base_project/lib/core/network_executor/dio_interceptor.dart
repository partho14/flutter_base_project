import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_base_project/application/app_configuration.dart';
import 'package:logger/logger.dart';

class DioInterceptor extends Interceptor {
  final Logger _logger = Logger();
  final VoidCallback onUnauthorize;

  DioInterceptor({required this.onUnauthorize});

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.path = AppConfiguration.baseUrl + options.path;
    options.data ??= {};
    options.data['api_authentication'] = AppConfiguration.apiAuthentication;
    // if (GlobalAuthController.accessToken.isNotEmpty) {
    //   options.headers.addAll({
    //     'Authorization': 'Bearer ${GlobalAuthController.accessToken}',
    //   });
    // }
    options.validateStatus = (status) {
      return status! >= 200;
    };
    _logger.d(
      _requestLog(options),
    );
    super.onRequest(options, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    _logger.e(_errorResponseLog(err));
    super.onError(err, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    _logger.i(_responseLog(response));
    if (response.statusCode == 401 &&
        response.requestOptions.path != '${AppConfiguration.baseUrl}login') {
      onUnauthorize();
    }
    super.onResponse(response, handler);
  }

  String _requestLog(RequestOptions options) {
    return '''
      Request path => ${options.path}
      Request method => ${options.method}
      Request headers => ${options.headers}
      Request Query params => ${options.queryParameters}
      Request body => ${options.data}
    ''';
  }

  String _responseLog(Response response) {
    return '''
      Response Code => ${response.requestOptions.path}
      Response Code => ${response.statusCode}
      Response Headers => ${response.headers}
      Response Data => ${response.data}
    ''';
  }

  String _errorResponseLog(DioException response) {
    return '''
      Request Options => ${response.requestOptions.path}
      Response Error => ${response.response}
      Response Error => ${response.error}
      Response Stacktrace => ${response.stackTrace}
      Response Data => ${response.message}
    ''';
  }
}
