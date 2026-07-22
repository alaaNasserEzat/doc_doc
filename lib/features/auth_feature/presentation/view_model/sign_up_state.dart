import 'package:doc_doc/features/auth_feature/data/models/sign_up_response.dart';
import 'package:doc_doc/core/networking/errors/models/error_model.dart';

abstract class SignUpState {}

class SignUpInitial extends SignUpState {}

class SignUpLoading extends SignUpState {}

class SignUpSuccess extends SignUpState {
  final SignUpResponse user;

  SignUpSuccess(this.user);
}

class SignUpFailure extends SignUpState {
  final ErrorModel message;

  SignUpFailure(this.message);
}
