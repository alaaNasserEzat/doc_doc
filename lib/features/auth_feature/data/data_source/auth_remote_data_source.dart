import 'package:doc_doc/features/auth_feature/data/models/login_request.dart';
import 'package:doc_doc/features/auth_feature/data/models/login_response_model.dart';
import 'package:doc_doc/features/auth_feature/data/models/sign_up_request_body.dart';
import 'package:doc_doc/features/auth_feature/data/models/sign_up_response.dart';
import 'package:doc_doc/core/networking/api_concumer.dart';
import 'package:doc_doc/core/networking/api_constants.dart';

class AuthRemoteDataSource {
  final ApiConcumer api;

  AuthRemoteDataSource({required this.api});

  Future<LoginResponse> login(LoginRequest loginRequest) async {
    final response = await api.post(
      ApiConstants.login,
      data: loginRequest.tojson(),
    );
    return LoginResponse.fromJson(response);
  }

  Future<SignUpResponse> signUp(SignUpRequestBody signUpRequest) async {
    final response = await api.post(
      ApiConstants.signup,
      data: signUpRequest.tojson(),
    );
    return SignUpResponse.fromJson(response);
  }
}
