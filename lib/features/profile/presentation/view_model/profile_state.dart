import 'package:doc_doc/features/profile/data/models/profile_response.dart';
import 'package:doc_doc/features/profile/data/models/update_profile_response.dart';

abstract class ProfileState {}

class ProfileInitial extends ProfileState {}

class ProfileLoading extends ProfileState {}

class ProfileSuccess extends ProfileState {
  final ProfileResponse profile;

  ProfileSuccess(this.profile);
}

class ProfileFailure extends ProfileState {
  final String errMessage;

  ProfileFailure(this.errMessage);
}

//udate profile states
class UpdateProfileLoading extends ProfileState {}

class UpdateProfileSuccess extends ProfileState {
  final UpdateProfileResponse profile;

  UpdateProfileSuccess(this.profile);
}

class UpdateProfileFailure extends ProfileState {
  final String errMessage;

  UpdateProfileFailure(this.errMessage);
}
