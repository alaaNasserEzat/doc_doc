import 'package:doc_doc/core/custom_widgets/custom_btn.dart';
import 'package:doc_doc/core/custom_widgets/custom_dailog.dart';
import 'package:doc_doc/core/features/appoitment/data/models/appointment_request_body.dart';
import 'package:doc_doc/core/features/appoitment/presentaion/view_model/appointment_state.dart';
import 'package:doc_doc/core/features/appoitment/presentaion/view_model/appoitment_cubit.dart';
import 'package:doc_doc/core/features/home_feature/data/models/doctors.dart';
import 'package:doc_doc/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookSection extends StatelessWidget {
  const BookSection({super.key, required this.doctor});
  final Doctor doctor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8),
      child: Row(
        children: [
          Text(
            "Price: \$${doctor.appointPrice}",
            style: AppTextStyles.interBold18Black,
          ),
          const Spacer(),
          BlocConsumer<AppointmentCubit, AppointmentState>(
            listener: (context, state) {
              if (state is AppointmentSuccess) {
                showSuccessSnakBar(context, "appointment successul");
              }
              if (state is AppointmentFailure) {
                showErrorDialog(context, state.error.getAllErrorMessage());
              }
            },
            builder: (context, state) {
              return state is AppointmentLoading
                  ? CircularProgressIndicator()
                  : CustomBtn(
                      onPressed: () {
                        final cubit = BlocProvider.of<AppointmentCubit>(
                          context,
                        );
                        if (cubit.selectedTime != null) {
                          final request = AppointmentRequestBody(
                            doctorId: doctor.id!,
                            startTime:
                                cubit.dateController.text + cubit.selectedTime!,
                          );
                          cubit.makeAppointment(request);
                        }
                      },
                      text: "Book Now",
                    );
            },
          ),
        ],
      ),
    );
  }
}
