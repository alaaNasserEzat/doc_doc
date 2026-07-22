import 'package:doc_doc/features/appoitment/data/models/appointment_reponse.dart';
import 'package:doc_doc/features/appoitment/data/models/get_all_appointment_response.dart';
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

//get all appointment
class GetAppointmentLoading extends AppointmentState {}

class GetAllAppointmentSuccess extends AppointmentState {
  final GetAllAppointmentsResponse response;

  GetAllAppointmentSuccess(this.response);
}

class GetAllAppointmentFailure extends AppointmentState {
  final ErrorModel error;

  GetAllAppointmentFailure(this.error);
}

class SelectDateState extends AppointmentState {}

class SelectTimeState extends AppointmentState {}
