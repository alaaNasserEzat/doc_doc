import 'package:doc_doc/features/home_feature/data/models/doctors.dart';
import 'package:doc_doc/features/home_feature/data/models/specialization_data.dart';
import 'package:doc_doc/features/home_feature/data/repo/home_repo.dart';
import 'package:doc_doc/features/home_feature/presentation/view_model/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.repo) : super(HomeInitial());

  final HomeRepo repo;
  List<SpecializationData>? list;
  getSpecializations() async {
    emit(HomeLoading());

    final result = await repo.getSpecializationDoctors();
    result.fold(
      ifLeft: (errorModel) {
        emit(HomeError(errorModel));
      },
      ifRight: (specializationRespon) {
        list = specializationRespon.data;
        getDocotorsById(list!.first.id!);
        emit(HomeSuccess(specializationRespon));
      },
    );
  }

  getDocotorsById(int id) {
    final List<Doctor> doctors = [];
    for (var e in list ?? []) {
      if (e.id == id) {
        doctors.addAll(e.doctors!);
        break;
      }
    }
    emit(GetDoctorSuccess(doctors));
  }
}
