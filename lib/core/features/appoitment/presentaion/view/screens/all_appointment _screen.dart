import 'package:doc_doc/core/custom_widgets/custom_app_bar.dart';
import 'package:doc_doc/core/features/appoitment/presentaion/view/widgets/get_all_appointment_bloc_builder.dart';
import 'package:doc_doc/core/utils/app_color.dart';
import 'package:flutter/material.dart';

class AllAppointmentScreen extends StatelessWidget {
  const AllAppointmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: showAppBar(context: context, title: "My Appointements"),
        backgroundColor: AppColor.white,
        body: GetAllAppointmentBlocBuilder(),
      ),
    );
  }
}
