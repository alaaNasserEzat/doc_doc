import 'package:doc_doc/core/features/home_feature/data/models/doctors.dart';
import 'package:doc_doc/core/features/home_feature/data/models/specialization_response.dart';
import 'package:doc_doc/core/networking/errors/models/error_model.dart';

abstract class HomeState {}

class HomeInitial extends HomeState {}

class HomeLoading extends HomeState {}

class HomeSuccess extends HomeState {
  final SpecializationResponse response;

  HomeSuccess(this.response);
}

class GetDoctorSuccess extends HomeState {
  final List<Doctor> doctors;

  GetDoctorSuccess(this.doctors);
}

class DoctorLoading extends HomeState {}

class GetDoctorError extends HomeState {
  final ErrorModel errorModel;

  GetDoctorError(this.errorModel);
}

class HomeError extends HomeState {
  final ErrorModel errorModel;

  HomeError(this.errorModel);
}
