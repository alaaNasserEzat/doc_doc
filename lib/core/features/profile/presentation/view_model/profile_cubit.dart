import 'package:doc_doc/core/features/profile/data/models/update_profile_request.dart';
import 'package:doc_doc/core/features/profile/data/repo/profile_repo.dart';
import 'package:doc_doc/core/features/profile/presentation/view_model/profile_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit(this.profileRepo) : super(ProfileInitial());

  final ProfileRepo profileRepo;
  final TextEditingController name = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController phone = TextEditingController();
  Future<void> getProfile() async {
    emit(ProfileLoading());

    final result = await profileRepo.getProfile();

    result.fold(
      ifLeft: (e) {
        emit(ProfileFailure(e.getAllErrorMessage()));
      },
      ifRight: (res) {
        name.text = res.data[0].name;
        email.text = res.data[0].email;
        phone.text = res.data[0].phone;

        emit(ProfileSuccess(res));
      },
    );
  }

  Future<void> updateProfile(UpdateProfileRequest updateProfileRequest) async {
    emit(UpdateProfileLoading());

    final result = await profileRepo.updateProfile(updateProfileRequest);

    result.fold(
      ifLeft: (e) {
        emit(UpdateProfileFailure(e.getAllErrorMessage()));
      },
      ifRight: (res) {
        emit(UpdateProfileSuccess(res));
      },
    );
  }
}
