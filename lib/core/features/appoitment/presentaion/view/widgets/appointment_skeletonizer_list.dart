import 'package:doc_doc/core/features/appoitment/data/models/appointment_data.dart';
import 'package:doc_doc/core/features/appoitment/data/models/patient.dart';
import 'package:doc_doc/core/features/appoitment/presentaion/view/widgets/appointemt_item.dart';
import 'package:doc_doc/core/features/home_feature/data/models/city.dart';
import 'package:doc_doc/core/features/home_feature/data/models/doctors.dart';
import 'package:doc_doc/core/features/home_feature/data/models/governrate.dart';
import 'package:doc_doc/core/features/home_feature/data/models/specialization.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class AppointmentSkeletonizerList extends StatelessWidget {
  const AppointmentSkeletonizerList({super.key});

  @override
  Widget build(BuildContext context) {
    final dummyAppointment = List.filled(
      6,
      AppointmentData(
        id: 0,
        doctor: Doctor(
          id: 0,
          name: "Loading...",
          email: "Loading...",
          phone: "Loading...",
          photo: "",
          gender: "Loading...",
          address: "Loading...",
          description: "Loading...",
          degree: "Loading...",
          specialization: Specialization(id: 0, name: "Loading..."),
          city: City(
            id: 0,
            name: "Loading...",
            governrate: Governrate(id: 0, name: "Loading..."),
          ),
          appointPrice: 0,
          startTime: "Loading...",
          endTime: "Loading...",
        ),
        patient: Patient(
          id: 0,
          name: "Loading...",
          email: "Loading...",
          phone: "Loading...",
          gender: "Loading...",
        ),
        appointmentTime: "Loading...",
        appointmentEndTime: "Loading...",
        status: "Loading...",
        notes: "Loading...",
        appointmentPrice: 0,
      ),
    );
    return Skeletonizer(
      enabled: true,
      child: ListView.builder(
        itemCount: 6,
        itemBuilder: (context, index) {
          return AppointemtItem(appointmentData: dummyAppointment[index]);
        },
      ),
    );
  }
}
