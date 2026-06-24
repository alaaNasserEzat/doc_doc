import 'package:dio/dio.dart';
import 'package:doc_doc/core/networking/errors/models/error_model.dart';

class ServerException implements Exception {
  final ErrorModel errorModel;

  ServerException({required this.errorModel});
}

void handelDioException(DioException e) {
  switch (e.type) {
    case DioExceptionType.connectionError:
      throw ServerException(
        errorModel: ErrorModel(message: "connection error"),
      );
    case DioExceptionType.receiveTimeout:
      throw ServerException(
        errorModel: ErrorModel(message: "connection error"),
      );
    case DioExceptionType.connectionTimeout:
      throw ServerException(
        errorModel: ErrorModel(message: "connection error"),
      );
    case DioExceptionType.sendTimeout:
      throw ServerException(
        errorModel: ErrorModel(message: "connection error"),
      );
    case DioExceptionType.badCertificate:
      throw ServerException(errorModel: ErrorModel(message: "bad certificate"));
    case DioExceptionType.badResponse:
      switch (e.response?.statusCode) {
        case 422:
        case 400:
        case 401:
          throw ServerException(
            errorModel: ErrorModel.fromJson(e.response!.data),
          );
      }
    case DioExceptionType.cancel:
      throw ServerException(errorModel: ErrorModel(message: "cancled"));
    case DioExceptionType.unknown:
      throw ServerException(errorModel: ErrorModel(message: "unknown"));
  }
}

ErrorModel getErrorModel(ErrorModel error) {
  return ErrorModel(message: error.message, errors: error.errors);
}
