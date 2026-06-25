import 'package:doc_doc/core/features/home_feature/data/repo/home_repo.dart';
import 'package:doc_doc/core/features/home_feature/presentation/view_model/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.repo) : super(HomeInitial());

  final HomeRepo repo;

  getSpecializations() async {
    emit(HomeLoading());

    final result = await repo.getSpecializationDoctors();
    result.fold(
      ifLeft: (errorModel) {
        emit(HomeError(errorModel));
      },
      ifRight: (specializationRespon) {
        emit(HomeSuccess(specializationRespon));
      },
    );
  }
}
