import 'package:dio/dio.dart';
import 'package:doc_doc/core/networking/api_concumer.dart';
import 'package:doc_doc/core/networking/api_interceptor.dart';

import 'package:doc_doc/core/networking/errors/server_exception.dart';

class DioConcumer  extends ApiConcumer
{
  final Dio dio;

  DioConcumer({required this.dio}){
    dio.options.baseUrl="https://vcare.integration25.com/api/";
    dio.interceptors.add(ApiInterceptor());
    dio.interceptors.add(LogInterceptor(
      request: true,
      responseBody: true,
      requestHeader: true,
      requestBody: true,
      error: true
    ));
  }

  @override
  Future<dynamic> delete(String path, {Map<String, dynamic>? queryParams, Object? data})async {
try {
 final response=await dio.delete(path,data: data,queryParameters: queryParams);
 return response.data;
} on DioException catch (e) {
 handelDioException(e);
}
  }

  @override
  Future<dynamic> get(String path, {Map<String, dynamic>? queryParams, Object? data}) async{
try {
 final response=await dio.get(path,data: data,queryParameters: queryParams);
 return response.data;
} on DioException catch (e) {
 handelDioException(e);
}
  }
  
  @override
  Future<dynamic> patch(String path, {Map<String, dynamic>? queryParams, Object? data})async {
try {
 final response=await dio.patch(path,data: data,queryParameters: queryParams);
 return response.data;
} on DioException catch (e) {
 handelDioException(e);
}
  }
  
  @override
  Future<dynamic> post(String path, {Map<String, dynamic>? queryParams, Object? data})async {
  try {
 final response=await dio.post(path,data: data,queryParameters: queryParams);
 return response.data;
} on DioException catch (e) {
 handelDioException(e);
}
  }
  
  }
