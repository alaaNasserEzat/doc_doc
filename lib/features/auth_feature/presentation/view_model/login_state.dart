import 'package:doc_doc/features/auth_feature/data/models/login_response_model.dart';
import 'package:doc_doc/core/networking/errors/models/error_model.dart';

abstract class LoginState {}

class LoginInitial extends LoginState {}

class LoginLoading extends LoginState {}

class LoginSuccess extends LoginState {
  final LoginResponse user;

  LoginSuccess(this.user);
}

class LoginFailure extends LoginState {
  final ErrorModel message;

  LoginFailure(this.message);
}
