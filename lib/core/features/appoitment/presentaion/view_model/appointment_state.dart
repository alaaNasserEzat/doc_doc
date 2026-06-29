import 'package:doc_doc/core/features/appoitment/data/models/appointment_reponse.dart';
import 'package:doc_doc/core/networking/errors/models/error_model.dart';

abstract class AppointmentState {}

class AppointmentInitial extends AppointmentState {}

class AppointmentLoading extends AppointmentState {}

class AppointmentSuccess extends AppointmentState {
  final AppointmentResponse response;

  AppointmentSuccess(this.response);
}

class AppointmentFailure extends AppointmentState {
  final ErrorModel error;

  AppointmentFailure(this.error);
}

class SelectDateState extends AppointmentState {}

class SelectTimeState extends AppointmentState {}
