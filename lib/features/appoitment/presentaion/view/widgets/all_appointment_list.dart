import 'package:doc_doc/core/features/appoitment/data/models/appointment_data.dart';
import 'package:doc_doc/core/features/appoitment/presentaion/view/widgets/appointemt_item.dart';
import 'package:flutter/material.dart';

class AllAppointmentList extends StatelessWidget {
  const AllAppointmentList({super.key, required this.list});
  final List<AppointmentData> list;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (context, index) {
        return AppointemtItem(appointmentData: list[index]);
      },
    );
  }
}
