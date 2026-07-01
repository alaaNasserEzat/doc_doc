import 'package:doc_doc/core/features/profile/data/models/profile_response.dart';

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
