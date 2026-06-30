import 'package:doc_doc/core/features/appoitment/presentaion/view/widgets/all_appointment_list.dart';
import 'package:doc_doc/core/features/appoitment/presentaion/view/widgets/appointemt_item.dart';
import 'package:doc_doc/core/features/appoitment/presentaion/view/widgets/get_all_appointment_bloc_builder.dart';
import 'package:flutter/material.dart';

class AllAppointmentScreen extends StatelessWidget {
  const AllAppointmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: GetAllAppointmentBlocBuilder());
  }
}
