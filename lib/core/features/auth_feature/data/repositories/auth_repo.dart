import 'package:dart_either/dart_either.dart';
import 'package:doc_doc/core/features/auth_feature/data/data_source/auth_remote_data_source.dart';
import 'package:doc_doc/core/features/auth_feature/data/models/login_request.dart';
import 'package:doc_doc/core/features/auth_feature/data/models/login_response_model.dart';
import 'package:doc_doc/core/features/auth_feature/data/models/sign_up_request_body.dart';
import 'package:doc_doc/core/features/auth_feature/data/models/sign_up_response.dart';
import 'package:doc_doc/core/networking/errors/models/error_model.dart';
import 'package:doc_doc/core/networking/errors/server_exception.dart';

class AuthRepo {
  final AuthRemoteDataSource authRemoteDataSource;

  AuthRepo({required this.authRemoteDataSource});

 Future<Either<ErrorModel,LoginResponse>> login(LoginRequest loginRequest)async{
  try {
  final response= await authRemoteDataSource.login(loginRequest);
  return Right(response);
} on ServerException catch (e) {
 return Left( ErrorModel(message: e.errorModel.message, errors: e.errorModel.errors));
}
  }

  Future<Either<ErrorModel,SignUpResponse>> signUp(SignUpRequestBody signUpRequest)async{
    try {
    final response= await authRemoteDataSource.signUp(signUpRequest);
    return Right(response);
  } on ServerException catch (e) {
   return Left(getErrorModel(e.errorModel));
  }
  }
}