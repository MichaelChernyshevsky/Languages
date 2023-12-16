import 'dart:io';

import 'package:dio/dio.dart';
import 'package:educational_project/models/widget/dio/dio_connectivity_request_retrier.dart';

// класс на попытку подключения в случае если проблемы с интернет соединением

class RetryOnConnectionChangeInterceptor extends Interceptor {
  final DioConnectivityRequestRetrier requestRetrier;

  RetryOnConnectionChangeInterceptor({
    required this.requestRetrier,
  });
  // по умолчанию запускаем функции которая делает попытку подключения
  @override
  Future error(DioError err) async {
    //ошибка есть
    if (_shouldRetry(err)) {
      try {
        return requestRetrier.scheduleRequestRetry(err.requestOptions);
      } catch (e) {
        return e;
      }
    }
    // ошибки нет
    return err;
  }

  // проверка есть ли ошибка если есть то мы попадаем в try-catch и там уже ищем ее
  bool _shouldRetry(DioError err) {
    return err.error != null && err.error is SocketException;
  }
}
