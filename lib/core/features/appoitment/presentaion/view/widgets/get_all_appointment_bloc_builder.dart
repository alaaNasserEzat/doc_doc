import 'package:doc_doc/core/features/appoitment/presentaion/view/widgets/all_appointment_list.dart';
import 'package:doc_doc/core/features/appoitment/presentaion/view_model/appointment_state.dart';
import 'package:doc_doc/core/features/appoitment/presentaion/view_model/appoitment_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GetAllAppointmentBlocBuilder extends StatelessWidget {
  const GetAllAppointmentBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppointmentCubit, AppointmentState>(
      builder: (context, state) {
        return state is GetAppointmentLoading
            ? Center(child: CircularProgressIndicator())
            : state is GetAllAppointmentSuccess
            ? AllAppointmentList(list: state.response.data)
            : state is GetAllAppointmentFailure
            ? Text(state.error.getAllErrorMessage())
            : Text("oops!, sommting wrong");
      },
    );
  }
}
