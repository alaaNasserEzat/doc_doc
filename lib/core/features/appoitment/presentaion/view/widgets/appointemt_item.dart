import 'package:doc_doc/core/features/appoitment/data/models/appointment_data.dart';
import 'package:doc_doc/core/images/app_assets.dart';
import 'package:flutter/material.dart';

class AppointemtItem extends StatelessWidget {
  const AppointemtItem({super.key, required this.appointmentData});
  final AppointmentData appointmentData;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(child: Image.asset(AppAssets.doctor, height: 110)),
              Column(
                children: [
                  Text(appointmentData.doctor.name ?? ""),
                  Text(appointmentData.doctor.specialization!.name ?? ""),
                  Text(appointmentData.appointmentEndTime),
                  Text(appointmentData.appointmentTime),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
