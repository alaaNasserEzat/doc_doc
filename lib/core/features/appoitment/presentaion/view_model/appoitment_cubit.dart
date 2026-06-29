import 'package:doc_doc/core/features/appoitment/data/models/appointment_request_body.dart';
import 'package:doc_doc/core/features/appoitment/data/repo/appointment_repo.dart';
import 'package:doc_doc/core/features/appoitment/presentaion/view_model/appointment_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppointmentCubit extends Cubit<AppointmentState> {
  final AppointmentRepo repo;

  AppointmentCubit(this.repo) : super(AppointmentInitial());
  TextEditingController dateController = TextEditingController();

  void selectDate(DateTime date) {
    dateController.text = date.toString().substring(0, 10);
    emit(SelectDateState());
  }

  String? selectedTime;
  void selectTime(String time) {
    selectedTime = time;
    emit(SelectTimeState());
  }

  makeAppointment(AppointmentRequestBody request) async {
    emit(AppointmentLoading());

    final result = await repo.bookAppointment(request);

    result.fold(
      ifLeft: (e) {
        emit(AppointmentFailure(e));
      },
      ifRight: (result) {
        emit(AppointmentSuccess(result));
      },
    );
  }
}
