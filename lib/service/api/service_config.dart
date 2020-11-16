import 'package:dio/dio.dart';

class ServiceConfig {

  String _url = "";
  int timeout = 5000;

  ServiceConfig(this._url, {this.timeout});

  Dio create() {
    Dio dio = Dio(
      BaseOptions(
        connectTimeout: timeout,
        baseUrl: _url,
      ),
    );
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (RequestOptions request) async {
          return request;
        },
        onResponse: (Response response) async {
          return response;
        },
        onError: (DioError err) async {
          return err;
        }
      ),
    );

    return dio;
  }

}