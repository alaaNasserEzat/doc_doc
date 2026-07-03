import 'package:doc_doc/core/features/appoitment/presentaion/view/widgets/all_appointment_list.dart';
import 'package:doc_doc/core/features/appoitment/presentaion/view/widgets/appointment_skeletonizer_list.dart';
import 'package:doc_doc/core/features/appoitment/presentaion/view_model/appointment_state.dart';
import 'package:doc_doc/core/features/appoitment/presentaion/view_model/appoitment_cubit.dart';
import 'package:doc_doc/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GetAllAppointmentBlocBuilder extends StatelessWidget {
  const GetAllAppointmentBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppointmentCubit, AppointmentState>(
      builder: (context, state) {
        return state is GetAppointmentLoading
            ? AppointmentSkeletonizerList()
            : state is GetAllAppointmentSuccess
            ? state.response.data.isEmpty
                  ? Center(
                      child: Text(
                        "there no appointment yet",
                        style: AppTextStyles.interBold18Black,
                      ),
                    )
                  : AllAppointmentList(list: state.response.data)
            : state is GetAllAppointmentFailure
            ? Text(state.error.getAllErrorMessage())
            : Text("oops!, sommting wrong");
      },
    );
  }
}
