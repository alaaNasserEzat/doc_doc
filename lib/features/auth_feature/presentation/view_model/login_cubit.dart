import 'package:doc_doc/features/auth_feature/data/models/login_request.dart';
import 'package:doc_doc/features/auth_feature/data/repositories/auth_repo.dart';
import 'package:doc_doc/features/auth_feature/presentation/view_model/login_state.dart';
import 'package:doc_doc/core/helper/share_pref_halper.dart';
import 'package:doc_doc/core/helper/shared_pref_keys.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.authRepo) : super(LoginInitial());
  final AuthRepo authRepo;
  login(LoginRequest loginRequest) async {
    emit(LoginLoading());
    final res = await authRepo.login(loginRequest);

    res.fold(
      ifLeft: (f) {
        emit(LoginFailure(f));
      },
      ifRight: (ifRight) {
        emit(LoginSuccess(ifRight));
        SharedPrefHelper.setSecuredString(
          SharedPrefKeys.userToken,
          ifRight.data.token,
        );
      },
    );
  }
}
