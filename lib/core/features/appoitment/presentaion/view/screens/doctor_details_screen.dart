import 'package:doc_doc/core/features/home_feature/data/models/doctors.dart';
import 'package:doc_doc/core/features/appoitment/presentaion/view/widgets/book_section.dart';
import 'package:doc_doc/core/features/appoitment/presentaion/view/widgets/choose_time_section.dart';
import 'package:doc_doc/core/features/home_feature/presentation/view/widgets/doctor_information.dart';
import 'package:doc_doc/core/features/appoitment/presentaion/view/widgets/doctor_top_bar.dart';
import 'package:doc_doc/core/features/appoitment/presentaion/view/widgets/select_date_section.dart';
import 'package:flutter/material.dart';

class DoctorDetailsScreen extends StatelessWidget {
  final Doctor doctor;

  const DoctorDetailsScreen({super.key, required this.doctor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          spacing: 15,
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            DoctorTopBar(),
            SizedBox(height: 20),
            DoctorInformation(doctor: doctor),
            SelectDateSection(),
            ChooseTimeSection(
              startTime: doctor.startTime ?? "",
              lastTime: doctor.endTime ?? "",
            ),
            Spacer(),
            BookSection(doctor: doctor),
          ],
        ),
      ),
    );
  }
}
