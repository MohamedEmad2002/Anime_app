import 'package:dio/dio.dart';

class DioHelper {
  static late Dio dio;

  static init() {
    dio = Dio(BaseOptions(
      baseUrl: 'https://815b-197-43-149-41.ngrok-free.app/',
      receiveDataWhenStatusError: true,
      followRedirects: false,
      validateStatus: (status) {
        return status! < 500;
      },
    ));
  }

  static Future<Response> getData(
      {required String path,
      Map<String, dynamic>? query,
      String? token}) async {
    dio.options.headers = {
      'Accept': 'application/json',
      'Authorization': token ?? ''
    };
    return await dio.get(
      path,
      queryParameters: query,
    );
  }

  static Future<Response> postData(
      {required String url,
      Map<String, dynamic>? query,
      required Map<String, dynamic> data,
      String? token}) async {
    dio.options.headers = {
      'Content-Type': 'application/json',
    };
    return dio.post(url, queryParameters: query, data: data);
  }

  static Future<Response> putData(
      {required String url,
      Map<String, dynamic>? query,
      required Map<String, dynamic> data,
      String? token}) async {
    dio.options.headers = {
      'Content-Type': 'application/json',
      'Authorization': token ?? ''
    };
    return dio.put(url, queryParameters: query, data: data);
  }

   void makeRequest() async {

  try {
    Response response = await dio.post('https://815b-197-43-149-41.ngrok-free.app/', data: {

    });

    if (response.statusCode == 302) {
      if (response.headers.value('location') != null) {
        String? newUrl = response.headers.value('location');
        Response newResponse = await dio.get("$newUrl");
        // Handle the new response as needed.
      }
    } else if (response.statusCode == 200) {
      // Handle the success response.
    } else {
      // Handle other error cases.
    }
  } catch (e) {
    // Handle Dio exceptions, such as network errors.
  }
}
}
