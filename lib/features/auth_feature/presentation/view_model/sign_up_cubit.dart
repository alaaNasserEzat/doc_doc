import 'package:doc_doc/features/auth_feature/data/models/sign_up_request_body.dart';
import 'package:doc_doc/features/auth_feature/data/repositories/auth_repo.dart';
import 'package:doc_doc/features/auth_feature/presentation/view_model/sign_up_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit(this.authRepo) : super(SignUpInitial());
  final AuthRepo authRepo;
  final int selectedGender = 0;

  signUp(SignUpRequestBody signUpRequest) async {
    emit(SignUpLoading());
    final res = await authRepo.signUp(signUpRequest);

    res.fold(
      ifLeft: (f) {
        emit(SignUpFailure(f));
      },
      ifRight: (ifRight) {
        emit(SignUpSuccess(ifRight));
      },
    );
  }
}
