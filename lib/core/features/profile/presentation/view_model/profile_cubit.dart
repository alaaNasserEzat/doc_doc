import 'package:doc_doc/core/features/profile/data/repo/profile_repo.dart';
import 'package:doc_doc/core/features/profile/presentation/view_model/profile_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit(this.profileRepo) : super(ProfileInitial());

  final ProfileRepo profileRepo;

  Future<void> getProfile() async {
    emit(ProfileLoading());

    final result = await profileRepo.getProfile();

    result.fold(
      ifLeft: (e) {
        emit(ProfileFailure(e.getAllErrorMessage()));
      },
      ifRight: (res) {
        emit(ProfileSuccess(res));
      },
    );
  }
}
